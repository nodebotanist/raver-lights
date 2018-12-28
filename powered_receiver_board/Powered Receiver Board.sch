EESchema Schematic File Version 2
LIBS:diode
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:nebrius-microcontrollers
LIBS:nebrius-regulators
LIBS:nebrius-lcd
LIBS:nebrius-logic
LIBS:switches
LIBS:Powered Receiver Board-cache
EELAYER 25 0
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
L INDUCTOR L1
U 1 1 57A0E1B1
P 5500 3000
F 0 "L1" V 5450 3000 50  0000 C CNN
F 1 "2.2uH" V 5600 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6550 3150 50  0001 C CNN
F 3 "" H 5500 3000 50  0000 C CNN
	1    5500 3000
	0    -1   -1   0   
$EndComp
$Comp
L C C2
U 1 1 57A0E396
P 5900 3450
F 0 "C2" H 5925 3550 50  0000 L CNN
F 1 "10uF" H 6050 3450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5938 3300 50  0001 C CNN
F 3 "" H 5900 3450 50  0000 C CNN
	1    5900 3450
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 57A0E3BE
P 3850 3250
F 0 "C1" H 3875 3350 50  0000 L CNN
F 1 "4.7uF" H 3600 3350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3850 4200 50  0001 C CNN
F 3 "" H 3850 3250 50  0000 C CNN
	1    3850 3250
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P4
U 1 1 584F7038
P 9350 3750
F 0 "P4" H 9350 3950 50  0000 C CNN
F 1 "SERIAL" V 9450 3750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.00mm" H 9650 3500 50  0001 C CNN
F 3 "" H 9350 3750 50  0000 C CNN
	1    9350 3750
	1    0    0    -1  
$EndComp
$Comp
L LM3671 U1
U 1 1 5AB1453B
P 4650 3100
F 0 "U1" H 4650 3400 60  0000 C CNN
F 1 "LM3671" H 4650 2800 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5_HandSoldering" H 4650 3100 60  0001 C CNN
F 3 "" H 4650 3100 60  0001 C CNN
	1    4650 3100
	1    0    0    -1  
$EndComp
$Comp
L ESP-01 U2
U 1 1 5AB148BB
P 8150 3700
F 0 "U2" H 8150 4050 60  0000 C CNN
F 1 "ESP-01" H 8150 3350 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x04_Pitch2.54mm" H 8150 3700 60  0001 C CNN
F 3 "" H 8150 3700 60  0001 C CNN
	1    8150 3700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR01
U 1 1 5AF73AE7
P 7350 2950
F 0 "#PWR01" H 7350 2800 50  0001 C CNN
F 1 "VCC" H 7350 3100 50  0000 C CNN
F 2 "" H 7350 2950 50  0001 C CNN
F 3 "" H 7350 2950 50  0001 C CNN
	1    7350 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5AF73B1B
P 8950 3950
F 0 "#PWR02" H 8950 3700 50  0001 C CNN
F 1 "GND" H 8950 3800 50  0000 C CNN
F 2 "" H 8950 3950 50  0001 C CNN
F 3 "" H 8950 3950 50  0001 C CNN
	1    8950 3950
	1    0    0    -1  
$EndComp
$Comp
L SN74LVC1T45 U4
U 1 1 5AF73B4F
P 7950 4600
F 0 "U4" H 7950 4600 60  0000 C CNN
F 1 "SN74LVC1T45" H 7950 4900 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TSOT-23-6_HandSoldering" H 7950 4600 60  0001 C CNN
F 3 "" H 7950 4600 60  0001 C CNN
	1    7950 4600
	1    0    0    -1  
$EndComp
$Comp
L NeoPixel U3
U 1 1 5AF73B94
P 6900 4700
F 0 "U3" H 6900 5000 60  0000 C CNN
F 1 "NeoPixel" V 6600 4700 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x03_Pitch2.54mm" H 6900 4700 60  0001 C CNN
F 3 "" H 6900 4700 60  0001 C CNN
	1    6900 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3000 5200 3000
Wire Wire Line
	7350 2950 7350 3850
Wire Wire Line
	5900 3200 5100 3200
Wire Wire Line
	5800 3000 5900 3000
Wire Wire Line
	8650 3550 8950 3550
Wire Wire Line
	8950 3550 8950 3950
Wire Wire Line
	8650 3650 8850 3650
Wire Wire Line
	8850 3100 8850 4700
Connection ~ 7350 3650
Wire Wire Line
	8650 3850 9150 3850
Wire Wire Line
	7650 3550 7550 3550
Wire Wire Line
	7550 3550 7550 3400
Wire Wire Line
	7550 3400 9050 3400
Wire Wire Line
	9050 3400 9050 3750
Wire Wire Line
	9050 3750 9150 3750
Wire Wire Line
	9150 3650 8950 3650
Connection ~ 8950 3650
Wire Wire Line
	3700 3000 4200 3000
Connection ~ 4000 3000
Wire Wire Line
	4000 3200 4200 3200
Wire Wire Line
	4200 3100 4100 3100
Wire Wire Line
	4000 3000 4000 3200
$Comp
L +5V #PWR03
U 1 1 5AF7418F
P 3300 2900
F 0 "#PWR03" H 3300 2750 50  0001 C CNN
F 1 "+5V" H 3300 3040 50  0000 C CNN
F 2 "" H 3300 2900 50  0001 C CNN
F 3 "" H 3300 2900 50  0001 C CNN
	1    3300 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2900 3300 3000
$Comp
L GND #PWR04
U 1 1 5AF743AA
P 3850 3500
F 0 "#PWR04" H 3850 3250 50  0001 C CNN
F 1 "GND" H 3850 3350 50  0000 C CNN
F 2 "" H 3850 3500 50  0001 C CNN
F 3 "" H 3850 3500 50  0001 C CNN
	1    3850 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3400 3850 3500
$Comp
L GND #PWR05
U 1 1 5AF7446C
P 4100 3300
F 0 "#PWR05" H 4100 3050 50  0001 C CNN
F 1 "GND" H 4100 3150 50  0000 C CNN
F 2 "" H 4100 3300 50  0001 C CNN
F 3 "" H 4100 3300 50  0001 C CNN
	1    4100 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3100 4100 3300
Wire Wire Line
	5900 2900 5900 3300
Connection ~ 5900 3200
$Comp
L GND #PWR06
U 1 1 5AF746B4
P 5900 3700
F 0 "#PWR06" H 5900 3450 50  0001 C CNN
F 1 "GND" H 5900 3550 50  0000 C CNN
F 2 "" H 5900 3700 50  0001 C CNN
F 3 "" H 5900 3700 50  0001 C CNN
	1    5900 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 3600 5900 3700
$Comp
L VCC #PWR07
U 1 1 5AF74726
P 5900 2900
F 0 "#PWR07" H 5900 2750 50  0001 C CNN
F 1 "VCC" H 5900 3050 50  0000 C CNN
F 2 "" H 5900 2900 50  0001 C CNN
F 3 "" H 5900 2900 50  0001 C CNN
	1    5900 2900
	1    0    0    -1  
$EndComp
Connection ~ 5900 3000
Wire Wire Line
	7650 3650 7350 3650
Wire Wire Line
	7350 3850 7650 3850
$Comp
L SW_DPST SW1
U 1 1 5AF74A6E
P 9600 3100
F 0 "SW1" H 9600 3300 50  0000 C CNN
F 1 "SW_DPST" H 9600 2900 50  0000 C CNN
F 2 "nebrius-switch:KMR641NG" H 9600 3100 50  0001 C CNN
F 3 "" H 9600 3100 50  0001 C CNN
	1    9600 3100
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5AF74B18
P 8750 2950
F 0 "R2" V 8650 2950 50  0000 C CNN
F 1 "1k" V 8750 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8680 2950 50  0001 C CNN
F 3 "" H 8750 2950 50  0001 C CNN
	1    8750 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 3750 8650 3750
Wire Wire Line
	8750 3100 8750 3750
Wire Wire Line
	8750 3200 9400 3200
NoConn ~ 9800 3000
NoConn ~ 9400 3000
$Comp
L VCC #PWR08
U 1 1 5AF74CAE
P 8750 2600
F 0 "#PWR08" H 8750 2450 50  0001 C CNN
F 1 "VCC" H 8750 2750 50  0000 C CNN
F 2 "" H 8750 2600 50  0001 C CNN
F 3 "" H 8750 2600 50  0001 C CNN
	1    8750 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 2600 8750 2800
Connection ~ 8750 3200
$Comp
L GND #PWR09
U 1 1 5AF74D9B
P 10000 3300
F 0 "#PWR09" H 10000 3050 50  0001 C CNN
F 1 "GND" H 10000 3150 50  0000 C CNN
F 2 "" H 10000 3300 50  0001 C CNN
F 3 "" H 10000 3300 50  0001 C CNN
	1    10000 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 3200 10000 3200
Wire Wire Line
	10000 3200 10000 3300
$Comp
L R R3
U 1 1 5AF74F31
P 8850 2950
F 0 "R3" V 8930 2950 50  0000 C CNN
F 1 "10k" V 8850 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8780 2950 50  0001 C CNN
F 3 "" H 8850 2950 50  0001 C CNN
	1    8850 2950
	1    0    0    -1  
$EndComp
Connection ~ 8850 3650
Wire Wire Line
	8850 2800 8850 2700
Wire Wire Line
	8850 2700 8750 2700
Connection ~ 8750 2700
$Comp
L R R1
U 1 1 5AF750F4
P 7450 3300
F 0 "R1" V 7530 3300 50  0000 C CNN
F 1 "10k" V 7450 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7380 3300 50  0001 C CNN
F 3 "" H 7450 3300 50  0001 C CNN
	1    7450 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3150 7450 3050
Wire Wire Line
	7450 3050 7350 3050
Connection ~ 7350 3050
Wire Wire Line
	7450 3450 7450 3750
Wire Wire Line
	7450 3750 7650 3750
Wire Wire Line
	8850 4700 8500 4700
Wire Wire Line
	7400 4700 7100 4700
Wire Wire Line
	7200 4600 7100 4600
Wire Wire Line
	7200 4400 7200 4600
Wire Wire Line
	7200 4500 7400 4500
$Comp
L +5V #PWR010
U 1 1 5AF754B5
P 7200 4400
F 0 "#PWR010" H 7200 4250 50  0001 C CNN
F 1 "+5V" H 7200 4540 50  0000 C CNN
F 2 "" H 7200 4400 50  0001 C CNN
F 3 "" H 7200 4400 50  0001 C CNN
	1    7200 4400
	1    0    0    -1  
$EndComp
Connection ~ 7200 4500
Wire Wire Line
	7400 4600 7300 4600
Wire Wire Line
	7300 4600 7300 4900
Wire Wire Line
	7300 4800 7100 4800
$Comp
L GND #PWR011
U 1 1 5AF7558F
P 7300 4900
F 0 "#PWR011" H 7300 4650 50  0001 C CNN
F 1 "GND" H 7300 4750 50  0000 C CNN
F 2 "" H 7300 4900 50  0001 C CNN
F 3 "" H 7300 4900 50  0001 C CNN
	1    7300 4900
	1    0    0    -1  
$EndComp
Connection ~ 7300 4800
$Comp
L GND #PWR012
U 1 1 5AF75675
P 8600 4800
F 0 "#PWR012" H 8600 4550 50  0001 C CNN
F 1 "GND" H 8600 4650 50  0000 C CNN
F 2 "" H 8600 4800 50  0001 C CNN
F 3 "" H 8600 4800 50  0001 C CNN
	1    8600 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4600 8600 4600
Wire Wire Line
	8600 4600 8600 4800
$Comp
L VCC #PWR013
U 1 1 5AF7570E
P 8600 4400
F 0 "#PWR013" H 8600 4250 50  0001 C CNN
F 1 "VCC" H 8600 4550 50  0000 C CNN
F 2 "" H 8600 4400 50  0001 C CNN
F 3 "" H 8600 4400 50  0001 C CNN
	1    8600 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4400 8600 4500
Wire Wire Line
	8600 4500 8500 4500
$Comp
L Fuse F1
U 1 1 5AF9F066
P 3550 3000
F 0 "F1" V 3630 3000 50  0000 C CNN
F 1 "Fuse" V 3475 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3480 3000 50  0001 C CNN
F 3 "" H 3550 3000 50  0001 C CNN
	1    3550 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 3000 3400 3000
Wire Wire Line
	3850 3100 3850 3000
Connection ~ 3850 3000
$EndSCHEMATC
