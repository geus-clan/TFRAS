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
L MCU_Microchip_ATmega:ATmega328PB-MU U1
U 1 1 5F61F9A6
P 2350 2950
F 0 "U1" H 1450 1700 50  0000 C CNN
F 1 "ATmega328PB-MU" H 1450 1600 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-32-1EP_5x5mm_P0.5mm_EP3.1x3.1mm" H 2350 2950 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/40001906C.pdf" H 2350 2950 50  0001 C CNN
	1    2350 2950
	1    0    0    -1  
$EndComp
$Comp
L Interface_UART:MAX485E U3
U 1 1 5F621371
P 6500 3700
F 0 "U3" H 7000 4000 50  0000 C CNN
F 1 "MAX14783EATA+T" H 7150 4100 50  0000 C CNN
F 2 "Package_DFN_QFN:DFN-8_2x2mm_P0.5mm" H 6500 3000 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX1487E-MAX491E.pdf" H 6500 3750 50  0001 C CNN
	1    6500 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:Resonator_Small Y1
U 1 1 5F622A32
P 3600 2450
F 0 "Y1" V 3900 2450 50  0000 C CNN
F 1 "Resonator" V 3800 2450 50  0000 C CNN
F 2 "Crystal:Resonator_SMD_muRata_CSTxExxV-3Pin_3.0x1.1mm" H 3575 2450 50  0001 C CNN
F 3 "~" H 3575 2450 50  0001 C CNN
	1    3600 2450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5F6232A8
P 1250 2600
F 0 "R1" H 1320 2646 50  0000 L CNN
F 1 "10K" H 1320 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1180 2600 50  0001 C CNN
F 3 "~" H 1250 2600 50  0001 C CNN
	1    1250 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:Thermistor_NTC TH1
U 1 1 5F624019
P 1250 3000
F 0 "TH1" H 1348 3046 50  0000 L CNN
F 1 "Thermistor_NTC_10K" H 1348 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 1250 3050 50  0001 C CNN
F 3 "~" H 1250 3050 50  0001 C CNN
	1    1250 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2350 3500 2350
Wire Wire Line
	2950 2450 3400 2450
Wire Wire Line
	3400 2450 3400 2550
Wire Wire Line
	3400 2550 3500 2550
$Comp
L power:+3V3 #PWR0101
U 1 1 5F62ABE0
P 7050 1050
F 0 "#PWR0101" H 7050 900 50  0001 C CNN
F 1 "+3V3" H 7065 1223 50  0000 C CNN
F 2 "" H 7050 1050 50  0001 C CNN
F 3 "" H 7050 1050 50  0001 C CNN
	1    7050 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5F62C1A3
P 6500 1400
F 0 "#PWR0102" H 6500 1150 50  0001 C CNN
F 1 "GND" H 6505 1227 50  0000 C CNN
F 2 "" H 6500 1400 50  0001 C CNN
F 3 "" H 6500 1400 50  0001 C CNN
	1    6500 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5F62D0A5
P 3950 2450
F 0 "#PWR0103" H 3950 2200 50  0001 C CNN
F 1 "GND" H 3955 2277 50  0000 C CNN
F 2 "" H 3950 2450 50  0001 C CNN
F 3 "" H 3950 2450 50  0001 C CNN
	1    3950 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2450 3950 2450
Wire Wire Line
	6500 1350 6500 1400
Wire Wire Line
	6800 1050 7050 1050
$Comp
L Device:C C2
U 1 1 5F62E8E1
P 7050 1200
F 0 "C2" H 7165 1246 50  0000 L CNN
F 1 "1uF/6.3V" H 7165 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7088 1050 50  0001 C CNN
F 3 "~" H 7050 1200 50  0001 C CNN
	1    7050 1200
	1    0    0    -1  
$EndComp
Connection ~ 7050 1050
Wire Wire Line
	6500 1400 7050 1400
Connection ~ 6500 1400
Wire Wire Line
	7050 1350 7050 1400
$Comp
L Device:C C1
U 1 1 5F6300E5
P 6000 1200
F 0 "C1" H 5750 1200 50  0000 L CNN
F 1 "1uF/16V" H 5650 1100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6038 1050 50  0001 C CNN
F 3 "~" H 6000 1200 50  0001 C CNN
	1    6000 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1350 6000 1400
$Comp
L power:GND #PWR0104
U 1 1 5F6323E6
P 1250 3150
F 0 "#PWR0104" H 1250 2900 50  0001 C CNN
F 1 "GND" H 1255 2977 50  0000 C CNN
F 2 "" H 1250 3150 50  0001 C CNN
F 3 "" H 1250 3150 50  0001 C CNN
	1    1250 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2750 1250 2850
$Comp
L power:+3V3 #PWR0105
U 1 1 5F639759
P 1250 2450
F 0 "#PWR0105" H 1250 2300 50  0001 C CNN
F 1 "+3V3" H 1265 2623 50  0000 C CNN
F 2 "" H 1250 2450 50  0001 C CNN
F 3 "" H 1250 2450 50  0001 C CNN
	1    1250 2450
	1    0    0    -1  
$EndComp
Text GLabel 6000 1050 0    50   Input ~ 0
Vin
Text GLabel 2950 3450 2    50   Input ~ 0
UART_RX
Text GLabel 2950 3550 2    50   Input ~ 0
UART_TX
Text GLabel 2950 2150 2    50   Input ~ 0
MISO
Text GLabel 2950 2250 2    50   Input ~ 0
SCK
$Comp
L power:+3V3 #PWR0110
U 1 1 5F66644A
P 1750 1300
F 0 "#PWR0110" H 1750 1150 50  0001 C CNN
F 1 "+3V3" H 1750 1450 50  0000 C CNN
F 2 "" H 1750 1300 50  0001 C CNN
F 3 "" H 1750 1300 50  0001 C CNN
	1    1750 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5F667F37
P 2350 4450
F 0 "#PWR0111" H 2350 4200 50  0001 C CNN
F 1 "GND" H 2355 4277 50  0000 C CNN
F 2 "" H 2350 4450 50  0001 C CNN
F 3 "" H 2350 4450 50  0001 C CNN
	1    2350 4450
	1    0    0    -1  
$EndComp
Text GLabel 3450 3050 1    50   Input ~ 0
RST
Text GLabel 2950 3650 2    50   Input ~ 0
RS485_EN
Text GLabel 6100 3750 0    50   Input ~ 0
RS485_EN
$Comp
L power:+3V3 #PWR0112
U 1 1 5F67DA19
P 6500 3200
F 0 "#PWR0112" H 6500 3050 50  0001 C CNN
F 1 "+3V3" H 6515 3373 50  0000 C CNN
F 2 "" H 6500 3200 50  0001 C CNN
F 3 "" H 6500 3200 50  0001 C CNN
	1    6500 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5F67E208
P 6500 4300
F 0 "#PWR0113" H 6500 4050 50  0001 C CNN
F 1 "GND" H 6505 4127 50  0000 C CNN
F 2 "" H 6500 4300 50  0001 C CNN
F 3 "" H 6500 4300 50  0001 C CNN
	1    6500 4300
	1    0    0    -1  
$EndComp
Text GLabel 6100 3900 0    50   Input ~ 0
UART_TX
Text GLabel 6100 3600 0    50   Input ~ 0
UART_RX
Text GLabel 7550 3600 2    50   Input ~ 0
RS485_B+
Text GLabel 7550 3900 2    50   Input ~ 0
RS485_A-
$Comp
L Power_Protection:SP0502BAHT D1
U 1 1 5F691F5E
P 7400 4250
F 0 "D1" H 7605 4296 50  0000 L CNN
F 1 "CDSOT23-SM712" H 7605 4205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7625 4200 50  0001 L CNN
F 3 "http://www.littelfuse.com/~/media/files/littelfuse/technical%20resources/documents/data%20sheets/sp05xxba.pdf" H 7525 4375 50  0001 C CNN
	1    7400 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5F69305C
P 7400 4450
F 0 "#PWR0114" H 7400 4200 50  0001 C CNN
F 1 "GND" H 7405 4277 50  0000 C CNN
F 2 "" H 7400 4450 50  0001 C CNN
F 3 "" H 7400 4450 50  0001 C CNN
	1    7400 4450
	1    0    0    -1  
$EndComp
Text GLabel 1250 2800 2    50   Input ~ 0
ADC
$Comp
L Device:R R2
U 1 1 5F6CAC21
P 3600 3250
F 0 "R2" H 3670 3296 50  0000 L CNN
F 1 "10K" H 3670 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3530 3250 50  0001 C CNN
F 3 "~" H 3600 3250 50  0001 C CNN
	1    3600 3250
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR0118
U 1 1 5F6CD661
P 4050 3250
F 0 "#PWR0118" H 4050 3100 50  0001 C CNN
F 1 "+3V3" H 4065 3423 50  0000 C CNN
F 2 "" H 4050 3250 50  0001 C CNN
F 3 "" H 4050 3250 50  0001 C CNN
	1    4050 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 5F6FAD0F
P 2700 1300
F 0 "L1" V 2890 1300 50  0000 C CNN
F 1 "10uH" V 2799 1300 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric" H 2700 1300 50  0001 C CNN
F 3 "~" H 2700 1300 50  0001 C CNN
	1    2700 1300
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 5F6FCCF6
P 2450 1150
F 0 "C5" H 2200 1150 50  0000 L CNN
F 1 "100nF" H 2100 1050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2488 1000 50  0001 C CNN
F 3 "~" H 2450 1150 50  0001 C CNN
	1    2450 1150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5F708B3A
P 1350 1000
F 0 "#PWR0120" H 1350 750 50  0001 C CNN
F 1 "GND" H 1355 827 50  0000 C CNN
F 2 "" H 1350 1000 50  0001 C CNN
F 3 "" H 1350 1000 50  0001 C CNN
	1    1350 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5F710069
P 1950 1150
F 0 "C4" H 1700 1150 50  0000 L CNN
F 1 "100nF" H 1600 1050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1988 1000 50  0001 C CNN
F 3 "~" H 1950 1150 50  0001 C CNN
	1    1950 1150
	-1   0    0    1   
$EndComp
Wire Wire Line
	2450 1450 2450 1300
Wire Wire Line
	2450 1300 2550 1300
Connection ~ 2450 1300
$Comp
L power:+3V3 #PWR0121
U 1 1 5F71DEB1
P 3000 1300
F 0 "#PWR0121" H 3000 1150 50  0001 C CNN
F 1 "+3V3" H 3015 1473 50  0000 C CNN
F 2 "" H 3000 1300 50  0001 C CNN
F 3 "" H 3000 1300 50  0001 C CNN
	1    3000 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1300 3000 1300
Wire Wire Line
	2350 1450 2350 1300
Wire Wire Line
	2350 1300 1950 1300
Connection ~ 1950 1300
Wire Wire Line
	1950 1300 1750 1300
Wire Wire Line
	1950 1000 2450 1000
$Comp
L Device:C C6
U 1 1 5F729604
P 6000 3150
F 0 "C6" H 6115 3196 50  0000 L CNN
F 1 "100nF" H 6115 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6038 3000 50  0001 C CNN
F 3 "~" H 6000 3150 50  0001 C CNN
	1    6000 3150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5F72BF48
P 6000 3300
F 0 "#PWR0122" H 6000 3050 50  0001 C CNN
F 1 "GND" H 6005 3127 50  0000 C CNN
F 2 "" H 6000 3300 50  0001 C CNN
F 3 "" H 6000 3300 50  0001 C CNN
	1    6000 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3200 6150 3200
Wire Wire Line
	6150 3200 6150 3000
Wire Wire Line
	6150 3000 6000 3000
$Comp
L Device:C C3
U 1 1 5F7366A8
P 1500 1600
F 0 "C3" H 1615 1646 50  0000 L CNN
F 1 "100nF" H 1615 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1538 1450 50  0001 C CNN
F 3 "~" H 1500 1600 50  0001 C CNN
	1    1500 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	1750 1750 1500 1750
Wire Wire Line
	1500 1450 1500 1000
Wire Wire Line
	1500 1000 1950 1000
Connection ~ 1950 1000
$Comp
L Device:R R3
U 1 1 5F7407D4
P 7150 3600
F 0 "R3" H 7220 3646 50  0000 L CNN
F 1 "10" H 7220 3555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7080 3600 50  0001 C CNN
F 3 "~" H 7150 3600 50  0001 C CNN
	1    7150 3600
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5F741121
P 7150 3900
F 0 "R4" H 7220 3946 50  0000 L CNN
F 1 "10" H 7220 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7080 3900 50  0001 C CNN
F 3 "~" H 7150 3900 50  0001 C CNN
	1    7150 3900
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4148 D2
U 1 1 5F6CE043
P 3900 3250
F 0 "D2" V 3946 3171 50  0000 R CNN
F 1 "1N4148" V 3855 3171 50  0000 R CNN
F 2 "Diode_SMD:D_0402_1005Metric" H 3900 3075 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 3900 3250 50  0001 C CNN
	1    3900 3250
	1    0    0    -1  
$EndComp
Connection ~ 6500 3200
Wire Wire Line
	6100 3800 6100 3700
Wire Wire Line
	6900 3900 7000 3900
Wire Wire Line
	6900 3600 7000 3600
Wire Wire Line
	7300 3900 7500 3900
Wire Wire Line
	7300 3600 7550 3600
Connection ~ 7300 3600
Wire Wire Line
	7500 4050 7500 3900
Connection ~ 7500 3900
Wire Wire Line
	7500 3900 7550 3900
Wire Wire Line
	1350 1000 1500 1000
Connection ~ 1500 1000
Wire Wire Line
	2950 3250 3450 3250
Wire Wire Line
	3450 3250 3450 3050
Connection ~ 3450 3250
Wire Wire Line
	7300 3600 7300 4050
Text GLabel 2950 2050 2    50   Input ~ 0
MOSI
$Comp
L 74HC4067BQ_118:74HC4067BQ,118 U8
U 1 1 60D9D326
P 3450 7650
F 0 "U8" H 4250 7600 50  0000 L CNN
F 1 "74HC4067BQ,118" H 3950 7800 50  0000 L CNN
F 2 "74LVCH8T245BQQ10J" H 4900 8050 50  0001 L CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT4067.pdf" H 4900 7950 50  0001 L CNN
F 4 "16-channel analog multiplexer/demultiplexer, SOT815-1" H 4900 7850 50  0001 L CNN "Description"
F 5 "1" H 4900 7750 50  0001 L CNN "Height"
F 6 "Nexperia" H 4900 7650 50  0001 L CNN "Manufacturer_Name"
F 7 "74HC4067BQ,118" H 4900 7550 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "771-74HC4067BQ-T" H 4900 7450 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Nexperia/74HC4067BQ118?qs=6YAT8rHPFU8YJlUYK%252Bx%252Bqw%3D%3D" H 4900 7350 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 4900 7250 50  0001 L CNN "Arrow Part Number"
F 11 "" H 4900 7150 50  0001 L CNN "Arrow Price/Stock"
	1    3450 7650
	1    0    0    -1  
$EndComp
$Comp
L 74HC4067BQ_118:74HC4067BQ,118 U6
U 1 1 60D9EF2F
P 5950 5800
F 0 "U6" H 6750 5750 50  0000 L CNN
F 1 "74HC4067BQ,118" H 6450 5950 50  0000 L CNN
F 2 "74LVCH8T245BQQ10J" H 7400 6200 50  0001 L CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT4067.pdf" H 7400 6100 50  0001 L CNN
F 4 "16-channel analog multiplexer/demultiplexer, SOT815-1" H 7400 6000 50  0001 L CNN "Description"
F 5 "1" H 7400 5900 50  0001 L CNN "Height"
F 6 "Nexperia" H 7400 5800 50  0001 L CNN "Manufacturer_Name"
F 7 "74HC4067BQ,118" H 7400 5700 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "771-74HC4067BQ-T" H 7400 5600 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Nexperia/74HC4067BQ118?qs=6YAT8rHPFU8YJlUYK%252Bx%252Bqw%3D%3D" H 7400 5500 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 7400 5400 50  0001 L CNN "Arrow Part Number"
F 11 "" H 7400 5300 50  0001 L CNN "Arrow Price/Stock"
	1    5950 5800
	1    0    0    -1  
$EndComp
$Comp
L 74HC4067BQ_118:74HC4067BQ,118 U7
U 1 1 60DA1448
P 950 7650
F 0 "U7" H 1750 7600 50  0000 L CNN
F 1 "74HC4067BQ,118" H 1450 7800 50  0000 L CNN
F 2 "74LVCH8T245BQQ10J" H 2400 8050 50  0001 L CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT4067.pdf" H 2400 7950 50  0001 L CNN
F 4 "16-channel analog multiplexer/demultiplexer, SOT815-1" H 2400 7850 50  0001 L CNN "Description"
F 5 "1" H 2400 7750 50  0001 L CNN "Height"
F 6 "Nexperia" H 2400 7650 50  0001 L CNN "Manufacturer_Name"
F 7 "74HC4067BQ,118" H 2400 7550 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "771-74HC4067BQ-T" H 2400 7450 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Nexperia/74HC4067BQ118?qs=6YAT8rHPFU8YJlUYK%252Bx%252Bqw%3D%3D" H 2400 7350 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 2400 7250 50  0001 L CNN "Arrow Part Number"
F 11 "" H 2400 7150 50  0001 L CNN "Arrow Price/Stock"
	1    950  7650
	1    0    0    -1  
$EndComp
$Comp
L 74HC4067BQ_118:74HC4067BQ,118 U4
U 1 1 60D9AD23
P 950 5800
F 0 "U4" H 1750 5750 50  0000 L CNN
F 1 "74HC4067BQ,118" H 1450 5950 50  0000 L CNN
F 2 "74LVCH8T245BQQ10J" H 2400 6200 50  0001 L CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT4067.pdf" H 2400 6100 50  0001 L CNN
F 4 "16-channel analog multiplexer/demultiplexer, SOT815-1" H 2400 6000 50  0001 L CNN "Description"
F 5 "1" H 2400 5900 50  0001 L CNN "Height"
F 6 "Nexperia" H 2400 5800 50  0001 L CNN "Manufacturer_Name"
F 7 "74HC4067BQ,118" H 2400 5700 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "771-74HC4067BQ-T" H 2400 5600 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Nexperia/74HC4067BQ118?qs=6YAT8rHPFU8YJlUYK%252Bx%252Bqw%3D%3D" H 2400 5500 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 2400 5400 50  0001 L CNN "Arrow Part Number"
F 11 "" H 2400 5300 50  0001 L CNN "Arrow Price/Stock"
	1    950  5800
	1    0    0    -1  
$EndComp
$Comp
L 74HC4067BQ_118:74HC4067BQ,118 U9
U 1 1 60DD56E1
P 5950 7650
F 0 "U9" H 6750 7600 50  0000 L CNN
F 1 "74HC4067BQ,118" H 6450 7800 50  0000 L CNN
F 2 "74LVCH8T245BQQ10J" H 7400 8050 50  0001 L CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT4067.pdf" H 7400 7950 50  0001 L CNN
F 4 "16-channel analog multiplexer/demultiplexer, SOT815-1" H 7400 7850 50  0001 L CNN "Description"
F 5 "1" H 7400 7750 50  0001 L CNN "Height"
F 6 "Nexperia" H 7400 7650 50  0001 L CNN "Manufacturer_Name"
F 7 "74HC4067BQ,118" H 7400 7550 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "771-74HC4067BQ-T" H 7400 7450 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Nexperia/74HC4067BQ118?qs=6YAT8rHPFU8YJlUYK%252Bx%252Bqw%3D%3D" H 7400 7350 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 7400 7250 50  0001 L CNN "Arrow Part Number"
F 11 "" H 7400 7150 50  0001 L CNN "Arrow Price/Stock"
	1    5950 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  5900 950  5800
Wire Wire Line
	5950 5800 5950 5900
$Comp
L power:GND #PWR0106
U 1 1 60DDA0ED
P 2550 6000
F 0 "#PWR0106" H 2550 5750 50  0001 C CNN
F 1 "GND" H 2555 5827 50  0000 C CNN
F 2 "" H 2550 6000 50  0001 C CNN
F 3 "" H 2550 6000 50  0001 C CNN
	1    2550 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 60DDA51C
P 5050 6000
F 0 "#PWR0107" H 5050 5750 50  0001 C CNN
F 1 "GND" H 5055 5827 50  0000 C CNN
F 2 "" H 5050 6000 50  0001 C CNN
F 3 "" H 5050 6000 50  0001 C CNN
	1    5050 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 60DDA8E8
P 7550 6000
F 0 "#PWR0108" H 7550 5750 50  0001 C CNN
F 1 "GND" H 7555 5827 50  0000 C CNN
F 2 "" H 7550 6000 50  0001 C CNN
F 3 "" H 7550 6000 50  0001 C CNN
	1    7550 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 60DDAB03
P 7550 7850
F 0 "#PWR0109" H 7550 7600 50  0001 C CNN
F 1 "GND" H 7555 7677 50  0000 C CNN
F 2 "" H 7550 7850 50  0001 C CNN
F 3 "" H 7550 7850 50  0001 C CNN
	1    7550 7850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 60DDADF9
P 5050 7850
F 0 "#PWR0115" H 5050 7600 50  0001 C CNN
F 1 "GND" H 5055 7677 50  0000 C CNN
F 2 "" H 5050 7850 50  0001 C CNN
F 3 "" H 5050 7850 50  0001 C CNN
	1    5050 7850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 60DDB131
P 2550 7850
F 0 "#PWR0116" H 2550 7600 50  0001 C CNN
F 1 "GND" H 2555 7677 50  0000 C CNN
F 2 "" H 2550 7850 50  0001 C CNN
F 3 "" H 2550 7850 50  0001 C CNN
	1    2550 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5900 2550 6000
Wire Wire Line
	5050 5900 5050 6000
Wire Wire Line
	7550 5900 7550 6000
Wire Wire Line
	7550 7750 7550 7850
Wire Wire Line
	5050 7750 5050 7850
Wire Wire Line
	2550 7750 2550 7850
Wire Wire Line
	950  5900 950  7650
Connection ~ 950  5900
Wire Wire Line
	5950 5900 5950 7650
Connection ~ 5950 5900
Text GLabel 2950 3950 2    50   Input ~ 0
E1
Text GLabel 2950 4050 2    50   Input ~ 0
E2
Text GLabel 2950 4150 2    50   Input ~ 0
E3
Text GLabel 2950 1750 2    50   Input ~ 0
E4
Text GLabel 2950 1850 2    50   Input ~ 0
E5
Text GLabel 2950 1950 2    50   Input ~ 0
E6
Text GLabel 2950 2650 2    50   Input ~ 0
ADC
Text GLabel 2950 3750 2    50   Input ~ 0
S0
Text GLabel 2950 3850 2    50   Input ~ 0
S1
Text GLabel 1750 3450 0    50   Input ~ 0
S2
Text GLabel 1750 3550 0    50   Input ~ 0
S3
Text GLabel 2950 2750 2    50   Input ~ 0
Z
$Comp
L Device:R R6
U 1 1 60DF012B
P 4650 3300
F 0 "R6" H 4720 3346 50  0000 L CNN
F 1 "10K" H 4720 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4580 3300 50  0001 C CNN
F 3 "~" H 4650 3300 50  0001 C CNN
	1    4650 3300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 60DF0488
P 4650 3450
F 0 "#PWR0117" H 4650 3200 50  0001 C CNN
F 1 "GND" H 4655 3277 50  0000 C CNN
F 2 "" H 4650 3450 50  0001 C CNN
F 3 "" H 4650 3450 50  0001 C CNN
	1    4650 3450
	1    0    0    -1  
$EndComp
Text GLabel 4650 3050 2    50   Input ~ 0
Z
Wire Wire Line
	4650 3050 4650 3150
Text GLabel 2050 6400 3    50   Input ~ 0
S0
Text GLabel 4550 6400 3    50   Input ~ 0
S0
Text GLabel 7050 6400 3    50   Input ~ 0
S0
Text GLabel 2050 8250 3    50   Input ~ 0
S0
Text GLabel 4550 8250 3    50   Input ~ 0
S0
Text GLabel 7050 8250 3    50   Input ~ 0
S0
Text GLabel 950  7750 0    50   Input ~ 0
Z
Text GLabel 3450 7750 0    50   Input ~ 0
Z
Text GLabel 5950 7750 0    50   Input ~ 0
Z
Text GLabel 2150 6400 3    50   Input ~ 0
S1
Text GLabel 4650 6400 3    50   Input ~ 0
S1
Text GLabel 7150 6400 3    50   Input ~ 0
S1
Text GLabel 2150 8250 3    50   Input ~ 0
S1
Text GLabel 4650 8250 3    50   Input ~ 0
S1
Text GLabel 7150 8250 3    50   Input ~ 0
S1
Text GLabel 2250 5200 1    50   Input ~ 0
S2
Text GLabel 4750 5200 1    50   Input ~ 0
S2
Text GLabel 7250 5200 1    50   Input ~ 0
S2
Text GLabel 2250 7050 1    50   Input ~ 0
S2
Text GLabel 4750 7050 1    50   Input ~ 0
S2
Text GLabel 7250 7050 1    50   Input ~ 0
S2
Text GLabel 2550 5800 2    50   Input ~ 0
S3
Text GLabel 5050 5800 2    50   Input ~ 0
S3
Text GLabel 7550 5800 2    50   Input ~ 0
S3
Text GLabel 7550 7650 2    50   Input ~ 0
S3
Text GLabel 5050 7650 2    50   Input ~ 0
S3
Text GLabel 2550 7650 2    50   Input ~ 0
S3
Text GLabel 2150 5200 1    50   Input ~ 0
E1
Text GLabel 4650 5200 1    50   Input ~ 0
E3
Text GLabel 7150 5200 1    50   Input ~ 0
E5
Text GLabel 2150 7050 1    50   Input ~ 0
E2
Text GLabel 4650 7050 1    50   Input ~ 0
E4
Text GLabel 7150 7050 1    50   Input ~ 0
E6
Text GLabel 1850 6400 3    50   Input ~ 0
BS16
NoConn ~ 1250 5200
NoConn ~ 3750 5200
NoConn ~ 6250 5200
NoConn ~ 6250 7050
NoConn ~ 3750 7050
NoConn ~ 1250 7050
Text GLabel 1750 6400 3    50   Input ~ 0
BS14
Text GLabel 1650 6400 3    50   Input ~ 0
BS13
Text GLabel 1550 6400 3    50   Input ~ 0
BS12
Text GLabel 1450 6400 3    50   Input ~ 0
BS11
Text GLabel 1350 6400 3    50   Input ~ 0
BS10
Text GLabel 1250 6400 3    50   Input ~ 0
BS9
Text GLabel 2050 5200 1    50   Input ~ 0
BS15
Text GLabel 1950 5200 1    50   Input ~ 0
BS14
Text GLabel 1850 5200 1    50   Input ~ 0
BS13
Text GLabel 1750 5200 1    50   Input ~ 0
BS12
Text GLabel 1650 5200 1    50   Input ~ 0
BS11
Text GLabel 1550 5200 1    50   Input ~ 0
BS10
Text GLabel 1450 5200 1    50   Input ~ 0
BS9
Text GLabel 1350 5200 1    50   Input ~ 0
BS8
Text GLabel 1950 8250 3    50   Input ~ 0
BS1
Text GLabel 1850 8250 3    50   Input ~ 0
BS2
Text GLabel 1750 8250 3    50   Input ~ 0
BS3
Text GLabel 1650 8250 3    50   Input ~ 0
BS4
Text GLabel 1550 8250 3    50   Input ~ 0
BS5
Text GLabel 1450 8250 3    50   Input ~ 0
BS6
Text GLabel 1350 8250 3    50   Input ~ 0
BS7
Text GLabel 1250 8250 3    50   Input ~ 0
BS8
$Comp
L power:+3V3 #PWR0119
U 1 1 60E12684
P 950 5800
F 0 "#PWR0119" H 950 5650 50  0001 C CNN
F 1 "+3V3" H 965 5973 50  0000 C CNN
F 2 "" H 950 5800 50  0001 C CNN
F 3 "" H 950 5800 50  0001 C CNN
	1    950  5800
	1    0    0    -1  
$EndComp
Connection ~ 950  5800
$Comp
L power:+3V3 #PWR0123
U 1 1 60E13370
P 3450 5800
F 0 "#PWR0123" H 3450 5650 50  0001 C CNN
F 1 "+3V3" H 3465 5973 50  0000 C CNN
F 2 "" H 3450 5800 50  0001 C CNN
F 3 "" H 3450 5800 50  0001 C CNN
	1    3450 5800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0124
U 1 1 60E13974
P 5950 5800
F 0 "#PWR0124" H 5950 5650 50  0001 C CNN
F 1 "+3V3" H 5965 5973 50  0000 C CNN
F 2 "" H 5950 5800 50  0001 C CNN
F 3 "" H 5950 5800 50  0001 C CNN
	1    5950 5800
	1    0    0    -1  
$EndComp
Connection ~ 5950 5800
Text GLabel 4350 6400 3    50   Input ~ 0
BS17
Text GLabel 4250 6400 3    50   Input ~ 0
BS18
Text GLabel 4150 6400 3    50   Input ~ 0
BS19
Text GLabel 4050 6400 3    50   Input ~ 0
BS20
Text GLabel 3950 6400 3    50   Input ~ 0
BS21
Text GLabel 3850 6400 3    50   Input ~ 0
BS22
Text GLabel 3750 6400 3    50   Input ~ 0
BS23
Text GLabel 3850 5200 1    50   Input ~ 0
BS24
Text GLabel 6850 6400 3    50   Input ~ 0
BS33
Text GLabel 6750 6400 3    50   Input ~ 0
BS34
Text GLabel 6650 6400 3    50   Input ~ 0
BS35
Text GLabel 6550 6400 3    50   Input ~ 0
BS36
Text GLabel 6450 6400 3    50   Input ~ 0
BS37
Text GLabel 6350 6400 3    50   Input ~ 0
BS38
Text GLabel 6250 6400 3    50   Input ~ 0
BS39
Text GLabel 6350 5200 1    50   Input ~ 0
BS40
Text GLabel 3950 5200 1    50   Input ~ 0
BS25
Text GLabel 4050 5200 1    50   Input ~ 0
BS26
Text GLabel 4150 5200 1    50   Input ~ 0
BS27
Text GLabel 4250 5200 1    50   Input ~ 0
BS28
Text GLabel 4350 5200 1    50   Input ~ 0
BS29
Text GLabel 4450 5200 1    50   Input ~ 0
BS30
Text GLabel 4550 5200 1    50   Input ~ 0
BS31
Text GLabel 6950 6400 3    50   Input ~ 0
BS32
Text GLabel 4450 6400 3    50   Input ~ 0
BS16
Text GLabel 2050 7050 1    50   Input ~ 0
BS16
Text GLabel 1950 7050 1    50   Input ~ 0
BS15
Text GLabel 1850 7050 1    50   Input ~ 0
BS14
Text GLabel 1750 7050 1    50   Input ~ 0
BS13
Text GLabel 1650 7050 1    50   Input ~ 0
BS12
Text GLabel 1550 7050 1    50   Input ~ 0
BS11
Text GLabel 1450 7050 1    50   Input ~ 0
BS10
Text GLabel 1350 7050 1    50   Input ~ 0
BS9
Text GLabel 6750 5200 1    50   Input ~ 0
BS44
Text GLabel 6650 5200 1    50   Input ~ 0
BS43
Text GLabel 6550 5200 1    50   Input ~ 0
BS42
Text GLabel 6450 5200 1    50   Input ~ 0
BS41
Text GLabel 4450 8250 3    50   Input ~ 0
BS17
Text GLabel 4350 8250 3    50   Input ~ 0
BS18
Text GLabel 4250 8250 3    50   Input ~ 0
BS19
Text GLabel 4150 8250 3    50   Input ~ 0
BS20
Text GLabel 4050 8250 3    50   Input ~ 0
BS21
Text GLabel 3950 8250 3    50   Input ~ 0
BS22
Text GLabel 3850 8250 3    50   Input ~ 0
BS23
Text GLabel 3750 8250 3    50   Input ~ 0
BS24
Text GLabel 6750 7050 1    50   Input ~ 0
BS45
Text GLabel 6650 7050 1    50   Input ~ 0
BS44
Text GLabel 6550 7050 1    50   Input ~ 0
BS43
Text GLabel 6450 7050 1    50   Input ~ 0
BS42
Text GLabel 6350 7050 1    50   Input ~ 0
BS41
Text GLabel 6950 8250 3    50   Input ~ 0
BS33
Text GLabel 6850 8250 3    50   Input ~ 0
BS34
Text GLabel 6750 8250 3    50   Input ~ 0
BS35
Text GLabel 6650 8250 3    50   Input ~ 0
BS36
Text GLabel 6550 8250 3    50   Input ~ 0
BS37
Text GLabel 6450 8250 3    50   Input ~ 0
BS38
Text GLabel 6350 8250 3    50   Input ~ 0
BS39
Text GLabel 6250 8250 3    50   Input ~ 0
BS40
Text GLabel 3850 7050 1    50   Input ~ 0
BS25
Text GLabel 3950 7050 1    50   Input ~ 0
BS26
Text GLabel 4050 7050 1    50   Input ~ 0
BS27
Text GLabel 4150 7050 1    50   Input ~ 0
BS28
Text GLabel 4250 7050 1    50   Input ~ 0
BS29
Text GLabel 4350 7050 1    50   Input ~ 0
BS30
Text GLabel 4450 7050 1    50   Input ~ 0
BS31
Text GLabel 4550 7050 1    50   Input ~ 0
BS32
Text GLabel 1950 6400 3    50   Input ~ 0
BS18
Text GLabel 5050 11900 3    50   Input ~ 0
RS485_A-
Text GLabel 5450 11900 3    50   Input ~ 0
RS485_B+
$Comp
L power:GND #PWR0128
U 1 1 60D1446F
P 2150 11400
F 0 "#PWR0128" H 2150 11150 50  0001 C CNN
F 1 "GND" H 2155 11227 50  0000 C CNN
F 2 "" H 2150 11400 50  0001 C CNN
F 3 "" H 2150 11400 50  0001 C CNN
	1    2150 11400
	-1   0    0    1   
$EndComp
NoConn ~ 1950 11900
NoConn ~ 2350 11900
NoConn ~ 2450 11900
NoConn ~ 2550 11900
NoConn ~ 2650 11900
NoConn ~ 2750 11900
NoConn ~ 2850 11900
NoConn ~ 2950 11900
NoConn ~ 3050 11900
NoConn ~ 3150 11900
NoConn ~ 3250 11900
NoConn ~ 3350 11900
NoConn ~ 3450 11900
NoConn ~ 3550 11900
NoConn ~ 3650 11900
NoConn ~ 3750 11900
NoConn ~ 3850 11900
NoConn ~ 3950 11900
NoConn ~ 4050 11900
NoConn ~ 4150 11900
NoConn ~ 5250 11900
NoConn ~ 1950 11400
NoConn ~ 2350 11400
NoConn ~ 2450 11400
NoConn ~ 2550 11400
NoConn ~ 2650 11400
NoConn ~ 2750 11400
NoConn ~ 2850 11400
NoConn ~ 2950 11400
NoConn ~ 3050 11400
NoConn ~ 3150 11400
NoConn ~ 3250 11400
NoConn ~ 3350 11400
NoConn ~ 3450 11400
NoConn ~ 3550 11400
NoConn ~ 3650 11400
NoConn ~ 3750 11400
NoConn ~ 3850 11400
NoConn ~ 3950 11400
NoConn ~ 4050 11400
NoConn ~ 4150 11400
NoConn ~ 4250 11400
NoConn ~ 4350 11400
NoConn ~ 4450 11400
NoConn ~ 4550 11400
NoConn ~ 4650 11400
NoConn ~ 4750 11400
NoConn ~ 4850 11400
NoConn ~ 5250 11400
Text GLabel 1750 11400 1    50   Input ~ 0
Vin
Wire Wire Line
	6000 1400 6500 1400
$Comp
L Regulator_Linear:MCP1754S-3302xCB U2
U 1 1 60D6442D
P 6500 1050
F 0 "U2" H 6500 1292 50  0000 C CNN
F 1 "MCP1754S-3302xCB" H 6500 1201 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6500 1275 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20002276C.pdf" H 6500 1050 50  0001 C CNN
	1    6500 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1050 6200 1050
NoConn ~ 1750 3650
NoConn ~ 1750 3750
NoConn ~ 2950 2850
NoConn ~ 2950 2950
NoConn ~ 2950 3050
NoConn ~ 2950 3150
Text GLabel 1650 9950 1    50   Input ~ 0
BS18
Text GLabel 1750 9950 1    50   Input ~ 0
BS16
Text GLabel 1850 9950 1    50   Input ~ 0
BS14
Text GLabel 1950 9950 1    50   Input ~ 0
BS13
Text GLabel 2050 9950 1    50   Input ~ 0
BS12
Text GLabel 2150 9950 1    50   Input ~ 0
BS11
Text GLabel 2250 9950 1    50   Input ~ 0
BS10
Text GLabel 2350 9950 1    50   Input ~ 0
BS9
Text GLabel 2450 9950 1    50   Input ~ 0
BS43
Text GLabel 2550 9950 1    50   Input ~ 0
BS7
Text GLabel 2650 9950 1    50   Input ~ 0
BS42
Text GLabel 2750 9950 1    50   Input ~ 0
BS5
Text GLabel 2850 9950 1    50   Input ~ 0
BS41
Text GLabel 2950 9950 1    50   Input ~ 0
BS2
Text GLabel 3150 9950 1    50   Input ~ 0
BS40
Text GLabel 3350 9950 1    50   Input ~ 0
BS39
Text GLabel 3550 9950 1    50   Input ~ 0
BS38
Text GLabel 3650 9950 1    50   Input ~ 0
BS37
Text GLabel 3850 9950 1    50   Input ~ 0
BS44
Text GLabel 4050 9950 1    50   Input ~ 0
BS45
Text GLabel 4250 9950 1    50   Input ~ 0
BS20
Text GLabel 4450 9950 1    50   Input ~ 0
BS23
Text GLabel 4650 9950 1    50   Input ~ 0
BS25
Text GLabel 4850 9950 1    50   Input ~ 0
BS27
Text GLabel 4950 9950 1    50   Input ~ 0
BS28
Text GLabel 5050 9950 1    50   Input ~ 0
BS29
Text GLabel 5150 9950 1    50   Input ~ 0
BS30
Text GLabel 5250 9950 1    50   Input ~ 0
BS31
Text GLabel 5350 9950 1    50   Input ~ 0
BS32
Text GLabel 5450 9950 1    50   Input ~ 0
BS34
Text GLabel 5550 9950 1    50   Input ~ 0
BS36
Text GLabel 3600 10450 3    50   Input ~ 0
BS0
Text GLabel 2550 10450 3    50   Input ~ 0
BS8
Text GLabel 3050 10450 3    50   Input ~ 0
BS6
Text GLabel 3250 10450 3    50   Input ~ 0
BS4
Text GLabel 3350 10450 3    50   Input ~ 0
BS3
Text GLabel 3450 10450 3    50   Input ~ 0
BS1
Text GLabel 3750 10450 3    50   Input ~ 0
BS19
Text GLabel 3850 10450 3    50   Input ~ 0
BS21
Text GLabel 3950 10450 3    50   Input ~ 0
BS22
Text GLabel 4150 10450 3    50   Input ~ 0
BS24
Text GLabel 4650 10450 3    50   Input ~ 0
BS26
Text GLabel 4750 10450 3    50   Input ~ 0
BS33
Text GLabel 4850 10450 3    50   Input ~ 0
BS35
Text GLabel 4550 11900 3    50   Input ~ 0
MOSI
Text GLabel 4450 11900 3    50   Input ~ 0
MISO
Text GLabel 4350 11900 3    50   Input ~ 0
SCK
Text GLabel 4650 11900 3    50   Input ~ 0
RST
$Comp
L power:GND #PWR0126
U 1 1 60E35240
P 2150 10450
F 0 "#PWR0126" H 2150 10200 50  0001 C CNN
F 1 "GND" H 2155 10277 50  0000 C CNN
F 2 "" H 2150 10450 50  0001 C CNN
F 3 "" H 2150 10450 50  0001 C CNN
	1    2150 10450
	1    0    0    -1  
$EndComp
Text GLabel 5050 10450 3    50   Input ~ 0
RS485_B+
Text GLabel 5450 10450 3    50   Input ~ 0
RS485_A-
$Comp
L Connector_Generic:Conn_02x40_Odd_Even J1
U 1 1 60D9148B
P 3550 10250
F 0 "J1" V 3650 8050 50  0000 L CNN
F 1 "Molex 555600807" V 3550 7450 50  0000 L CNN
F 2 "Connector_Molex:Molex_SlimStack_55560-0801_2x40_P0.50mm_Vertical" H 3550 10250 50  0001 C CNN
F 3 "~" H 3550 10250 50  0001 C CNN
	1    3550 10250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3550 10450 3650 10450
NoConn ~ 3050 9950
NoConn ~ 3250 9950
NoConn ~ 3450 9950
NoConn ~ 3750 9950
NoConn ~ 3950 9950
NoConn ~ 4150 9950
NoConn ~ 3150 10450
NoConn ~ 4050 10450
NoConn ~ 4250 10450
NoConn ~ 4350 10450
NoConn ~ 4450 10450
NoConn ~ 4550 10450
Wire Wire Line
	2050 11400 2150 11400
Connection ~ 2150 11400
Wire Wire Line
	2150 11400 2250 11400
NoConn ~ 1650 11900
NoConn ~ 1750 11900
NoConn ~ 1850 11900
NoConn ~ 2050 11900
NoConn ~ 2150 11900
NoConn ~ 2250 11900
NoConn ~ 4950 11400
NoConn ~ 5050 11400
NoConn ~ 5150 11400
NoConn ~ 5350 11400
NoConn ~ 5450 11400
NoConn ~ 5550 11400
NoConn ~ 2650 10450
NoConn ~ 2750 10450
NoConn ~ 2850 10450
NoConn ~ 2950 10450
Wire Wire Line
	5450 11900 5550 11900
Wire Wire Line
	5350 11900 5450 11900
Connection ~ 5450 11900
Wire Wire Line
	5050 11900 5150 11900
Wire Wire Line
	4950 11900 5050 11900
Connection ~ 5050 11900
Wire Wire Line
	1650 11400 1750 11400
Wire Wire Line
	1750 11400 1850 11400
Connection ~ 1750 11400
$Comp
L Connector_Generic:Conn_02x40_Odd_Even J2
U 1 1 60D6A9D3
P 3550 11700
F 0 "J2" V 3650 9500 50  0000 L CNN
F 1 "Molex 555600807" V 3550 8900 50  0000 L CNN
F 2 "Connector_Molex:Molex_SlimStack_55560-0801_2x40_P0.50mm_Vertical" H 3550 11700 50  0001 C CNN
F 3 "~" H 3550 11700 50  0001 C CNN
	1    3550 11700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 60E02C28
P 4750 12150
F 0 "#PWR0125" H 4750 11900 50  0001 C CNN
F 1 "GND" H 4755 11977 50  0000 C CNN
F 2 "" H 4750 12150 50  0001 C CNN
F 3 "" H 4750 12150 50  0001 C CNN
	1    4750 12150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0127
U 1 1 60DFB947
P 4850 11900
F 0 "#PWR0127" H 4850 11750 50  0001 C CNN
F 1 "+3V3" H 4865 12073 50  0000 C CNN
F 2 "" H 4850 11900 50  0001 C CNN
F 3 "" H 4850 11900 50  0001 C CNN
	1    4850 11900
	-1   0    0    1   
$EndComp
Wire Wire Line
	4750 11900 4750 12150
Text GLabel 1750 10450 3    50   Input ~ 0
Vin
Text GLabel 2450 10450 3    50   Input ~ 0
BS15
Text GLabel 2350 10450 3    50   Input ~ 0
BS17
Wire Wire Line
	1650 10450 1750 10450
Connection ~ 1750 10450
Wire Wire Line
	1750 10450 1850 10450
Wire Wire Line
	2050 10450 2150 10450
Connection ~ 2150 10450
Wire Wire Line
	2150 10450 2250 10450
NoConn ~ 1950 10450
Wire Wire Line
	4950 10450 5050 10450
Connection ~ 5050 10450
Wire Wire Line
	5050 10450 5150 10450
Wire Wire Line
	5350 10450 5450 10450
Connection ~ 5450 10450
Wire Wire Line
	5450 10450 5550 10450
NoConn ~ 5250 10450
Text GLabel 6850 5200 1    50   Input ~ 0
BS45
NoConn ~ 6950 5200
NoConn ~ 7050 5200
NoConn ~ 6850 7050
NoConn ~ 6950 7050
NoConn ~ 7050 7050
Connection ~ 3450 5800
Connection ~ 3450 5900
Wire Wire Line
	3450 5900 3450 7650
Wire Wire Line
	3450 5900 3450 5800
$Comp
L 74HC4067BQ_118:74HC4067BQ,118 U5
U 1 1 60D9E172
P 3450 5800
F 0 "U5" H 4250 5750 50  0000 L CNN
F 1 "74HC4067BQ,118" H 3950 5950 50  0000 L CNN
F 2 "74LVCH8T245BQQ10J" H 4900 6200 50  0001 L CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT4067.pdf" H 4900 6100 50  0001 L CNN
F 4 "16-channel analog multiplexer/demultiplexer, SOT815-1" H 4900 6000 50  0001 L CNN "Description"
F 5 "1" H 4900 5900 50  0001 L CNN "Height"
F 6 "Nexperia" H 4900 5800 50  0001 L CNN "Manufacturer_Name"
F 7 "74HC4067BQ,118" H 4900 5700 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "771-74HC4067BQ-T" H 4900 5600 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Nexperia/74HC4067BQ118?qs=6YAT8rHPFU8YJlUYK%252Bx%252Bqw%3D%3D" H 4900 5500 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 4900 5400 50  0001 L CNN "Arrow Part Number"
F 11 "" H 4900 5300 50  0001 L CNN "Arrow Price/Stock"
	1    3450 5800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
