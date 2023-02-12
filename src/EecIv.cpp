#include "EecIv.h"

EecIv::EecIv(int di, int ro, int re) {
  cart = new Cart(new SoftwareSerial(di, ro), re);
}

void EecIv::restartReading() {
  debugPrint("Restart reading");
  currentState = SEND_START_MESSAGE;
  //currentState = ENABLE_READING_SLOW_SYNC; // if there is already a sync signal, we start here and not send the start message
}

void EecIv::setMode(EecIv::OperationMode mode) {
  this->mode = mode;
}

void EecIv::mainLoop() {
  switch(currentState) {
    case IDLE:
      startMessageCounter = 0;
      break;

    case SEND_START_MESSAGE:
      if(startMessageCounter >= startMessageCounterMax) {
        onStartMessageTimeout();
        currentState = IDLE;
        break;
      }
      cart->setBaudrate(2400);
      cart->sendStartMessage();

      startMessageCounter++;
      debugPrint("Send start message");
      currentState = CHANGE_BAUD_RATE_9600;
      break;

    case CHANGE_BAUD_RATE_9600:
      cart->setBaudrate(9600);
      initTimeoutTimer();
      currentState = WAIT_FOR_SYNC_9600;
      break;
    case WAIT_FOR_SYNC_9600:
      if (cart->isSynced) {
        startMessageCounter = 0;
        currentState = REQUEST_BAUD_RATE_CHANGE;
      } else {
        if(exceededTimeout()) {
          debugPrint("Exceeded fast sync timeout");
          currentState = SEND_START_MESSAGE;
        }
      }
      break;

    case REQUEST_BAUD_RATE_CHANGE:
    {
      const uint8_t baudMessage[8] = {
        0x01, 0xb0, 0xff, 0x5f, 0x81, 0x74, 0x00, 0xa0 
      };
      cart->setDiagnosticParameter(baudMessage);
      currentState = WAIT_REQUEST_BAUD_RATE_CHANGE_DONE;
      break;
    }
    case WAIT_REQUEST_BAUD_RATE_CHANGE_DONE:
      if (cart->diagnosticParameterSend) {
        currentState = CHANGE_BAUD_RATE_2400;
      }
      break;
    case CHANGE_BAUD_RATE_2400:
      cart->setBaudrate(2400);
      currentState = WAIT_FOR_SYNC_2400;
    case WAIT_FOR_SYNC_2400:
      if (cart->isSynced) {
        currentState = REQUEST_CLEAR_DCL_ERRORS;
      }
      break;
    case REQUEST_CLEAR_DCL_ERRORS:
    {
      const uint8_t clearDclMessage[8] = {
        0x01, 0xb0, 0xff, 0x5f, 0x01, 0xf4, 0x00, 0xa0 
      };
      cart->setDiagnosticParameter(clearDclMessage);
      currentState = WAIT_REQUEST_CLEAR_DCL_ERRORS;
      break;
    }
    case WAIT_REQUEST_CLEAR_DCL_ERRORS:
      if (cart->currentDiagnosticMode == 0x01) {
        debugPrint("DCL Errors cleared");
        if (mode == READ_FAULTS) {
          currentState = REQUEST_CONT_SELF_TEST_CODES;
        } else if (mode == KOEO) {
          currentState = ANSWER_REQUEST_KOEO;
        } else if (mode == LIVE_DATA) {
          currentState = IDLE;
        } else {
          currentState = IDLE;
        }
      }
      break;

    case REQUEST_CONT_SELF_TEST_CODES:
    {
      const uint8_t contSelfTestCodesMessage[8] = {
        0x01, 0xb0, 0xff, 0x5f, 0x26, 0xa4, 0x00, 0xa0 
      };
      cart->setDiagnosticParameter(contSelfTestCodesMessage);
      currentState = WAIT_REQUEST_CONT_SELF_TEST_CODES;
      break;
    }
    case WAIT_REQUEST_CONT_SELF_TEST_CODES:
      if (cart->currentDiagnosticMode == 0x26) {
        currentState = READ_CONT_SELF_TEST_CODES;
        cart->hasData = false;
      }
      break;
    case READ_CONT_SELF_TEST_CODES:
      if (cart->hasData) {
        uint8_t data[2];
        cart->getData(data);
        char readable[4];
        sprintf(readable, "%01X%02X", data[1] & 0xF, data[0]);
        onFaultCodeFinished(readable);

        cart->sentDiagnosticParameter = false;
        currentState = IDLE;
      }
      break;

    case ANSWER_REQUEST_KOEO: // Answer sync with koeo command for 8 times
      if (answerRequestKoeo()) {
        loopCounter++;
        if (loopCounter > 7) {
          currentState = ANSWER_REQUEST_KOEO_SHORT;
          loopCounter = 0;
        }
      }
      break;
    case ANSWER_REQUEST_KOEO_SHORT: // Answer only one sync message with koeo command
      if (answerRequestKoeoShort()) {
        currentState = READ_REQUEST_KOEO;
      }
      break;
    case READ_REQUEST_KOEO: // Read koeo fault code
      if (readRequestKoeo()) {
        currentState = ANSWER_REQUEST_KOEO_SHORT;
        loopCounter++;
        if (loopCounter > 3) {
          loopCounter = 0;
          currentState = WAIT_REQUEST_KOEO_SHORT;
        }
      }
      break;
    case WAIT_REQUEST_KOEO_SHORT: // Wait for 6 bytes from ecu
      if (waitByte()) {
        loopCounter++;
        if (loopCounter > 5) {
          loopCounter = 0;
          currentState = READ_REQUEST_KOEO_AFTER_ANSWER;
        }
      }
      break;
    case READ_REQUEST_KOEO_AFTER_ANSWER: // Read koeo code and stop after 8 codes
      if (readRequestKoeo()) {
        currentState = WAIT_REQUEST_KOEO_SHORT;
        koeoCounter++;
        if (koeoCounter > 7) {
          onKoeoFinished();
          koeoCounter = 0;
          currentState = IDLE;
        }
      }
      break;

    break;
  }

  cart->loop();
}

int EecIv::exceededTimeout() {
  if (millis() > timeoutTimer + timeoutMax) {
    return 1;
  }
  return 0;
}

void EecIv::initTimeoutTimer() {
  timeoutTimer = millis();
}


int EecIv::pushAvailableToBuffer() {
  return 0;
}

int EecIv::answerRequestKoeo() {
  uint8_t answerSig[4][2] = {
    {0x01, 0xb0 },
    {0xff, 0x5f },
    {0x25, 0x94 },
    {0x00, 0xa0 }
  };  

  if (pushAvailableToBuffer()) {
    if (isBufferSync(syncPointer)) {
      if (syncPointer < 4) {
        delayMicroseconds(1420);
        //answer(answerSig[syncPointer], 60);
      }
      
      resetBuffer();
      syncPointer++;

      if (syncPointer > 3) {
        syncPointer = 0;
        return 1;
      }
    }
  }

  return 0;
}

int EecIv::answerRequestKoeoShort() {
  uint8_t answerSig[4][2] = {
    {0x01, 0xb0 },
    {0xff, 0x5f },
    {0x25, 0x94 },
    {0x00, 0xa0 }
  };  

  if (false) {

    if (isBufferSync(syncPointer)) {
      if (syncPointer < 4) {
        delayMicroseconds(1420);
        //answer(answerSig[syncPointer], 60);
      }
      
      syncPointer++;
      if (syncPointer > 15) {
        syncPointer = 0;
      }
      return 1;
    }
  }

  return 0;
}

int EecIv::readRequestKoeo() {
  if (pushAvailableToBuffer()) {
    errorCodePointer++;

    if(errorCodePointer >= 2) {
      errorCodePointer = 0;

      sprintf(printBuffer, "Koeo Code: %01X%02X", buffer[3] & 0xF, buffer[2]);
      //debugPrint(printBuffer);
      
      sprintf(printBuffer, "%01X%02X", buffer[3] & 0xF, buffer[2]);
      //onKoeoReadCode(printBuffer);     
      return 1;
    }
  }

  return 0;
}

int EecIv::waitByte() {
  /*
  if (softwareSerial->available()) {
    softwareSerial->read();
    return 1;
  }
  */
  return 0;
}

bool EecIv::isBufferSync(uint8_t syncPointer) {
  return buffer[0] == 0x00 && 
    buffer[1] == 0x00 && // first two are always 0x00
    //buffer[2] == 0x00 && // this is 0x25 or 0x26 when engine is running, othewise 0x00...
    //(buffer[3] & 0xF0) != 0x00 && // chek for != 0 for snycPointer == 0
    (buffer[3] & 0x0F) == syncPointer;
}

void EecIv::pushBuffer(uint8_t val) {
  for (uint8_t i = 0; i < sizeof(buffer)-1; i++) {
    buffer[i] = buffer[i+1];
  }
  buffer[sizeof(buffer)-1] = val;
}

void EecIv::resetBuffer() {
  for (uint8_t i = 0; i < sizeof(buffer)-1; i++) {
    buffer[i] = 0xFF;
  }
}
