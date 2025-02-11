EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_01x06_Female J2
U 1 1 624E1CB5
P 1350 1700
F 0 "J2" H 1378 1676 50  0000 L CNN
F 1 "ARDUINO_2" H 1378 1585 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 1350 1700 50  0001 C CNN
F 3 "~" H 1350 1700 50  0001 C CNN
	1    1350 1700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Female J1
U 1 1 624E471C
P 1350 900
F 0 "J1" H 1378 876 50  0000 L CNN
F 1 "ARDUINO_1" H 1378 785 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 1350 900 50  0001 C CNN
F 3 "~" H 1350 900 50  0001 C CNN
	1    1350 900 
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Female J5
U 1 1 624E5B3A
P 2700 2150
F 0 "J5" H 2728 2126 50  0000 L CNN
F 1 "ARDUINO_4" H 2728 2035 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 2700 2150 50  0001 C CNN
F 3 "~" H 2700 2150 50  0001 C CNN
	1    2700 2150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Female J4
U 1 1 624E6F85
P 2700 1050
F 0 "J4" H 2728 1026 50  0000 L CNN
F 1 "ARDUINO_3" H 2728 935 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 2700 1050 50  0001 C CNN
F 3 "~" H 2700 1050 50  0001 C CNN
	1    2700 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 624EB2E4
P 4850 1100
F 0 "R1" H 4909 1146 50  0000 L CNN
F 1 "10k" H 4909 1055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 4850 1100 50  0001 C CNN
F 3 "~" H 4850 1100 50  0001 C CNN
	1    4850 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 624EBCCF
P 4850 1750
F 0 "R2" H 4909 1796 50  0000 L CNN
F 1 "10k" H 4909 1705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 4850 1750 50  0001 C CNN
F 3 "~" H 4850 1750 50  0001 C CNN
	1    4850 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 624EC154
P 4850 2400
F 0 "R3" H 4909 2446 50  0000 L CNN
F 1 "10k" H 4909 2355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 4850 2400 50  0001 C CNN
F 3 "~" H 4850 2400 50  0001 C CNN
	1    4850 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 624EC437
P 4850 2600
F 0 "#PWR010" H 4850 2350 50  0001 C CNN
F 1 "GND" H 4855 2427 50  0000 C CNN
F 2 "" H 4850 2600 50  0001 C CNN
F 3 "" H 4850 2600 50  0001 C CNN
	1    4850 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 624ECA24
P 4850 1850
F 0 "#PWR09" H 4850 1600 50  0001 C CNN
F 1 "GND" H 4855 1677 50  0000 C CNN
F 2 "" H 4850 1850 50  0001 C CNN
F 3 "" H 4850 1850 50  0001 C CNN
	1    4850 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 624ECC94
P 4850 1200
F 0 "#PWR08" H 4850 950 50  0001 C CNN
F 1 "GND" H 4855 1027 50  0000 C CNN
F 2 "" H 4850 1200 50  0001 C CNN
F 3 "" H 4850 1200 50  0001 C CNN
	1    4850 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 950  4850 1000
Wire Wire Line
	4850 1600 4850 1650
Wire Wire Line
	4850 2250 4850 2300
$Comp
L power:+5V #PWR05
U 1 1 624F029D
P 4300 850
F 0 "#PWR05" H 4300 700 50  0001 C CNN
F 1 "+5V" H 4315 1023 50  0000 C CNN
F 2 "" H 4300 850 50  0001 C CNN
F 3 "" H 4300 850 50  0001 C CNN
	1    4300 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 624F0CDF
P 4300 1500
F 0 "#PWR06" H 4300 1350 50  0001 C CNN
F 1 "+5V" H 4315 1673 50  0000 C CNN
F 2 "" H 4300 1500 50  0001 C CNN
F 3 "" H 4300 1500 50  0001 C CNN
	1    4300 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 624F11EA
P 4300 2150
F 0 "#PWR07" H 4300 2000 50  0001 C CNN
F 1 "+5V" H 4315 2323 50  0000 C CNN
F 2 "" H 4300 2150 50  0001 C CNN
F 3 "" H 4300 2150 50  0001 C CNN
	1    4300 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 850  4300 950 
Wire Wire Line
	4300 950  4400 950 
Wire Wire Line
	4300 1500 4300 1600
Wire Wire Line
	4300 1600 4400 1600
Wire Wire Line
	4300 2250 4400 2250
Text GLabel 4950 950  2    50   Input ~ 0
7
Wire Wire Line
	4800 950  4850 950 
Text GLabel 4950 1600 2    50   Input ~ 0
8
Text GLabel 4950 2250 2    50   Input ~ 0
9
Wire Wire Line
	4800 1600 4850 1600
Wire Wire Line
	4800 2250 4850 2250
$Comp
L power:GND #PWR02
U 1 1 624FAB60
P 850 1250
F 0 "#PWR02" H 850 1000 50  0001 C CNN
F 1 "GND" H 855 1077 50  0000 C CNN
F 2 "" H 850 1250 50  0001 C CNN
F 3 "" H 850 1250 50  0001 C CNN
	1    850  1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  1250 850  1200
Wire Wire Line
	850  1200 1150 1200
Wire Wire Line
	850  1200 850  1100
Wire Wire Line
	850  1100 1150 1100
Connection ~ 850  1200
$Comp
L power:+5V #PWR01
U 1 1 624FB7BF
P 850 950
F 0 "#PWR01" H 850 800 50  0001 C CNN
F 1 "+5V" H 865 1123 50  0000 C CNN
F 2 "" H 850 950 50  0001 C CNN
F 3 "" H 850 950 50  0001 C CNN
	1    850  950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  950  850  1000
Wire Wire Line
	850  1000 1150 1000
$Comp
L power:GND #PWR03
U 1 1 624FC413
P 2150 1000
F 0 "#PWR03" H 2150 750 50  0001 C CNN
F 1 "GND" H 2155 827 50  0000 C CNN
F 2 "" H 2150 1000 50  0001 C CNN
F 3 "" H 2150 1000 50  0001 C CNN
	1    2150 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1000 2150 950 
Wire Wire Line
	2150 950  2500 950 
Text GLabel 2400 1850 0    50   Input ~ 0
7
Text GLabel 2400 1550 0    50   Input ~ 0
8
Text GLabel 2400 1450 0    50   Input ~ 0
9
Wire Wire Line
	2400 1450 2500 1450
Wire Wire Line
	2400 1550 2500 1550
Wire Wire Line
	2400 1850 2500 1850
Wire Wire Line
	4300 2150 4300 2250
$Comp
L Connector:Conn_01x04_Female J6
U 1 1 624F3C78
P 6700 1000
F 0 "J6" H 6728 976 50  0000 L CNN
F 1 "DISPLAY" H 6728 885 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6700 1000 50  0001 C CNN
F 3 "~" H 6700 1000 50  0001 C CNN
	1    6700 1000
	1    0    0    -1  
$EndComp
Text GLabel 6400 900  0    50   Input ~ 0
SDA
Text GLabel 6400 1000 0    50   Input ~ 0
SCL
$Comp
L power:GND #PWR012
U 1 1 624F50B7
P 6100 1250
F 0 "#PWR012" H 6100 1000 50  0001 C CNN
F 1 "GND" H 6105 1077 50  0000 C CNN
F 2 "" H 6100 1250 50  0001 C CNN
F 3 "" H 6100 1250 50  0001 C CNN
	1    6100 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR011
U 1 1 624F5706
P 6000 1050
F 0 "#PWR011" H 6000 900 50  0001 C CNN
F 1 "+5V" H 6015 1223 50  0000 C CNN
F 2 "" H 6000 1050 50  0001 C CNN
F 3 "" H 6000 1050 50  0001 C CNN
	1    6000 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1100 6100 1100
Wire Wire Line
	6100 1100 6100 1250
Wire Wire Line
	6000 1050 6000 1200
Wire Wire Line
	6000 1200 6500 1200
Wire Wire Line
	6400 1000 6500 1000
Wire Wire Line
	6400 900  6500 900 
$Comp
L Switch:SW_Push SW1
U 1 1 624FAFBD
P 4600 950
F 0 "SW1" H 4600 1235 50  0000 C CNN
F 1 "BTN_UP" H 4600 1144 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 4600 1150 50  0001 C CNN
F 3 "~" H 4600 1150 50  0001 C CNN
	1    4600 950 
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 624FB811
P 4600 1600
F 0 "SW2" H 4600 1885 50  0000 C CNN
F 1 "BTN_SEL" H 4600 1794 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 4600 1800 50  0001 C CNN
F 3 "~" H 4600 1800 50  0001 C CNN
	1    4600 1600
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 624FBD3E
P 4600 2250
F 0 "SW3" H 4600 2535 50  0000 C CNN
F 1 "BTN_DOWN" H 4600 2444 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 4600 2450 50  0001 C CNN
F 3 "~" H 4600 2450 50  0001 C CNN
	1    4600 2250
	1    0    0    -1  
$EndComp
Connection ~ 4850 950 
Wire Wire Line
	4850 950  4950 950 
Connection ~ 4850 1600
Wire Wire Line
	4850 1600 4950 1600
Connection ~ 4850 2250
Wire Wire Line
	4850 2250 4950 2250
Text GLabel 2350 750  0    50   Input ~ 0
SDA
Text GLabel 2350 650  0    50   Input ~ 0
SCL
Wire Wire Line
	2350 650  2500 650 
Wire Wire Line
	2350 750  2500 750 
$Comp
L Regulator_Linear:LM317_TO-220 U2
U 1 1 62501FCA
P 8500 1150
F 0 "U2" H 8500 1392 50  0000 C CNN
F 1 "LM317_TO-220" H 8500 1301 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 8500 1400 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm317.pdf" H 8500 1150 50  0001 C CNN
	1    8500 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 62503450
P 6400 2050
F 0 "#PWR014" H 6400 1800 50  0001 C CNN
F 1 "GND" H 6405 1877 50  0000 C CNN
F 2 "" H 6400 2050 50  0001 C CNN
F 3 "" H 6400 2050 50  0001 C CNN
	1    6400 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR013
U 1 1 6250391F
P 6400 1650
F 0 "#PWR013" H 6400 1500 50  0001 C CNN
F 1 "+12V" H 6415 1823 50  0000 C CNN
F 2 "" H 6400 1650 50  0001 C CNN
F 3 "" H 6400 1650 50  0001 C CNN
	1    6400 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 2050 6400 2000
Wire Wire Line
	6400 2000 6500 2000
Text GLabel 6400 1900 0    50   Input ~ 0
D+
Text GLabel 6400 1800 0    50   Input ~ 0
D-
Wire Wire Line
	6400 1800 6500 1800
Wire Wire Line
	6400 1900 6500 1900
$Comp
L power:+12V #PWR016
U 1 1 62506AC0
P 8050 1100
F 0 "#PWR016" H 8050 950 50  0001 C CNN
F 1 "+12V" H 8065 1273 50  0000 C CNN
F 2 "" H 8050 1100 50  0001 C CNN
F 3 "" H 8050 1100 50  0001 C CNN
	1    8050 1100
	1    0    0    -1  
$EndComp
Text GLabel 9950 1150 2    50   Input ~ 0
VIN
Wire Wire Line
	8800 1150 8900 1150
$Comp
L Device:R_Small R7
U 1 1 62508634
P 8900 1350
F 0 "R7" H 8959 1396 50  0000 L CNN
F 1 "240" H 8959 1305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 8900 1350 50  0001 C CNN
F 3 "~" H 8900 1350 50  0001 C CNN
	1    8900 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R8
U 1 1 62508E3E
P 8900 1700
F 0 "R8" H 8959 1746 50  0000 L CNN
F 1 "1k3" H 8959 1655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 8900 1700 50  0001 C CNN
F 3 "~" H 8900 1700 50  0001 C CNN
	1    8900 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 62509416
P 8900 1900
F 0 "#PWR019" H 8900 1650 50  0001 C CNN
F 1 "GND" H 8905 1727 50  0000 C CNN
F 2 "" H 8900 1900 50  0001 C CNN
F 3 "" H 8900 1900 50  0001 C CNN
	1    8900 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 1150 8900 1250
Connection ~ 8900 1150
Wire Wire Line
	8900 1450 8900 1500
Wire Wire Line
	8900 1800 8900 1900
Wire Wire Line
	8500 1450 8500 1500
Wire Wire Line
	8500 1500 8900 1500
Connection ~ 8900 1500
Wire Wire Line
	8900 1500 8900 1600
Text GLabel 1100 1300 0    50   Input ~ 0
VIN
Wire Wire Line
	1100 1300 1150 1300
$Comp
L Device:R_Small R12
U 1 1 6250DBD8
P 9350 1350
F 0 "R12" H 9409 1396 50  0000 L CNN
F 1 "300" H 9409 1305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 9350 1350 50  0001 C CNN
F 3 "~" H 9350 1350 50  0001 C CNN
	1    9350 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 6250E0F7
P 9350 1700
F 0 "D1" V 9389 1582 50  0000 R CNN
F 1 "LED" V 9298 1582 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 9350 1700 50  0001 C CNN
F 3 "~" H 9350 1700 50  0001 C CNN
	1    9350 1700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR022
U 1 1 6250ED29
P 9350 1900
F 0 "#PWR022" H 9350 1650 50  0001 C CNN
F 1 "GND" H 9355 1727 50  0000 C CNN
F 2 "" H 9350 1900 50  0001 C CNN
F 3 "" H 9350 1900 50  0001 C CNN
	1    9350 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1900 9350 1850
Wire Wire Line
	9350 1550 9350 1450
Wire Wire Line
	9350 1150 9350 1250
Wire Wire Line
	8900 1150 9350 1150
Connection ~ 9350 1150
$Comp
L Interface_UART:MAX485E U1
U 1 1 62512B8B
P 8450 3700
F 0 "U1" H 8200 4300 50  0000 C CNN
F 1 "MAX485E" H 8200 4200 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8450 3000 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX1487E-MAX491E.pdf" H 8450 3750 50  0001 C CNN
	1    8450 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 625153CF
P 8450 4350
F 0 "#PWR018" H 8450 4100 50  0001 C CNN
F 1 "GND" H 8455 4177 50  0000 C CNN
F 2 "" H 8450 4350 50  0001 C CNN
F 3 "" H 8450 4350 50  0001 C CNN
	1    8450 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR017
U 1 1 625158A6
P 8450 3150
F 0 "#PWR017" H 8450 3000 50  0001 C CNN
F 1 "+5V" H 8465 3323 50  0000 C CNN
F 2 "" H 8450 3150 50  0001 C CNN
F 3 "" H 8450 3150 50  0001 C CNN
	1    8450 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 3150 8450 3200
Wire Wire Line
	8450 4300 8450 4350
Wire Wire Line
	8050 3700 7950 3700
Wire Wire Line
	7950 3700 7950 3750
Wire Wire Line
	7950 3800 8050 3800
$Comp
L Device:R_Small R6
U 1 1 625191FD
P 7700 3450
F 0 "R6" H 7759 3496 50  0000 L CNN
F 1 "10k" H 7759 3405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 7700 3450 50  0001 C CNN
F 3 "~" H 7700 3450 50  0001 C CNN
	1    7700 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 62519AC4
P 7450 3450
F 0 "R5" H 7509 3496 50  0000 L CNN
F 1 "10k" H 7509 3405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 7450 3450 50  0001 C CNN
F 3 "~" H 7450 3450 50  0001 C CNN
	1    7450 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 6251A234
P 7200 3450
F 0 "R4" H 7259 3496 50  0000 L CNN
F 1 "10k" H 7259 3405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 7200 3450 50  0001 C CNN
F 3 "~" H 7200 3450 50  0001 C CNN
	1    7200 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR015
U 1 1 6251A824
P 7700 3250
F 0 "#PWR015" H 7700 3100 50  0001 C CNN
F 1 "+5V" H 7715 3423 50  0000 C CNN
F 2 "" H 7700 3250 50  0001 C CNN
F 3 "" H 7700 3250 50  0001 C CNN
	1    7700 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3300 7450 3300
Wire Wire Line
	7450 3300 7450 3350
Wire Wire Line
	7450 3300 7700 3300
Wire Wire Line
	7700 3300 7700 3350
Connection ~ 7450 3300
Wire Wire Line
	8050 3600 7700 3600
Wire Wire Line
	7700 3600 7700 3550
Wire Wire Line
	7950 3750 7450 3750
Wire Wire Line
	7450 3750 7450 3550
Connection ~ 7950 3750
Wire Wire Line
	7950 3750 7950 3800
Wire Wire Line
	8050 3900 7200 3900
Wire Wire Line
	7200 3900 7200 3550
Wire Wire Line
	7050 3600 7700 3600
Connection ~ 7700 3600
Wire Wire Line
	7050 3750 7450 3750
Connection ~ 7450 3750
Wire Wire Line
	7050 3900 7200 3900
Connection ~ 7200 3900
$Comp
L Device:R_Small R10
U 1 1 625279EC
P 9150 3750
F 0 "R10" H 9209 3796 50  0000 L CNN
F 1 "120" H 9209 3705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 9150 3750 50  0001 C CNN
F 3 "~" H 9150 3750 50  0001 C CNN
	1    9150 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R9
U 1 1 625281E9
P 9150 3450
F 0 "R9" H 9209 3496 50  0000 L CNN
F 1 "20k" H 9209 3405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 9150 3450 50  0001 C CNN
F 3 "~" H 9150 3450 50  0001 C CNN
	1    9150 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 6252878D
P 9150 4050
F 0 "R11" H 9209 4096 50  0000 L CNN
F 1 "20k" H 9209 4005 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" H 9150 4050 50  0001 C CNN
F 3 "~" H 9150 4050 50  0001 C CNN
	1    9150 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 3600 9150 3600
Wire Wire Line
	9150 3600 9150 3550
Wire Wire Line
	9150 3600 9150 3650
Connection ~ 9150 3600
Wire Wire Line
	9150 3850 9150 3900
Wire Wire Line
	9150 3900 8850 3900
Wire Wire Line
	9150 3900 9150 3950
Connection ~ 9150 3900
$Comp
L power:+5V #PWR021
U 1 1 6252F9DD
P 9000 4150
F 0 "#PWR021" H 9000 4000 50  0001 C CNN
F 1 "+5V" H 9015 4323 50  0000 C CNN
F 2 "" H 9000 4150 50  0001 C CNN
F 3 "" H 9000 4150 50  0001 C CNN
	1    9000 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 625302F8
P 9000 3350
F 0 "#PWR020" H 9000 3100 50  0001 C CNN
F 1 "GND" H 9005 3177 50  0000 C CNN
F 2 "" H 9000 3350 50  0001 C CNN
F 3 "" H 9000 3350 50  0001 C CNN
	1    9000 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3350 9000 3300
Wire Wire Line
	9000 3300 9150 3300
Wire Wire Line
	9150 3300 9150 3350
Wire Wire Line
	9000 4200 9150 4200
Wire Wire Line
	9150 4200 9150 4150
Text GLabel 9500 3600 2    50   Input ~ 0
D-
Text GLabel 9500 3900 2    50   Input ~ 0
D+
Wire Wire Line
	9150 3600 9500 3600
Wire Wire Line
	9150 3900 9500 3900
Text GLabel 2400 2350 0    50   Input ~ 0
2
Text GLabel 2400 2250 0    50   Input ~ 0
3
Wire Wire Line
	2400 2250 2500 2250
Wire Wire Line
	2400 2350 2500 2350
$Comp
L Connector:Conn_01x04_Female J3
U 1 1 62540E2B
P 2650 3300
F 0 "J3" H 2678 3276 50  0000 L CNN
F 1 "RS_485_DEBUG" H 2678 3185 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 2650 3300 50  0001 C CNN
F 3 "~" H 2650 3300 50  0001 C CNN
	1    2650 3300
	1    0    0    -1  
$EndComp
Text GLabel 2350 3200 0    50   Input ~ 0
2
Text GLabel 2350 3300 0    50   Input ~ 0
3
$Comp
L power:GND #PWR04
U 1 1 62542B8F
P 2350 3550
F 0 "#PWR04" H 2350 3300 50  0001 C CNN
F 1 "GND" H 2355 3377 50  0000 C CNN
F 2 "" H 2350 3550 50  0001 C CNN
F 3 "" H 2350 3550 50  0001 C CNN
	1    2350 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 3200 2450 3200
Wire Wire Line
	2350 3300 2450 3300
Wire Wire Line
	2350 3400 2450 3400
Wire Wire Line
	2450 3500 2350 3500
Wire Wire Line
	2350 3500 2350 3550
Text Label 9200 1150 0    50   ~ 0
8V
Wire Wire Line
	4850 2500 4850 2600
Wire Wire Line
	9000 4200 9000 4150
Wire Wire Line
	6400 1700 6400 1650
Wire Wire Line
	8050 1150 8050 1100
Wire Wire Line
	8050 1150 8200 1150
Wire Wire Line
	6400 1700 6500 1700
Wire Wire Line
	7200 3300 7200 3350
Wire Wire Line
	7700 3250 7700 3300
Connection ~ 7700 3300
Text GLabel 2400 2150 0    50   Input ~ 0
4
Wire Wire Line
	2400 2150 2500 2150
Text GLabel 2350 3400 0    50   Input ~ 0
4
Text GLabel 7050 3600 0    50   Input ~ 0
2
Text GLabel 7050 3750 0    50   Input ~ 0
3
Text GLabel 7050 3900 0    50   Input ~ 0
4
$Comp
L Connector:Conn_01x02_Female J8
U 1 1 6260588C
P 4150 3200
F 0 "J8" H 4178 3176 50  0000 L CNN
F 1 "I2C_DEBUG" H 4178 3085 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4150 3200 50  0001 C CNN
F 3 "~" H 4150 3200 50  0001 C CNN
	1    4150 3200
	1    0    0    -1  
$EndComp
Text GLabel 3850 3300 0    50   Input ~ 0
SDA
Text GLabel 3850 3200 0    50   Input ~ 0
SCL
Wire Wire Line
	3850 3200 3950 3200
Wire Wire Line
	3850 3300 3950 3300
$Comp
L Connector:Conn_01x02_Female J9
U 1 1 634031D7
P 9700 850
F 0 "J9" V 9638 662 50  0000 R CNN
F 1 "Vin_disconnect" V 9547 662 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9700 850 50  0001 C CNN
F 3 "~" H 9700 850 50  0001 C CNN
	1    9700 850 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9700 1150 9700 1050
Wire Wire Line
	9350 1150 9700 1150
Wire Wire Line
	9800 1050 9800 1150
Wire Wire Line
	9800 1150 9950 1150
$Comp
L Connector:Screw_Terminal_01x04 J7
U 1 1 6340B5AB
P 6700 1800
F 0 "J7" H 6780 1792 50  0000 L CNN
F 1 "OBD" H 6780 1701 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-4_P5.08mm" H 6700 1800 50  0001 C CNN
F 3 "~" H 6700 1800 50  0001 C CNN
	1    6700 1800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
