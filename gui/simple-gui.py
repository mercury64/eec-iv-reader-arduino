import serial
import serial.tools.list_ports
import curses
from curses import wrapper

def checksum(val):
    return ((val[0] & 0xF) ^ ((val[0] >> 4) & 0xF) ^ (val[1] & 0xF) ^ 0xA) == ((val[1] >> 4) & 0xF)

def valToHex(val):
    return hex(val[0]) + " " + hex(val[1])

def valToDec(val):
    return ((val[1] & 0xF) << 8) | val[0]

def valToRpmRef(val):
    return val[0]*4 + (val[1]&0xF)*1024

def valToTemperatureRef(val):
    return (val[0] - 16) / 10 + val[0] - 15

def rpm(val):
    return "RPM: " + str(valToDec(val) * 4) + " | " + str(valToRpmRef(val)) + " | " + valToHex(val)

def default(name, val):
    return name + ": " + str(valToDec(val)) + " | " + str(valToHex(val))

def temperature(name, val):
    return name + ": " + str(valToDec(val) / 2) + " | " + str(valToTemperatureRef(val)) + " | " + valToHex(val)

def lambdaSensor(val):
    return "Lambda: " + str(valToDec(val) / 1000.0) + " | " + valToHex(val)

def showLiveData(stdscr, data):
    stdscr.clear()
    stdscr.addstr(0, 0, rpm(data[0:2]))
    stdscr.addstr(1, 0, lambdaSensor(data[2:4]))
    stdscr.addstr(2, 0, default("Supply Voltage", data[4:6]))
    stdscr.addstr(3, 0, default("Throttle Pos", data[6:8]))
    stdscr.addstr(4, 0, default("Short Fuel Correction", data[8:10]))
    stdscr.addstr(5, 0, default("Throttle mode", data[10:12]))
    stdscr.addstr(6, 0, default("Coolant (V)", data[12:14]))
    stdscr.addstr(7, 0, temperature("Coolant (C)", data[14:16]))
    stdscr.addstr(8, 0, default("Air Temp (V)", data[16:18]))
    stdscr.addstr(9, 0, temperature("Air Temp (C)", data[18:20]))
    stdscr.addstr(10, 0, default("Idle Valve", data[20:22]))
    stdscr.addstr(11, 0, default("Airflow Meter", data[22:24]))
    stdscr.addstr(12, 0, default("EGR Diff Pressure", data[24:26]))
    stdscr.addstr(13, 0, default("Injection Pulse", data[26:28]))
    stdscr.addstr(14, 0, default("Ignition Timing", data[28:30]))
    stdscr.addstr(15, 0, default("Sensors Power Voltage", data[30:32]))
    stdscr.refresh()

def findComPort(stdscr):
    ports = serial.tools.list_ports.comports()
    if (len(ports) == 0):
        print("No serial Devices connected. Exiting.")
        exit()

    stdscr.clear()
    i = 0

    stdscr.addstr(0, 0, "Found Serial Devices:")
    for port, desc, hwid in sorted(ports):
        stdscr.addstr(i+2, 0, "[{}] {}: {}".format(i, port, desc))
        i = i+1

    stdscr.addstr(i+4, 0, "Please select one Device [0, 1, 2,...]")
    stdscr.refresh()
    selectedId = 0
    while True:
        key = stdscr.getkey()
        if (not key.isdigit()):
            stdscr.addstr(i+2, 0, "Invalid input. Please select the device [0, 1, 2,...]")
            continue

        devId = int(key)
        if (devId < 0 or devId >= i):
            stdscr.addstr(i+2, 0, "Invalid input. Please select the device [0, 1, 2,...]")
            continue
        
        selectedId = devId
        break

    return ports[selectedId].name

def main(stdscr):
    comPort = findComPort(stdscr)
    stdscr.clear()
    stdscr.addstr(0, 0, "Reading from Port " + comPort)
    stdscr.addstr(1, 0, "Waiting for data...")
    stdscr.refresh()

    stdscr.nodelay(True)

    with serial.Serial(comPort, 19200, timeout=1) as ser:
        ser.setDTR(True)

        while True: 
            line = ser.readline().decode("utf-8")
            if "Live Data" in line:
                data = ser.readline()
                showLiveData(stdscr, data)

            try:
                key = stdscr.getkey()
                if (key == 'q'):
                    break
            except Exception as e:
                pass
                


wrapper(main)