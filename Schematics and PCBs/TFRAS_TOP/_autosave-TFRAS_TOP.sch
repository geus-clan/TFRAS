EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 8268 11693 portrait
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
L Device:R R1
U 1 1 5F6232A8
P 3650 6150
F 0 "R1" H 3720 6196 50  0000 L CNN
F 1 "100k" H 3720 6105 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3580 6150 50  0001 C CNN
F 3 "~" H 3650 6150 50  0001 C CNN
F 4 "" H 3650 6150 50  0001 C CNN "JLC part number"
F 5 "301010456	" H 3650 6150 50  0001 C CNN "seeed sku"
	1    3650 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:Thermistor_NTC TH1
U 1 1 5F624019
P 3650 6550
F 0 "TH1" H 3748 6596 50  0000 L CNN
F 1 "Thermistor_NTC_100K" H 3748 6505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3650 6600 50  0001 C CNN
F 3 "~" H 3650 6600 50  0001 C CNN
F 4 "" H 3650 6550 50  0001 C CNN "Mouser part number"
F 5 "" H 3650 6550 50  0001 C CNN "Manufacturer part number"
F 6 "314110001" H 3650 6550 50  0001 C CNN "seeed sku"
	1    3650 6550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5F62C1A3
P 1550 1800
F 0 "#PWR0102" H 1550 1550 50  0001 C CNN
F 1 "GND" H 1555 1627 50  0000 C CNN
F 2 "" H 1550 1800 50  0001 C CNN
F 3 "" H 1550 1800 50  0001 C CNN
	1    1550 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1750 1550 1800
Wire Wire Line
	1850 1450 2100 1450
$Comp
L Device:C C2
U 1 1 5F62E8E1
P 2100 1600
F 0 "C2" H 2215 1646 50  0000 L CNN
F 1 "100uF" H 2215 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 2138 1450 50  0001 C CNN
F 3 "~" H 2100 1600 50  0001 C CNN
F 4 "" H 2100 1600 50  0001 C CNN "JLC part number"
F 5 "302010183" H 2100 1600 50  0001 C CNN "seeed sku"
	1    2100 1600
	1    0    0    -1  
$EndComp
Connection ~ 2100 1450
Wire Wire Line
	1550 1800 2100 1800
Connection ~ 1550 1800
Wire Wire Line
	2100 1750 2100 1800
$Comp
L Device:C C1
U 1 1 5F6300E5
P 1050 1600
F 0 "C1" H 800 1600 50  0000 L CNN
F 1 "10uF" H 700 1500 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 1088 1450 50  0001 C CNN
F 3 "~" H 1050 1600 50  0001 C CNN
F 4 "" H 1050 1600 50  0001 C CNN "JLC part number"
F 5 "302010181" H 1050 1600 50  0001 C CNN "seeed sku"
	1    1050 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1750 1050 1800
$Comp
L power:GND #PWR0104
U 1 1 5F6323E6
P 3650 6700
F 0 "#PWR0104" H 3650 6450 50  0001 C CNN
F 1 "GND" H 3655 6527 50  0000 C CNN
F 2 "" H 3650 6700 50  0001 C CNN
F 3 "" H 3650 6700 50  0001 C CNN
	1    3650 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 6300 3650 6400
$Comp
L power:+3V3 #PWR0105
U 1 1 5F639759
P 3650 6000
F 0 "#PWR0105" H 3650 5850 50  0001 C CNN
F 1 "+3V3" H 3665 6173 50  0000 C CNN
F 2 "" H 3650 6000 50  0001 C CNN
F 3 "" H 3650 6000 50  0001 C CNN
	1    3650 6000
	1    0    0    -1  
$EndComp
Text GLabel 1050 1450 0    50   Input ~ 0
Vin
$Comp
L power:GND #PWR0111
U 1 1 5F667F37
P 5400 6650
F 0 "#PWR0111" H 5400 6400 50  0001 C CNN
F 1 "GND" H 5405 6477 50  0000 C CNN
F 2 "" H 5400 6650 50  0001 C CNN
F 3 "" H 5400 6650 50  0001 C CNN
	1    5400 6650
	1    0    0    -1  
$EndComp
Text GLabel 4150 1600 0    50   Input ~ 0
RS485_EN
Text GLabel 4150 1800 0    50   Input ~ 0
UART_TX
Text GLabel 4150 1400 0    50   Input ~ 0
UART_RX
Text GLabel 5600 1300 2    50   Input ~ 0
RS485_B+
Text GLabel 5600 1500 2    50   Input ~ 0
RS485_A-
Text GLabel 3650 6350 2    50   Input ~ 0
ADC_THERM
$Comp
L Device:C C6
U 1 1 5F729604
P 4050 950
F 0 "C6" H 4165 996 50  0000 L CNN
F 1 "100nF" H 4165 905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4088 800 50  0001 C CNN
F 3 "~" H 4050 950 50  0001 C CNN
F 4 "C1525" H 4050 950 50  0001 C CNN "JLC part number"
F 5 "302010004" H 4050 950 50  0001 C CNN "seeed sku"
	1    4050 950 
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5F72BF48
P 4050 1100
F 0 "#PWR0122" H 4050 850 50  0001 C CNN
F 1 "GND" H 4055 927 50  0000 C CNN
F 2 "" H 4050 1100 50  0001 C CNN
F 3 "" H 4050 1100 50  0001 C CNN
	1    4050 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 1000 4200 1000
Wire Wire Line
	4200 1000 4200 800 
Wire Wire Line
	4200 800  4050 800 
$Comp
L Device:R R3
U 1 1 5F7407D4
P 5200 1300
F 0 "R3" H 5270 1346 50  0000 L CNN
F 1 "13" H 5270 1255 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5130 1300 50  0001 C CNN
F 3 "~" H 5200 1300 50  0001 C CNN
F 4 "C17903" H 5200 1300 50  0001 C CNN "JLC part number"
F 5 "301010405" H 5200 1300 50  0001 C CNN "seeed sku"
	1    5200 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5F741121
P 5200 1500
F 0 "R4" H 5270 1546 50  0000 L CNN
F 1 "13" H 5270 1455 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric" V 5130 1500 50  0001 C CNN
F 3 "~" H 5200 1500 50  0001 C CNN
F 4 "C17903" H 5200 1500 50  0001 C CNN "JLC part number"
F 5 "301010405" H 5200 1500 50  0001 C CNN "seeed sku"
	1    5200 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 1600 4150 1500
Wire Wire Line
	4950 1500 5050 1500
Wire Wire Line
	4950 1300 5050 1300
Wire Wire Line
	5350 1300 5600 1300
Wire Wire Line
	1050 1800 1550 1800
Wire Wire Line
	1050 1450 1250 1450
Text Notes 15250 1500 0    512  ~ 0
test RS485 section\n
$Comp
L Connector:AVR-ISP-6 J3
U 1 1 6134C0F2
P 6600 9050
F 0 "J3" H 6271 9146 50  0000 R CNN
F 1 "UPDI-POGO" H 6271 9055 50  0000 R CNN
F 2 "Connector:Tag-Connect_TC2030-IDC-NL_2x03_P1.27mm_Vertical" V 6350 9100 50  0001 C CNN
F 3 " ~" H 5325 8500 50  0001 C CNN
F 4 "---" H 6600 9050 50  0001 C CNN "JLC part number"
	1    6600 9050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 6134CF80
P 6500 9450
F 0 "#PWR0129" H 6500 9200 50  0001 C CNN
F 1 "GND" H 6505 9277 50  0000 C CNN
F 2 "" H 6500 9450 50  0001 C CNN
F 3 "" H 6500 9450 50  0001 C CNN
	1    6500 9450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0101
U 1 1 5F62ABE0
P 2100 1450
F 0 "#PWR0101" H 2100 1300 50  0001 C CNN
F 1 "+3V3" H 2115 1623 50  0000 C CNN
F 2 "" H 2100 1450 50  0001 C CNN
F 3 "" H 2100 1450 50  0001 C CNN
	1    2100 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0130
U 1 1 6134D3DF
P 6500 8550
F 0 "#PWR0130" H 6500 8400 50  0001 C CNN
F 1 "+3V3" H 6515 8723 50  0000 C CNN
F 2 "" H 6500 8550 50  0001 C CNN
F 3 "" H 6500 8550 50  0001 C CNN
	1    6500 8550
	1    0    0    -1  
$EndComp
Text Notes 12850 2300 0    394  ~ 0
test points from serial port (uart)
$Comp
L Connector:Conn_01x17_Male J4
U 1 1 615C2BEE
P 1750 8350
F 0 "J4" V 1900 7450 50  0000 C CNN
F 1 "TOP" V 1800 7200 50  0000 C CNN
F 2 "Connector_FFC-FPC:Molex_200528-0170_1x17-1MP_P1.00mm_Horizontal" H 1750 8350 50  0001 C CNN
F 3 "~" H 1750 8350 50  0001 C CNN
F 4 "538-200528-0170" H 1750 8350 50  0001 C CNN "Mouser part number"
F 5 "200528-0170" H 1750 8350 50  0001 C CNN "Manufacturer part number"
	1    1750 8350
	0    -1   -1   0   
$EndComp
Text GLabel 1750 8150 1    59   Input ~ 0
A
Wire Wire Line
	1850 8400 1850 8150
Wire Wire Line
	1950 8400 1950 8150
Text GLabel 1450 8150 1    59   Input ~ 0
B
Text GLabel 1250 8150 1    59   Input ~ 0
D
Text GLabel 1150 8150 1    59   Input ~ 0
E
Text GLabel 1050 8150 1    59   Input ~ 0
F
Text GLabel 950  8150 1    59   Input ~ 0
G
Text GLabel 1350 8150 1    59   Input ~ 0
C
Text GLabel 2050 8150 1    59   Input ~ 0
H
Text GLabel 2150 8150 1    59   Input ~ 0
I
Text GLabel 2250 8150 1    59   Input ~ 0
J
Text GLabel 2350 8150 1    59   Input ~ 0
K
Text GLabel 2450 8150 1    59   Input ~ 0
L
Text GLabel 2550 8150 1    59   Input ~ 0
M
Text GLabel 7000 8850 2    50   Input ~ 0
UPDI
NoConn ~ 7000 9050
Text GLabel 7000 8950 2    50   Input ~ 0
RXD
Text GLabel 7000 9150 2    50   Input ~ 0
TXD
Text GLabel 7000 8950 2    50   Input ~ 0
RXD
$Comp
L Connector:Conn_01x17_Male J1
U 1 1 6173F00B
P 1800 10200
F 0 "J1" V 1950 9300 50  0000 C CNN
F 1 "BOTTOM" V 1850 9050 50  0000 C CNN
F 2 "Connector_FFC-FPC:Molex_200528-0170_1x17-1MP_P1.00mm_Horizontal" H 1800 10200 50  0001 C CNN
F 3 "~" H 1800 10200 50  0001 C CNN
F 4 "" H 1800 10200 50  0001 C CNN "Mouser part number"
	1    1800 10200
	0    1    1    0   
$EndComp
Text GLabel 1900 10150 1    50   Input ~ 0
RS485_B+
Text GLabel 2000 10150 1    50   Input ~ 0
RS485_A-
Text GLabel 1800 10400 3    59   Input ~ 0
A-
Wire Wire Line
	2000 10150 2000 10400
Wire Wire Line
	1900 10150 1900 10400
Text GLabel 2100 10400 3    59   Input ~ 0
B-
Text GLabel 2300 10400 3    59   Input ~ 0
D-
Text GLabel 2400 10400 3    59   Input ~ 0
E-
Text GLabel 2500 10400 3    59   Input ~ 0
F-
Text GLabel 2600 10400 3    59   Input ~ 0
G-
Text GLabel 2200 10400 3    59   Input ~ 0
C-
Text GLabel 1500 10400 3    59   Input ~ 0
H-
Text GLabel 1400 10400 3    59   Input ~ 0
I-
Text GLabel 1300 10400 3    59   Input ~ 0
J-
Text GLabel 1200 10400 3    59   Input ~ 0
K-
Text GLabel 1100 10400 3    59   Input ~ 0
L-
Text GLabel 1000 10400 3    59   Input ~ 0
M-
$Comp
L Connector:Conn_01x02_Female JPWR1
U 1 1 61808B52
P 3650 8300
F 0 "JPWR1" H 3800 8250 50  0000 C CNN
F 1 "Conn_01x02_Female" H 3542 8066 50  0001 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x02_P1.27mm_Vertical" H 3650 8300 50  0001 C CNN
F 3 "~" H 3650 8300 50  0001 C CNN
F 4 "---" H 3650 8300 50  0001 C CNN "JLC part number"
	1    3650 8300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 6180A484
P 3850 8300
F 0 "#PWR0126" H 3850 8050 50  0001 C CNN
F 1 "GND" H 3855 8127 50  0000 C CNN
F 2 "" H 3850 8300 50  0001 C CNN
F 3 "" H 3850 8300 50  0001 C CNN
	1    3850 8300
	1    0    0    -1  
$EndComp
Text GLabel 4800 4050 0    50   Input ~ 0
UPDI
Text GLabel 6000 4150 2    50   Input ~ 0
UART_RX
Text GLabel 6000 4050 2    50   Input ~ 0
UART_TX
Text GLabel 6000 4250 2    50   Input ~ 0
RS485_EN
Text Notes 6350 6800 0    50   ~ 0
40mA GPIO sink/source current
$Comp
L Device:C C5
U 1 1 615F0786
P 5500 3550
F 0 "C5" H 5250 3550 50  0000 L CNN
F 1 "100nF" H 5150 3450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5538 3400 50  0001 C CNN
F 3 "~" H 5500 3550 50  0001 C CNN
F 4 "C1525" H 5500 3550 50  0001 C CNN "JLC part number"
F 5 "302010004" H 5500 3550 50  0001 C CNN "seeed sku"
	1    5500 3550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 615F0790
P 4400 3400
F 0 "#PWR0103" H 4400 3150 50  0001 C CNN
F 1 "GND" H 4405 3227 50  0000 C CNN
F 2 "" H 4400 3400 50  0001 C CNN
F 3 "" H 4400 3400 50  0001 C CNN
	1    4400 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 615F079A
P 5000 3550
F 0 "C4" H 4750 3550 50  0000 L CNN
F 1 "100nF" H 4650 3450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5038 3400 50  0001 C CNN
F 3 "~" H 5000 3550 50  0001 C CNN
F 4 "C1525" H 5000 3550 50  0001 C CNN "JLC part number"
F 5 "302010004" H 5000 3550 50  0001 C CNN "seeed sku"
	1    5000 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 3850 5500 3700
Connection ~ 5500 3700
Wire Wire Line
	5400 3850 5400 3700
Wire Wire Line
	5400 3700 5000 3700
Wire Wire Line
	5000 3400 5500 3400
Connection ~ 5000 3400
Wire Wire Line
	5400 3700 5500 3700
Connection ~ 5400 3700
Wire Wire Line
	5500 3700 5600 3700
Wire Wire Line
	5900 3700 6050 3700
$Comp
L power:+3V3 #PWR0108
U 1 1 615F07AE
P 6050 3700
F 0 "#PWR0108" H 6050 3550 50  0001 C CNN
F 1 "+3V3" H 6065 3873 50  0000 C CNN
F 2 "" H 6050 3700 50  0001 C CNN
F 3 "" H 6050 3700 50  0001 C CNN
	1    6050 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 615F07B8
P 5750 3700
F 0 "L1" V 5940 3700 50  0000 C CNN
F 1 "10uH" V 5849 3700 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric" H 5750 3700 50  0001 C CNN
F 3 "~" H 5750 3700 50  0001 C CNN
F 4 "C1035" H 5750 3700 50  0001 C CNN "JLC part number"
F 5 "303010026" H 5750 3700 50  0001 C CNN "seeed sku"
	1    5750 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 3400 4600 3400
$Comp
L MCU_Microchip_ATmega:ATmega4809-A U1
U 1 1 615DD764
P 5400 5250
F 0 "U1" H 5400 3761 50  0000 C CNN
F 1 "ATmega4809-A" H 5400 5250 50  0000 C CNN
F 2 "Package_QFP:TQFP-48_7x7mm_P0.5mm" H 5400 5250 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/40002016A.pdf" H 5400 5250 50  0001 C CNN
F 4 "C189475" H 5400 5250 50  0001 C CNN "JLC part number"
F 5 "ATMEGA4809-AFR" H 5400 5250 50  0001 C CNN "seeed sku"
	1    5400 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 6160C137
P 900 3650
F 0 "#PWR0109" H 900 3400 50  0001 C CNN
F 1 "GND" H 905 3477 50  0000 C CNN
F 2 "" H 900 3650 50  0001 C CNN
F 3 "" H 900 3650 50  0001 C CNN
	1    900  3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 6161FE60
P 4600 3550
F 0 "C3" H 4350 3550 50  0000 L CNN
F 1 "100nF" H 4250 3450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4638 3400 50  0001 C CNN
F 3 "~" H 4600 3550 50  0001 C CNN
F 4 "C1525" H 4600 3550 50  0001 C CNN "JLC part number"
F 5 "302010004" H 4600 3550 50  0001 C CNN "seeed sku"
	1    4600 3550
	-1   0    0    1   
$EndComp
Connection ~ 4600 3400
Wire Wire Line
	4600 3400 5000 3400
Wire Wire Line
	4600 3700 5000 3700
Connection ~ 5000 3700
Text GLabel 6000 4550 2    50   Input ~ 0
K
$Comp
L Device:R R2
U 1 1 6164BACF
P 1050 3650
F 0 "R2" H 850 3700 50  0000 L CNN
F 1 "10k" H 800 3600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 980 3650 50  0001 C CNN
F 3 "~" H 1050 3650 50  0001 C CNN
F 4 "" H 1050 3650 50  0001 C CNN "JLC part number"
F 5 "301010361" H 1050 3650 50  0001 C CNN "seeed sku"
	1    1050 3650
	0    1    1    0   
$EndComp
Text GLabel 6000 4450 2    50   Input ~ 0
I
Text GLabel 1200 3650 1    50   Input ~ 0
A_TOP
Text GLabel 1950 8400 3    50   Input ~ 0
RS485_A-
Text GLabel 1850 8400 3    50   Input ~ 0
RS485_B+
Wire Wire Line
	1650 8150 1650 8650
Wire Wire Line
	1550 8150 1550 8950
$Comp
L power:GND #PWR0107
U 1 1 6162687F
P 1650 8650
F 0 "#PWR0107" H 1650 8400 50  0001 C CNN
F 1 "GND" H 1655 8477 50  0000 C CNN
F 2 "" H 1650 8650 50  0001 C CNN
F 3 "" H 1650 8650 50  0001 C CNN
	1    1650 8650
	1    0    0    -1  
$EndComp
Text Notes 4450 3300 0    50   ~ 0
decoupling pins:\n14/15       28/29      42/43\n
$Comp
L Connector:TestPoint_Small RST1
U 1 1 616A5E95
P 4100 4850
F 0 "RST1" H 3900 4850 50  0000 L CNN
F 1 "TestPoint_Small" H 4148 4805 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 4300 4850 50  0001 C CNN
F 3 "~" H 4300 4850 50  0001 C CNN
F 4 "---" H 4100 4850 50  0001 C CNN "JLC part number"
	1    4100 4850
	1    0    0    -1  
$EndComp
Text GLabel 4800 4350 0    50   Input ~ 0
RXD
Text GLabel 4800 4250 0    50   Input ~ 0
TXD
Text GLabel 4800 4550 0    50   Input ~ 0
G
Text GLabel 6000 4650 2    50   Input ~ 0
M
Text GLabel 4800 4650 0    50   Input ~ 0
E
$Comp
L 74xx:74HCT4051 U4
U 1 1 61868BCE
P 1500 3950
F 0 "U4" H 1650 4550 50  0000 C CNN
F 1 "74HC4051BQ" H 1800 4450 50  0000 C CNN
F 2 "Rare flowers:SOT763-1(DHVQFN16)" H 1500 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hct4051.pdf" H 1500 3550 50  0001 C CNN
F 4 "C547696" H 1500 3950 50  0001 C CNN "JLC part number"
	1    1500 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 6186A25D
P 2200 3200
F 0 "C7" H 1950 3200 50  0000 L CNN
F 1 "100nF" H 1850 3100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2238 3050 50  0001 C CNN
F 3 "~" H 2200 3200 50  0001 C CNN
F 4 "C1525" H 2200 3200 50  0001 C CNN "JLC part number"
F 5 "302010004" H 2200 3200 50  0001 C CNN "seeed sku"
	1    2200 3200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 6186A9DB
P 1500 4550
F 0 "#PWR0110" H 1500 4300 50  0001 C CNN
F 1 "GND" H 1505 4377 50  0000 C CNN
F 2 "" H 1500 4550 50  0001 C CNN
F 3 "" H 1500 4550 50  0001 C CNN
	1    1500 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0115
U 1 1 6186AEF7
P 1500 3450
F 0 "#PWR0115" H 1500 3300 50  0001 C CNN
F 1 "+3V3" H 1515 3623 50  0000 C CNN
F 2 "" H 1500 3450 50  0001 C CNN
F 3 "" H 1500 3450 50  0001 C CNN
	1    1500 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 4550 1600 4550
Connection ~ 1500 4550
$Comp
L power:GND #PWR0116
U 1 1 6186D9CD
P 2200 3350
F 0 "#PWR0116" H 2200 3100 50  0001 C CNN
F 1 "GND" H 2205 3177 50  0000 C CNN
F 2 "" H 2200 3350 50  0001 C CNN
F 3 "" H 2200 3350 50  0001 C CNN
	1    2200 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0117
U 1 1 6186DFD8
P 2200 3050
F 0 "#PWR0117" H 2200 2900 50  0001 C CNN
F 1 "+3V3" H 2215 3223 50  0000 C CNN
F 2 "" H 2200 3050 50  0001 C CNN
F 3 "" H 2200 3050 50  0001 C CNN
	1    2200 3050
	1    0    0    -1  
$EndComp
Text GLabel 1900 4150 2    50   Input ~ 0
F
Text GLabel 1900 4050 2    50   Input ~ 0
L
Text GLabel 1900 3950 2    50   Input ~ 0
D
Text GLabel 1900 3650 2    50   Input ~ 0
B
Text GLabel 1900 3750 2    50   Input ~ 0
H
Text GLabel 1900 3850 2    50   Input ~ 0
J
Text GLabel 1200 3850 0    50   Input ~ 0
S0
Text GLabel 1200 4050 0    50   Input ~ 0
S2
Text GLabel 1200 3950 0    50   Input ~ 0
S1
$Comp
L power:GND #PWR0118
U 1 1 61876F9B
P 1200 4250
F 0 "#PWR0118" H 1200 4000 50  0001 C CNN
F 1 "GND" H 1205 4077 50  0000 C CNN
F 2 "" H 1200 4250 50  0001 C CNN
F 3 "" H 1200 4250 50  0001 C CNN
	1    1200 4250
	1    0    0    -1  
$EndComp
Text GLabel 4800 5350 0    50   Input ~ 0
S0
Text GLabel 4800 5150 0    50   Input ~ 0
S2
Text GLabel 4800 5250 0    50   Input ~ 0
S1
Text GLabel 3850 8200 1    50   Input ~ 0
Vin
Text GLabel 6000 4350 2    50   Input ~ 0
A
Text GLabel 4800 4750 0    50   Input ~ 0
C
Text GLabel 4800 4450 0    50   Input ~ 0
A_TOP
Wire Wire Line
	4100 4850 4800 4850
$Comp
L power:GND #PWR0120
U 1 1 6193FD5D
P 1700 10000
F 0 "#PWR0120" H 1700 9750 50  0001 C CNN
F 1 "GND" H 1705 9827 50  0000 C CNN
F 2 "" H 1700 10000 50  0001 C CNN
F 3 "" H 1700 10000 50  0001 C CNN
	1    1700 10000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 6194D3EF
P 900 5500
F 0 "#PWR01" H 900 5250 50  0001 C CNN
F 1 "GND" H 905 5327 50  0000 C CNN
F 2 "" H 900 5500 50  0001 C CNN
F 3 "" H 900 5500 50  0001 C CNN
	1    900  5500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 6194D3F9
P 1050 5500
F 0 "R7" H 850 5550 50  0000 L CNN
F 1 "10k" H 800 5450 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 980 5500 50  0001 C CNN
F 3 "~" H 1050 5500 50  0001 C CNN
F 4 "" H 1050 5500 50  0001 C CNN "JLC part number"
F 5 "301010361" H 1050 5500 50  0001 C CNN "seeed sku"
	1    1050 5500
	0    1    1    0   
$EndComp
Text GLabel 1200 5500 1    50   Input ~ 0
A_BOTTOM
$Comp
L 74xx:74HCT4051 U5
U 1 1 6194D404
P 1500 5800
F 0 "U5" H 1650 6400 50  0000 C CNN
F 1 "74HC4051BQ" H 1800 6300 50  0000 C CNN
F 2 "Rare flowers:SOT763-1(DHVQFN16)" H 1500 5400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hct4051.pdf" H 1500 5400 50  0001 C CNN
F 4 "C547696" H 1500 5800 50  0001 C CNN "JLC part number"
	1    1500 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 6194D40E
P 2200 5050
F 0 "C8" H 1950 5050 50  0000 L CNN
F 1 "100nF" H 1850 4950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2238 4900 50  0001 C CNN
F 3 "~" H 2200 5050 50  0001 C CNN
F 4 "C1525" H 2200 5050 50  0001 C CNN "JLC part number"
F 5 "302010004" H 2200 5050 50  0001 C CNN "seeed sku"
	1    2200 5050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 6194D418
P 1500 6400
F 0 "#PWR04" H 1500 6150 50  0001 C CNN
F 1 "GND" H 1505 6227 50  0000 C CNN
F 2 "" H 1500 6400 50  0001 C CNN
F 3 "" H 1500 6400 50  0001 C CNN
	1    1500 6400
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR03
U 1 1 6194D422
P 1500 5300
F 0 "#PWR03" H 1500 5150 50  0001 C CNN
F 1 "+3V3" H 1515 5473 50  0000 C CNN
F 2 "" H 1500 5300 50  0001 C CNN
F 3 "" H 1500 5300 50  0001 C CNN
	1    1500 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6400 1600 6400
Connection ~ 1500 6400
$Comp
L power:GND #PWR06
U 1 1 6194D42E
P 2200 5200
F 0 "#PWR06" H 2200 4950 50  0001 C CNN
F 1 "GND" H 2205 5027 50  0000 C CNN
F 2 "" H 2200 5200 50  0001 C CNN
F 3 "" H 2200 5200 50  0001 C CNN
	1    2200 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR05
U 1 1 6194D438
P 2200 4900
F 0 "#PWR05" H 2200 4750 50  0001 C CNN
F 1 "+3V3" H 2215 5073 50  0000 C CNN
F 2 "" H 2200 4900 50  0001 C CNN
F 3 "" H 2200 4900 50  0001 C CNN
	1    2200 4900
	1    0    0    -1  
$EndComp
Text GLabel 1200 5700 0    50   Input ~ 0
S0-
Text GLabel 1200 5900 0    50   Input ~ 0
S2-
Text GLabel 1200 5800 0    50   Input ~ 0
S1-
$Comp
L power:GND #PWR02
U 1 1 6194D44B
P 1200 6100
F 0 "#PWR02" H 1200 5850 50  0001 C CNN
F 1 "GND" H 1205 5927 50  0000 C CNN
F 2 "" H 1200 6100 50  0001 C CNN
F 3 "" H 1200 6100 50  0001 C CNN
	1    1200 6100
	1    0    0    -1  
$EndComp
Text GLabel 6000 5850 2    50   Input ~ 0
S0-
Text GLabel 6000 5650 2    50   Input ~ 0
S2-
Text GLabel 6000 5750 2    50   Input ~ 0
S1-
Text GLabel 1900 5800 2    59   Input ~ 0
A-
Text GLabel 6000 5950 2    59   Input ~ 0
B-
Text GLabel 6000 5350 2    59   Input ~ 0
D-
Text GLabel 1900 6200 2    59   Input ~ 0
E-
Text GLabel 6000 5250 2    59   Input ~ 0
F-
Text GLabel 1900 6000 2    59   Input ~ 0
G-
Text GLabel 1900 5900 2    59   Input ~ 0
C-
Text GLabel 4800 6050 0    59   Input ~ 0
H-
Text GLabel 1900 5500 2    59   Input ~ 0
I-
Text GLabel 4800 6150 0    59   Input ~ 0
J-
Text GLabel 1900 5600 2    59   Input ~ 0
K-
Text GLabel 4800 6250 0    59   Input ~ 0
L-
Text GLabel 1900 5700 2    59   Input ~ 0
M-
Text GLabel 4800 5950 0    50   Input ~ 0
A_BOTTOM
Text GLabel 4800 6350 0    50   Input ~ 0
ADC_THERM
$Comp
L Connector:Conn_01x02_Female RS4851
U 1 1 617AC9CF
P 4350 8300
F 0 "RS4851" H 4500 8250 50  0000 C CNN
F 1 "Conn_01x02_Female" H 4242 8066 50  0001 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x02_P1.27mm_Vertical" H 4350 8300 50  0001 C CNN
F 3 "~" H 4350 8300 50  0001 C CNN
F 4 "---" H 4350 8300 50  0001 C CNN "JLC part number"
	1    4350 8300
	-1   0    0    1   
$EndComp
Text GLabel 4550 8300 2    50   Input ~ 0
RS485_A-
Text GLabel 4550 8200 2    50   Input ~ 0
RS485_B+
Text Notes 6050 8150 0    50   ~ 0
UPDI programming interface\n(for use with pogo pins, custom setup)
Text Notes 850  3100 0    50   ~ 0
A_TOP to PF2 (A12 / AIN12)
Text Notes 900  5000 0    50   ~ 0
A_BOTTOM to PD3 (A3 / AIN3)
Text Notes 6600 3900 0    50   ~ 0
Half of the pins on the connector are for V+/0V, \nthe other half are for analog measurements.
Text GLabel 1550 8950 3    50   Input ~ 0
Vin
Text GLabel 1600 10100 1    50   Input ~ 0
Vin
$Comp
L Regulator_Linear:AMS1117-3.3 U2
U 1 1 618F566A
P 1550 1450
F 0 "U2" H 1550 1692 50  0000 C CNN
F 1 "AMS1117-3.3" H 1550 1601 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 1550 1650 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 1650 1200 50  0001 C CNN
F 4 "C6186" H 1550 1450 50  0001 C CNN "JLC part number"
F 5 "AMS1117-3.3	" H 1550 1450 50  0001 C CNN "seeed sku"
	1    1550 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 61901231
P 6200 2350
F 0 "R8" H 6270 2396 50  0000 L CNN
F 1 "RTERM" H 6270 2305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 6130 2350 50  0001 C CNN
F 3 "~" H 6200 2350 50  0001 C CNN
F 4 "---" H 6200 2350 50  0001 C CNN "JLC part number"
	1    6200 2350
	1    0    0    -1  
$EndComp
Text Notes 6100 950  0    50   ~ 0
On-chip IEC ESD protection is sufficient for laboratory and portable equipment but often insufficient for EFT and\nsurge transients occurring in industrial environments. Therefore, robust and reliable bus node design requires the\nuse of external transient protection devices.
$Comp
L power:GND #PWR0106
U 1 1 6190A937
P 4550 2200
F 0 "#PWR0106" H 4550 1950 50  0001 C CNN
F 1 "GND" H 4555 2027 50  0000 C CNN
F 2 "" H 4550 2200 50  0001 C CNN
F 3 "" H 4550 2200 50  0001 C CNN
	1    4550 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0112
U 1 1 6190ADE0
P 4550 1000
F 0 "#PWR0112" H 4550 850 50  0001 C CNN
F 1 "+3V3" H 4550 1200 50  0000 C CNN
F 2 "" H 4550 1000 50  0001 C CNN
F 3 "" H 4550 1000 50  0001 C CNN
	1    4550 1000
	1    0    0    -1  
$EndComp
Connection ~ 4550 1000
Wire Wire Line
	5350 1500 5600 1500
Text GLabel 6200 2500 2    50   Input ~ 0
RS485_A-
Text GLabel 6200 2200 2    50   Input ~ 0
RS485_B+
Wire Wire Line
	1600 10400 1600 10100
Wire Wire Line
	1700 10400 1700 10000
Text Notes 1900 2000 0    50   ~ 0
output cap: larger the better \n(check LM1117 datasheet p.16)
Text Notes 5100 1950 0    50   ~ 0
designed for SN65HVD75:\n.230W load at 20Mbps, 50% duty cycle test conditions (datasheet).\nresistors should be absolutely minimum rated to 1/4W\n(20Mbps is faster than we will be communicating, and we’re nowhere near 50% duty cycle for serial coms).
Text Notes 4100 2700 0    50   ~ 0
JLC actually stocks a smaller housing… but\ni already laid it out for SOIC-8, which makes\ntesting and troubleshooting easier anyway.
Text Notes 6350 1450 0    50   ~ 0
these are 10 ohms in the datasheet, but seeed opl has 13 ohms at 1/4W.
$Comp
L TFRAS_TOP-rescue:SN65HVD75-Interface_UART U3
U 1 1 6191B80C
P 4550 1600
F 0 "U3" H 4650 2300 50  0000 C CNN
F 1 "MAX3471" H 4800 2200 50  0000 C CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 4550 700 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/285012fe.pdf" H 4050 1700 50  0001 C CNN
F 4 "" H 4550 1600 50  0001 C CNN "JLC part number"
F 5 "MAX3471EUA" H 4550 1600 50  0001 C CNN "seeed sku"
	1    4550 1600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 6178D339
P 7150 -300
F 0 "H1" H 7250 -254 50  0000 L CNN
F 1 "logo" H 7250 -345 50  0000 L CNN
F 2 "Rare flowers:TFRAS" H 7150 -300 50  0001 C CNN
F 3 "~" H 7150 -300 50  0001 C CNN
	1    7150 -300
	1    0    0    -1  
$EndComp
Text Notes 2900 4700 0    50   ~ 0
reset requires no extra hardware -\nactually, the pin is a GPIO by default!\nresetting is done thru the UPDI pin.
Text Notes 650  6750 0    50   ~ 0
important note: it’s the HC version (3v3), not HCT (5v device)!
Text Notes 450  -650 0    394  ~ 0
REPLACE with  MPM3610 
Wire Notes Line
	300  2350 3250 2350
Wire Notes Line
	3250 2350 3250 -450
Wire Notes Line
	3250 -450 300  -450
Wire Notes Line
	300  -450 300  2350
$EndSCHEMATC
