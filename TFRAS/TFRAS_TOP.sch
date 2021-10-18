EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 11693 13780
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
L Interface_UART:MAX485E U3
U 1 1 5F621371
P 6350 3700
F 0 "U3" H 6850 4000 50  0000 C CNN
F 1 "MAX14783EATA+T" H 7000 4100 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-8_2x2mm_P0.5mm" H 6350 3000 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX1487E-MAX491E.pdf" H 6350 3750 50  0001 C CNN
	1    6350 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5F6232A8
P 1650 8150
F 0 "R1" H 1720 8196 50  0000 L CNN
F 1 "10K" H 1720 8105 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1580 8150 50  0001 C CNN
F 3 "~" H 1650 8150 50  0001 C CNN
	1    1650 8150
	1    0    0    -1  
$EndComp
$Comp
L Device:Thermistor_NTC TH1
U 1 1 5F624019
P 1650 8550
F 0 "TH1" H 1748 8596 50  0000 L CNN
F 1 "Thermistor_NTC_10K" H 1748 8505 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1650 8600 50  0001 C CNN
F 3 "~" H 1650 8600 50  0001 C CNN
	1    1650 8550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5F62C1A3
P 6350 1400
F 0 "#PWR0102" H 6350 1150 50  0001 C CNN
F 1 "GND" H 6355 1227 50  0000 C CNN
F 2 "" H 6350 1400 50  0001 C CNN
F 3 "" H 6350 1400 50  0001 C CNN
	1    6350 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 1350 6350 1400
Wire Wire Line
	6650 1050 6900 1050
$Comp
L Device:C C2
U 1 1 5F62E8E1
P 6900 1200
F 0 "C2" H 7015 1246 50  0000 L CNN
F 1 "1uF/6.3V" H 7015 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6938 1050 50  0001 C CNN
F 3 "~" H 6900 1200 50  0001 C CNN
	1    6900 1200
	1    0    0    -1  
$EndComp
Connection ~ 6900 1050
Wire Wire Line
	6350 1400 6900 1400
Connection ~ 6350 1400
Wire Wire Line
	6900 1350 6900 1400
$Comp
L Device:C C1
U 1 1 5F6300E5
P 5850 1200
F 0 "C1" H 5600 1200 50  0000 L CNN
F 1 "1uF/16V" H 5500 1100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5888 1050 50  0001 C CNN
F 3 "~" H 5850 1200 50  0001 C CNN
	1    5850 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1350 5850 1400
$Comp
L power:GND #PWR0104
U 1 1 5F6323E6
P 1650 8700
F 0 "#PWR0104" H 1650 8450 50  0001 C CNN
F 1 "GND" H 1655 8527 50  0000 C CNN
F 2 "" H 1650 8700 50  0001 C CNN
F 3 "" H 1650 8700 50  0001 C CNN
	1    1650 8700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 8300 1650 8400
$Comp
L power:+3V3 #PWR0105
U 1 1 5F639759
P 1650 8000
F 0 "#PWR0105" H 1650 7850 50  0001 C CNN
F 1 "+3V3" H 1665 8173 50  0000 C CNN
F 2 "" H 1650 8000 50  0001 C CNN
F 3 "" H 1650 8000 50  0001 C CNN
	1    1650 8000
	1    0    0    -1  
$EndComp
Text GLabel 5850 1050 0    50   Input ~ 0
Vin
$Comp
L power:GND #PWR0111
U 1 1 5F667F37
P -2650 7300
F 0 "#PWR0111" H -2650 7050 50  0001 C CNN
F 1 "GND" H -2645 7127 50  0000 C CNN
F 2 "" H -2650 7300 50  0001 C CNN
F 3 "" H -2650 7300 50  0001 C CNN
	1    -2650 7300
	1    0    0    -1  
$EndComp
Text GLabel 5950 3750 0    50   Input ~ 0
RS485_EN
$Comp
L power:+3V3 #PWR0112
U 1 1 5F67DA19
P 6350 3200
F 0 "#PWR0112" H 6350 3050 50  0001 C CNN
F 1 "+3V3" H 6365 3373 50  0000 C CNN
F 2 "" H 6350 3200 50  0001 C CNN
F 3 "" H 6350 3200 50  0001 C CNN
	1    6350 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5F67E208
P 6350 4300
F 0 "#PWR0113" H 6350 4050 50  0001 C CNN
F 1 "GND" H 6355 4127 50  0000 C CNN
F 2 "" H 6350 4300 50  0001 C CNN
F 3 "" H 6350 4300 50  0001 C CNN
	1    6350 4300
	1    0    0    -1  
$EndComp
Text GLabel 5950 3900 0    50   Input ~ 0
UART_TX
Text GLabel 5950 3600 0    50   Input ~ 0
UART_RX
Text GLabel 7400 3600 2    50   Input ~ 0
RS485_B+
Text GLabel 7400 3900 2    50   Input ~ 0
RS485_A-
$Comp
L Power_Protection:SP0502BAHT D1
U 1 1 5F691F5E
P 7250 4250
F 0 "D1" H 7455 4296 50  0000 L CNN
F 1 "CDSOT23-SM712" H 7455 4205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7475 4200 50  0001 L CNN
F 3 "http://www.littelfuse.com/~/media/files/littelfuse/technical%20resources/documents/data%20sheets/sp05xxba.pdf" H 7375 4375 50  0001 C CNN
	1    7250 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5F69305C
P 7250 4450
F 0 "#PWR0114" H 7250 4200 50  0001 C CNN
F 1 "GND" H 7255 4277 50  0000 C CNN
F 2 "" H 7250 4450 50  0001 C CNN
F 3 "" H 7250 4450 50  0001 C CNN
	1    7250 4450
	1    0    0    -1  
$EndComp
Text GLabel 1650 8350 2    50   Input ~ 0
ADC_THERM
$Comp
L Device:C C6
U 1 1 5F729604
P 5850 3150
F 0 "C6" H 5965 3196 50  0000 L CNN
F 1 "100nF" H 5965 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5888 3000 50  0001 C CNN
F 3 "~" H 5850 3150 50  0001 C CNN
	1    5850 3150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5F72BF48
P 5850 3300
F 0 "#PWR0122" H 5850 3050 50  0001 C CNN
F 1 "GND" H 5855 3127 50  0000 C CNN
F 2 "" H 5850 3300 50  0001 C CNN
F 3 "" H 5850 3300 50  0001 C CNN
	1    5850 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 3200 6000 3200
Wire Wire Line
	6000 3200 6000 3000
Wire Wire Line
	6000 3000 5850 3000
$Comp
L Device:R R3
U 1 1 5F7407D4
P 7000 3600
F 0 "R3" H 7070 3646 50  0000 L CNN
F 1 "10" H 7070 3555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6930 3600 50  0001 C CNN
F 3 "~" H 7000 3600 50  0001 C CNN
	1    7000 3600
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5F741121
P 7000 3900
F 0 "R4" H 7070 3946 50  0000 L CNN
F 1 "10" H 7070 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6930 3900 50  0001 C CNN
F 3 "~" H 7000 3900 50  0001 C CNN
	1    7000 3900
	0    1    1    0   
$EndComp
Connection ~ 6350 3200
Wire Wire Line
	5950 3800 5950 3700
Wire Wire Line
	6750 3900 6850 3900
Wire Wire Line
	6750 3600 6850 3600
Wire Wire Line
	7150 3900 7350 3900
Wire Wire Line
	7150 3600 7400 3600
Connection ~ 7150 3600
Wire Wire Line
	7350 4050 7350 3900
Connection ~ 7350 3900
Wire Wire Line
	7350 3900 7400 3900
Wire Wire Line
	5850 1400 6350 1400
$Comp
L Regulator_Linear:MCP1754S-3302xCB U2
U 1 1 60D6442D
P 6350 1050
F 0 "U2" H 6350 1292 50  0000 C CNN
F 1 "MCP1754S-3302xCB" H 6350 1201 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6350 1275 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20002276C.pdf" H 6350 1050 50  0001 C CNN
	1    6350 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1050 6050 1050
Text Notes 8700 1550 0    512  ~ 0
test RS485 section\n
$Comp
L Connector:AVR-ISP-6 J3
U 1 1 6134C0F2
P -900 8100
F 0 "J3" H -1229 8196 50  0000 R CNN
F 1 "AVR-ISP-6" H -1229 8105 50  0000 R CNN
F 2 "Connector:Tag-Connect_TC2030-IDC-NL_2x03_P1.27mm_Vertical" V -1150 8150 50  0001 C CNN
F 3 " ~" H -2175 7550 50  0001 C CNN
	1    -900 8100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 6134CF80
P -1000 8500
F 0 "#PWR0129" H -1000 8250 50  0001 C CNN
F 1 "GND" H -995 8327 50  0000 C CNN
F 2 "" H -1000 8500 50  0001 C CNN
F 3 "" H -1000 8500 50  0001 C CNN
	1    -1000 8500
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0101
U 1 1 5F62ABE0
P 6900 1050
F 0 "#PWR0101" H 6900 900 50  0001 C CNN
F 1 "+3V3" H 6915 1223 50  0000 C CNN
F 2 "" H 6900 1050 50  0001 C CNN
F 3 "" H 6900 1050 50  0001 C CNN
	1    6900 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0130
U 1 1 6134D3DF
P -1000 7600
F 0 "#PWR0130" H -1000 7450 50  0001 C CNN
F 1 "+3V3" H -985 7773 50  0000 C CNN
F 2 "" H -1000 7600 50  0001 C CNN
F 3 "" H -1000 7600 50  0001 C CNN
	1    -1000 7600
	1    0    0    -1  
$EndComp
Text Notes 6300 2350 0    394  ~ 0
test points from serial port (uart)
$Comp
L Connector:Conn_01x17_Male J4
U 1 1 615C2BEE
P 9300 9300
F 0 "J4" V 9450 8400 50  0000 C CNN
F 1 "Conn_01x17_Male" V 9350 8150 50  0000 C CNN
F 2 "Connector_FFC-FPC:Molex_200528-0170_1x17-1MP_P1.00mm_Horizontal" H 9300 9300 50  0001 C CNN
F 3 "~" H 9300 9300 50  0001 C CNN
	1    9300 9300
	0    -1   -1   0   
$EndComp
Text Notes -50  -1750 0    197  ~ 0
to do:\nextra thru hole pads for connecting long power lines\nadd test points or slots for headers
Text GLabel 9300 9100 1    59   Input ~ 0
A
Wire Wire Line
	9400 9350 9400 9100
Wire Wire Line
	9500 9350 9500 9100
Text GLabel 9000 9100 1    59   Input ~ 0
B
Text GLabel 8800 9100 1    59   Input ~ 0
D
Text GLabel 8700 9100 1    59   Input ~ 0
E
Text GLabel 8600 9100 1    59   Input ~ 0
F
Text GLabel 8500 9100 1    59   Input ~ 0
G
Text GLabel 8900 9100 1    59   Input ~ 0
C
Text GLabel 9600 9100 1    59   Input ~ 0
H
Text GLabel 9700 9100 1    59   Input ~ 0
I
Text GLabel 9800 9100 1    59   Input ~ 0
J
Text GLabel 9900 9100 1    59   Input ~ 0
K
Text GLabel 10000 9100 1    59   Input ~ 0
L
Text GLabel 10100 9100 1    59   Input ~ 0
M
Text GLabel -500 7900 2    50   Input ~ 0
UPDI
NoConn ~ -500 8100
Text GLabel -500 8000 2    50   Input ~ 0
RXD
Text GLabel -500 8200 2    50   Input ~ 0
TXD
Text GLabel -500 8000 2    50   Input ~ 0
RXD
Text Notes 8500 8750 0    197  ~ 0
POWER
$Comp
L Connector:Conn_01x17_Male J1
U 1 1 6173F00B
P 6850 9350
F 0 "J1" V 7000 8450 50  0000 C CNN
F 1 "Conn_01x17_Male" V 6900 8200 50  0000 C CNN
F 2 "Connector_FFC-FPC:Molex_200528-0170_1x17-1MP_P1.00mm_Horizontal" H 6850 9350 50  0001 C CNN
F 3 "~" H 6850 9350 50  0001 C CNN
	1    6850 9350
	0    -1   -1   0   
$EndComp
Text GLabel 6950 9950 3    50   Input ~ 0
RS485_B+
Text GLabel 7050 9650 3    50   Input ~ 0
RS485_A-
Text GLabel 6850 9150 1    59   Input ~ 0
A-
Wire Wire Line
	6650 9400 6650 9150
Wire Wire Line
	6750 9400 6750 9150
Text GLabel 6550 9150 1    59   Input ~ 0
B-
Text GLabel 6350 9150 1    59   Input ~ 0
D-
Text GLabel 6250 9150 1    59   Input ~ 0
E-
Text GLabel 6150 9150 1    59   Input ~ 0
F-
Text GLabel 6050 9150 1    59   Input ~ 0
G-
Text GLabel 6450 9150 1    59   Input ~ 0
C-
Text GLabel 7150 9150 1    59   Input ~ 0
H-
Text GLabel 7250 9150 1    59   Input ~ 0
I-
Text GLabel 7350 9150 1    59   Input ~ 0
J-
Text GLabel 7450 9150 1    59   Input ~ 0
K-
Text GLabel 7550 9150 1    59   Input ~ 0
L-
Text GLabel 7650 9150 1    59   Input ~ 0
M-
$Comp
L Connector:Conn_01x02_Female JPWR1
U 1 1 61808B52
P 3700 1800
F 0 "JPWR1" H 3850 1750 50  0000 C CNN
F 1 "Conn_01x02_Female" H 3592 1566 50  0001 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x02_P1.27mm_Vertical" H 3700 1800 50  0001 C CNN
F 3 "~" H 3700 1800 50  0001 C CNN
	1    3700 1800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 6180A484
P 3900 1800
F 0 "#PWR0126" H 3900 1550 50  0001 C CNN
F 1 "GND" H 3905 1627 50  0000 C CNN
F 2 "" H 3900 1800 50  0001 C CNN
F 3 "" H 3900 1800 50  0001 C CNN
	1    3900 1800
	1    0    0    -1  
$EndComp
Text GLabel -3250 4700 0    50   Input ~ 0
UPDI
Text GLabel -2050 4800 2    50   Input ~ 0
UART_RX
Text GLabel -2050 4700 2    50   Input ~ 0
UART_TX
Text GLabel -2050 4900 2    50   Input ~ 0
RS485_EN
Text Notes -1600 6850 0    50   ~ 0
40mA GPIO sink/source current
$Comp
L Device:C C5
U 1 1 615F0786
P -2550 4200
F 0 "C5" H -2800 4200 50  0000 L CNN
F 1 "100nF" H -2900 4100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H -2512 4050 50  0001 C CNN
F 3 "~" H -2550 4200 50  0001 C CNN
	1    -2550 4200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 615F0790
P -3650 4050
F 0 "#PWR0103" H -3650 3800 50  0001 C CNN
F 1 "GND" H -3645 3877 50  0000 C CNN
F 2 "" H -3650 4050 50  0001 C CNN
F 3 "" H -3650 4050 50  0001 C CNN
	1    -3650 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 615F079A
P -3050 4200
F 0 "C4" H -3300 4200 50  0000 L CNN
F 1 "100nF" H -3400 4100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H -3012 4050 50  0001 C CNN
F 3 "~" H -3050 4200 50  0001 C CNN
	1    -3050 4200
	-1   0    0    1   
$EndComp
Wire Wire Line
	-2550 4500 -2550 4350
Connection ~ -2550 4350
Wire Wire Line
	-2650 4500 -2650 4350
Wire Wire Line
	-2650 4350 -3050 4350
Wire Wire Line
	-3050 4050 -2550 4050
Connection ~ -3050 4050
Wire Wire Line
	-2650 4350 -2550 4350
Connection ~ -2650 4350
Wire Wire Line
	-2550 4350 -2450 4350
Wire Wire Line
	-2150 4350 -2000 4350
$Comp
L power:+3V3 #PWR0108
U 1 1 615F07AE
P -2000 4350
F 0 "#PWR0108" H -2000 4200 50  0001 C CNN
F 1 "+3V3" H -1985 4523 50  0000 C CNN
F 2 "" H -2000 4350 50  0001 C CNN
F 3 "" H -2000 4350 50  0001 C CNN
	1    -2000 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 615F07B8
P -2300 4350
F 0 "L1" V -2110 4350 50  0000 C CNN
F 1 "10uH" V -2201 4350 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric" H -2300 4350 50  0001 C CNN
F 3 "~" H -2300 4350 50  0001 C CNN
	1    -2300 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	-3650 4050 -3450 4050
$Comp
L MCU_Microchip_ATmega:ATmega4809-A U1
U 1 1 615DD764
P -2650 5900
F 0 "U1" H -2650 4411 50  0000 C CNN
F 1 "ATmega4809-A" H -2650 4320 50  0000 C CNN
F 2 "Package_QFP:TQFP-48_7x7mm_P0.5mm" H -2650 5900 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/40002016A.pdf" H -2650 5900 50  0001 C CNN
	1    -2650 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 6160C137
P -7000 5450
F 0 "#PWR0109" H -7000 5200 50  0001 C CNN
F 1 "GND" H -6995 5277 50  0000 C CNN
F 2 "" H -7000 5450 50  0001 C CNN
F 3 "" H -7000 5450 50  0001 C CNN
	1    -7000 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 6161FE60
P -3450 4200
F 0 "C3" H -3700 4200 50  0000 L CNN
F 1 "100nF" H -3800 4100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H -3412 4050 50  0001 C CNN
F 3 "~" H -3450 4200 50  0001 C CNN
	1    -3450 4200
	-1   0    0    1   
$EndComp
Connection ~ -3450 4050
Wire Wire Line
	-3450 4050 -3050 4050
Wire Wire Line
	-3450 4350 -3050 4350
Connection ~ -3050 4350
Text GLabel -2050 5200 2    50   Input ~ 0
D1
Text GLabel -4150 8150 2    50   Input ~ 0
D4
Text GLabel -4150 8250 2    50   Input ~ 0
D5
$Comp
L Device:R R2
U 1 1 6164BACF
P -6850 5450
F 0 "R2" H -7050 5500 50  0000 L CNN
F 1 "10K" H -7100 5400 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V -6920 5450 50  0001 C CNN
F 3 "~" H -6850 5450 50  0001 C CNN
	1    -6850 5450
	0    1    1    0   
$EndComp
Text GLabel -2050 5100 2    50   Input ~ 0
D0
Text GLabel -4550 6450 0    50   Input ~ 0
A2
Text GLabel -4500 6450 2    50   Input ~ 0
F
Text GLabel -6700 5450 1    50   Input ~ 0
A_TOP
Text GLabel -4550 6650 0    50   Input ~ 0
A3
Text GLabel -4550 6850 0    50   Input ~ 0
A4
Text GLabel -4550 7250 0    50   Input ~ 0
A6
Text GLabel -4550 7050 0    50   Input ~ 0
A5
Text GLabel -4500 6650 2    50   Input ~ 0
D
Text GLabel -4500 6850 2    50   Input ~ 0
B
Text GLabel -450 6000 2    50   Input ~ 0
D1
Text GLabel -450 6100 2    50   Input ~ 0
D2
Text GLabel -450 6200 2    50   Input ~ 0
D3
Text GLabel -450 5900 2    50   Input ~ 0
D0
Text GLabel -450 6300 2    50   Input ~ 0
D4
Text GLabel -450 6400 2    50   Input ~ 0
D5
Text GLabel -450 6500 2    50   Input ~ 0
D6
Text GLabel -500 5900 0    50   Input ~ 0
I
Text GLabel -500 6000 0    50   Input ~ 0
K
Text GLabel -500 6100 0    50   Input ~ 0
M
Text GLabel -4500 7250 2    50   Input ~ 0
H
Wire Wire Line
	-4550 6450 -4500 6450
Wire Wire Line
	-4550 6850 -4500 6850
Wire Wire Line
	-4550 6650 -4500 6650
Wire Wire Line
	-500 6100 -450 6100
Wire Wire Line
	-500 6000 -450 6000
Wire Wire Line
	-500 5900 -450 5900
Wire Wire Line
	-4550 7250 -4500 7250
Text GLabel 9500 9350 3    50   Input ~ 0
RS485_A-
Text GLabel 9400 9350 3    50   Input ~ 0
RS485_B+
Wire Wire Line
	9200 9100 9200 9600
Wire Wire Line
	9100 9100 9100 9900
$Comp
L power:GND #PWR0107
U 1 1 6162687F
P 9200 9600
F 0 "#PWR0107" H 9200 9350 50  0001 C CNN
F 1 "GND" H 9205 9427 50  0000 C CNN
F 2 "" H 9200 9600 50  0001 C CNN
F 3 "" H 9200 9600 50  0001 C CNN
	1    9200 9600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3600 7150 4050
Text Notes -3600 3950 0    50   ~ 0
pins:\n14/15       28/29      42/43\n
$Comp
L Connector:TestPoint_Small RST1
U 1 1 616A5E95
P -3950 5500
F 0 "RST1" H -4150 5500 50  0000 L CNN
F 1 "TestPoint_Small" H -3902 5455 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H -3750 5500 50  0001 C CNN
F 3 "~" H -3750 5500 50  0001 C CNN
	1    -3950 5500
	1    0    0    -1  
$EndComp
Text GLabel -3250 5000 0    50   Input ~ 0
RXD
Text GLabel -3250 4900 0    50   Input ~ 0
TXD
Text GLabel -4500 7050 2    50   Input ~ 0
J
Text GLabel -4500 6250 2    50   Input ~ 0
L
Wire Wire Line
	-4550 7050 -4500 7050
Wire Wire Line
	-4550 6250 -4500 6250
Text GLabel -500 6400 0    50   Input ~ 0
C
Text GLabel -3250 5200 0    50   Input ~ 0
D3
Text GLabel -2050 5300 2    50   Input ~ 0
D2
Text GLabel -500 6200 0    50   Input ~ 0
G
Text GLabel -500 6500 0    50   Input ~ 0
E
Wire Wire Line
	-500 6400 -450 6400
Wire Wire Line
	-500 6300 -450 6300
Wire Wire Line
	-500 6200 -450 6200
Text GLabel -3250 5300 0    50   Input ~ 0
D6
Text GLabel -500 6300 0    50   Input ~ 0
A
Wire Wire Line
	-500 6500 -450 6500
$Comp
L 74xx:74HCT4051 U4
U 1 1 61868BCE
P -6400 5750
F 0 "U4" H -6250 6350 50  0000 C CNN
F 1 "74HCT4051" H -6100 6250 50  0000 C CNN
F 2 "Package_DFN_QFN:VQFN-16-1EP_3x3mm_P0.5mm_EP1.6x1.6mm" H -6400 5350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hct4051.pdf" H -6400 5350 50  0001 C CNN
	1    -6400 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 6186A25D
P -5700 5000
F 0 "C7" H -5950 5000 50  0000 L CNN
F 1 "100nF" H -6050 4900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H -5662 4850 50  0001 C CNN
F 3 "~" H -5700 5000 50  0001 C CNN
	1    -5700 5000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 6186A9DB
P -6400 6350
F 0 "#PWR0110" H -6400 6100 50  0001 C CNN
F 1 "GND" H -6395 6177 50  0000 C CNN
F 2 "" H -6400 6350 50  0001 C CNN
F 3 "" H -6400 6350 50  0001 C CNN
	1    -6400 6350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0115
U 1 1 6186AEF7
P -6400 5250
F 0 "#PWR0115" H -6400 5100 50  0001 C CNN
F 1 "+3V3" H -6385 5423 50  0000 C CNN
F 2 "" H -6400 5250 50  0001 C CNN
F 3 "" H -6400 5250 50  0001 C CNN
	1    -6400 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	-6400 6350 -6300 6350
Connection ~ -6400 6350
$Comp
L power:GND #PWR0116
U 1 1 6186D9CD
P -5700 5150
F 0 "#PWR0116" H -5700 4900 50  0001 C CNN
F 1 "GND" H -5695 4977 50  0000 C CNN
F 2 "" H -5700 5150 50  0001 C CNN
F 3 "" H -5700 5150 50  0001 C CNN
	1    -5700 5150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0117
U 1 1 6186DFD8
P -5700 4850
F 0 "#PWR0117" H -5700 4700 50  0001 C CNN
F 1 "+3V3" H -5685 5023 50  0000 C CNN
F 2 "" H -5700 4850 50  0001 C CNN
F 3 "" H -5700 4850 50  0001 C CNN
	1    -5700 4850
	1    0    0    -1  
$EndComp
Text GLabel -6000 5950 2    50   Input ~ 0
A2
Text GLabel -6000 5850 2    50   Input ~ 0
A1
Text GLabel -6000 5750 2    50   Input ~ 0
A3
Text GLabel -6000 5450 2    50   Input ~ 0
A4
Text GLabel -6000 5550 2    50   Input ~ 0
A6
Text GLabel -6000 5650 2    50   Input ~ 0
A5
Text GLabel -6700 5650 0    50   Input ~ 0
S0
Text GLabel -6700 5850 0    50   Input ~ 0
S2
Text GLabel -6700 5750 0    50   Input ~ 0
S1
Text GLabel -4000 6200 0    50   Input ~ 0
S0
Text GLabel -4000 6400 0    50   Input ~ 0
S2
Text GLabel -4000 6300 0    50   Input ~ 0
S1
$Comp
L power:GND #PWR0118
U 1 1 61876F9B
P -6700 6050
F 0 "#PWR0118" H -6700 5800 50  0001 C CNN
F 1 "GND" H -6695 5877 50  0000 C CNN
F 2 "" H -6700 6050 50  0001 C CNN
F 3 "" H -6700 6050 50  0001 C CNN
	1    -6700 6050
	1    0    0    -1  
$EndComp
Text GLabel -4400 7950 2    50   Input ~ 0
L
Text GLabel -4400 7850 2    50   Input ~ 0
J
Text GLabel -4400 7450 2    50   Input ~ 0
H
Text GLabel -4400 7750 2    50   Input ~ 0
F
Text GLabel -4400 7650 2    50   Input ~ 0
D
Text GLabel -4400 7550 2    50   Input ~ 0
B
Text GLabel -3250 6000 0    50   Input ~ 0
S0
Text GLabel -3250 5800 0    50   Input ~ 0
S2
Text GLabel -3250 5900 0    50   Input ~ 0
S1
Text GLabel -4550 6250 0    50   Input ~ 0
A1
Text GLabel 3900 1700 1    50   Input ~ 0
Vin
Text GLabel -2050 5000 2    50   Input ~ 0
D4
Text GLabel -3250 5400 0    50   Input ~ 0
D5
Text GLabel -3250 5100 0    50   Input ~ 0
A_TOP
$Comp
L Device:R R5
U 1 1 6191482D
P -3950 5350
F 0 "R5" H -3880 5396 50  0000 L CNN
F 1 "10k" H -3880 5305 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V -4020 5350 50  0001 C CNN
F 3 "~" H -3950 5350 50  0001 C CNN
	1    -3950 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	-3450 4350 -3950 4350
Connection ~ -3450 4350
Wire Wire Line
	-3950 5500 -3250 5500
Connection ~ -3950 5500
Wire Wire Line
	6950 9150 6950 9950
Wire Wire Line
	7050 9150 7050 9650
$Comp
L power:+3V3 #PWR0106
U 1 1 61626101
P 9100 9900
F 0 "#PWR0106" H 9100 9750 50  0001 C CNN
F 1 "+3V3" H 9100 10050 50  0000 C CNN
F 2 "" H 9100 9900 50  0001 C CNN
F 3 "" H 9100 9900 50  0001 C CNN
	1    9100 9900
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR0119
U 1 1 6193F787
P 6650 9400
F 0 "#PWR0119" H 6650 9250 50  0001 C CNN
F 1 "+3V3" H 6650 9550 50  0000 C CNN
F 2 "" H 6650 9400 50  0001 C CNN
F 3 "" H 6650 9400 50  0001 C CNN
	1    6650 9400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 6193FD5D
P 6750 9400
F 0 "#PWR0120" H 6750 9150 50  0001 C CNN
F 1 "GND" H 6755 9227 50  0000 C CNN
F 2 "" H 6750 9400 50  0001 C CNN
F 3 "" H 6750 9400 50  0001 C CNN
	1    6750 9400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 61942739
P -3950 5050
F 0 "R6" H -3880 5096 50  0000 L CNN
F 1 "10k" H -3880 5005 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V -4020 5050 50  0001 C CNN
F 3 "~" H -3950 5050 50  0001 C CNN
	1    -3950 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	-3950 4900 -3950 4350
$Comp
L power:GND #PWR01
U 1 1 6194D3EF
P -7000 7300
F 0 "#PWR01" H -7000 7050 50  0001 C CNN
F 1 "GND" H -6995 7127 50  0000 C CNN
F 2 "" H -7000 7300 50  0001 C CNN
F 3 "" H -7000 7300 50  0001 C CNN
	1    -7000 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 6194D3F9
P -6850 7300
F 0 "R7" H -7050 7350 50  0000 L CNN
F 1 "10K" H -7100 7250 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V -6920 7300 50  0001 C CNN
F 3 "~" H -6850 7300 50  0001 C CNN
	1    -6850 7300
	0    1    1    0   
$EndComp
Text GLabel -6700 7300 1    50   Input ~ 0
A_BOTTOM
$Comp
L 74xx:74HCT4051 U5
U 1 1 6194D404
P -6400 7600
F 0 "U5" H -6250 8200 50  0000 C CNN
F 1 "74HCT4051" H -6100 8100 50  0000 C CNN
F 2 "Package_DFN_QFN:VQFN-16-1EP_3x3mm_P0.5mm_EP1.6x1.6mm" H -6400 7200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hct4051.pdf" H -6400 7200 50  0001 C CNN
	1    -6400 7600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 6194D40E
P -5700 6850
F 0 "C8" H -5950 6850 50  0000 L CNN
F 1 "100nF" H -6050 6750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H -5662 6700 50  0001 C CNN
F 3 "~" H -5700 6850 50  0001 C CNN
	1    -5700 6850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 6194D418
P -6400 8200
F 0 "#PWR04" H -6400 7950 50  0001 C CNN
F 1 "GND" H -6395 8027 50  0000 C CNN
F 2 "" H -6400 8200 50  0001 C CNN
F 3 "" H -6400 8200 50  0001 C CNN
	1    -6400 8200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR03
U 1 1 6194D422
P -6400 7100
F 0 "#PWR03" H -6400 6950 50  0001 C CNN
F 1 "+3V3" H -6385 7273 50  0000 C CNN
F 2 "" H -6400 7100 50  0001 C CNN
F 3 "" H -6400 7100 50  0001 C CNN
	1    -6400 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	-6400 8200 -6300 8200
Connection ~ -6400 8200
$Comp
L power:GND #PWR06
U 1 1 6194D42E
P -5700 7000
F 0 "#PWR06" H -5700 6750 50  0001 C CNN
F 1 "GND" H -5695 6827 50  0000 C CNN
F 2 "" H -5700 7000 50  0001 C CNN
F 3 "" H -5700 7000 50  0001 C CNN
	1    -5700 7000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR05
U 1 1 6194D438
P -5700 6700
F 0 "#PWR05" H -5700 6550 50  0001 C CNN
F 1 "+3V3" H -5685 6873 50  0000 C CNN
F 2 "" H -5700 6700 50  0001 C CNN
F 3 "" H -5700 6700 50  0001 C CNN
	1    -5700 6700
	1    0    0    -1  
$EndComp
Text GLabel -6700 7500 0    50   Input ~ 0
S0-
Text GLabel -6700 7700 0    50   Input ~ 0
S2-
Text GLabel -6700 7600 0    50   Input ~ 0
S1-
$Comp
L power:GND #PWR02
U 1 1 6194D44B
P -6700 7900
F 0 "#PWR02" H -6700 7650 50  0001 C CNN
F 1 "GND" H -6695 7727 50  0000 C CNN
F 2 "" H -6700 7900 50  0001 C CNN
F 3 "" H -6700 7900 50  0001 C CNN
	1    -6700 7900
	1    0    0    -1  
$EndComp
Text GLabel -2050 6500 2    50   Input ~ 0
S0-
Text GLabel -2050 6300 2    50   Input ~ 0
S2-
Text GLabel -2050 6400 2    50   Input ~ 0
S1-
Text GLabel -6000 7600 2    59   Input ~ 0
A-
Text GLabel -2050 6600 2    59   Input ~ 0
B-
Text GLabel -2050 6000 2    59   Input ~ 0
D-
Text GLabel -6000 8000 2    59   Input ~ 0
E-
Text GLabel -2050 5900 2    59   Input ~ 0
F-
Text GLabel -6000 7800 2    59   Input ~ 0
G-
Text GLabel -6000 7700 2    59   Input ~ 0
C-
Text GLabel -3250 6700 0    59   Input ~ 0
H-
Text GLabel -6000 7300 2    59   Input ~ 0
I-
Text GLabel -3250 6800 0    59   Input ~ 0
J-
Text GLabel -6000 7400 2    59   Input ~ 0
K-
Text GLabel -3250 6900 0    59   Input ~ 0
L-
Text GLabel -6000 7500 2    59   Input ~ 0
M-
Text GLabel -3250 6600 0    50   Input ~ 0
A_BOTTOM
Text GLabel -3250 7000 0    50   Input ~ 0
ADC_THERM
$Comp
L Connector:Conn_01x02_Female RS485?
U 1 1 617AC9CF
P 4400 1800
F 0 "RS485?" H 4550 1750 50  0000 C CNN
F 1 "Conn_01x02_Female" H 4292 1566 50  0001 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x02_P1.27mm_Vertical" H 4400 1800 50  0001 C CNN
F 3 "~" H 4400 1800 50  0001 C CNN
	1    4400 1800
	-1   0    0    1   
$EndComp
Text GLabel 4600 1800 2    50   Input ~ 0
RS485_A-
Text GLabel 4600 1700 2    50   Input ~ 0
RS485_B+
$EndSCHEMATC
