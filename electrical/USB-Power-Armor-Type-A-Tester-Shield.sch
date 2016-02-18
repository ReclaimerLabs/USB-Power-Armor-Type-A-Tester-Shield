EESchema Schematic File Version 2
LIBS:Jason_Custom_Home
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
LIBS:USB-Power-Armor-Type-A-Tester-Shield-cache
EELAYER 25 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "USB Power Armor Type-A Tester Shield"
Date "2015-06-24"
Rev "1"
Comp "Reclaimer Labs, LLC"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L USB_B J2
U 1 1 558B8F7F
P 2550 3600
F 0 "J2" H 2750 3400 50  0000 C CNN
F 1 "USB_B" H 2500 3800 50  0000 C CNN
F 2 "Jason_Libraries:USB-B_SMT_4pin" V 2500 3500 60  0001 C CNN
F 3 "" V 2500 3500 60  0000 C CNN
	1    2550 3600
	0    -1   1    0   
$EndComp
$Comp
L USB_A J1
U 1 1 558B8FA2
P 2550 2750
F 0 "J1" H 2750 2550 50  0000 C CNN
F 1 "USB_A" H 2500 2950 50  0000 C CNN
F 2 "Jason_Libraries:USB_A_Female_SMD" V 2500 2650 60  0001 C CNN
F 3 "" V 2500 2650 60  0000 C CNN
	1    2550 2750
	0    -1   1    0   
$EndComp
$Comp
L R R1
U 1 1 558B9185
P 3250 2600
F 0 "R1" V 3350 2600 50  0000 C CNN
F 1 "1M" V 3250 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3180 2600 30  0001 C CNN
F 3 "" H 3250 2600 30  0000 C CNN
	1    3250 2600
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 558B92B8
P 3250 2800
F 0 "R2" V 3330 2800 50  0000 C CNN
F 1 "1M" V 3250 2800 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3180 2800 30  0001 C CNN
F 3 "" H 3250 2800 30  0000 C CNN
	1    3250 2800
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 558B92DB
P 3950 2800
F 0 "R3" V 4030 2800 50  0000 C CNN
F 1 "150R" V 3950 2800 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" V 3880 2800 30  0001 C CNN
F 3 "" H 3950 2800 30  0000 C CNN
	1    3950 2800
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 558B92FC
P 4300 2800
F 0 "R4" V 4380 2800 50  0000 C CNN
F 1 "150R" V 4300 2800 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" V 4230 2800 30  0001 C CNN
F 3 "" H 4300 2800 30  0000 C CNN
	1    4300 2800
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 558B932B
P 3950 3150
F 0 "D1" H 3950 3250 50  0000 C CNN
F 1 "LED" H 3950 3050 50  0000 C CNN
F 2 "LEDs:LED-1206" H 3950 3150 60  0001 C CNN
F 3 "" H 3950 3150 60  0000 C CNN
	1    3950 3150
	0    -1   -1   0   
$EndComp
$Comp
L LED D2
U 1 1 558B9374
P 4300 3150
F 0 "D2" H 4300 3250 50  0000 C CNN
F 1 "LED" H 4300 3050 50  0000 C CNN
F 2 "LEDs:LED-1206" H 4300 3150 60  0001 C CNN
F 3 "" H 4300 3150 60  0000 C CNN
	1    4300 3150
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X06 J6
U 1 1 558B9609
P 7200 3750
F 0 "J6" H 7200 4100 50  0000 C CNN
F 1 "CONN_01X06" V 7300 3750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 7200 3750 60  0001 C CNN
F 3 "" H 7200 3750 60  0000 C CNN
	1    7200 3750
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 J5
U 1 1 558B96A9
P 7200 2650
F 0 "J5" H 7200 3100 50  0000 C CNN
F 1 "CONN_01X08" V 7300 2650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08" H 7200 2650 60  0001 C CNN
F 3 "" H 7200 2650 60  0000 C CNN
	1    7200 2650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X10 J3
U 1 1 558B96D6
P 6450 2650
F 0 "J3" H 6450 3200 50  0000 C CNN
F 1 "CONN_01X10" V 6550 2650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x10" H 6450 2650 60  0001 C CNN
F 3 "" H 6450 2650 60  0000 C CNN
	1    6450 2650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 J4
U 1 1 558B9731
P 6450 3750
F 0 "J4" H 6450 4200 50  0000 C CNN
F 1 "CONN_01X08" V 6550 3750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08" H 6450 3750 60  0001 C CNN
F 3 "" H 6450 3750 60  0000 C CNN
	1    6450 3750
	1    0    0    -1  
$EndComp
Text Label 6850 3500 0    60   ~ 0
A0
Text Label 6850 3600 0    60   ~ 0
A1
Text Label 6850 3700 0    60   ~ 0
A2
Text Label 6850 3800 0    60   ~ 0
A3
Text Label 6850 3900 0    60   ~ 0
A4
Text Label 6850 4000 0    60   ~ 0
A5
Text Label 6850 2300 0    60   ~ 0
D7
Text Label 6850 2400 0    60   ~ 0
D6
Text Label 6850 2500 0    60   ~ 0
D5
Text Label 6850 2600 0    60   ~ 0
D4
Text Label 6850 2700 0    60   ~ 0
D3
Text Label 6850 2800 0    60   ~ 0
D2
Text Label 6850 2900 0    60   ~ 0
D1
Text Label 6850 3000 0    60   ~ 0
D0
Text Label 5950 2200 0    60   ~ 0
SCL
Text Label 5950 2300 0    60   ~ 0
SDA
Text Label 5950 2400 0    60   ~ 0
AREF
$Comp
L GND #PWR01
U 1 1 558BA317
P 5800 2500
F 0 "#PWR01" H 5800 2250 50  0001 C CNN
F 1 "GND" H 5800 2350 50  0000 C CNN
F 2 "" H 5800 2500 60  0000 C CNN
F 3 "" H 5800 2500 60  0000 C CNN
	1    5800 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2500 6250 2500
Text Label 5950 2600 0    60   ~ 0
D13
Text Label 5950 2700 0    60   ~ 0
D12
Text Label 5950 2800 0    60   ~ 0
D11
Text Label 5950 2900 0    60   ~ 0
D10
Text Label 5950 3000 0    60   ~ 0
D9
Text Label 5950 3100 0    60   ~ 0
D8
$Comp
L GND #PWR02
U 1 1 558BA57F
P 5750 4200
F 0 "#PWR02" H 5750 3950 50  0001 C CNN
F 1 "GND" H 5750 4050 50  0000 C CNN
F 2 "" H 5750 4200 60  0000 C CNN
F 3 "" H 5750 4200 60  0000 C CNN
	1    5750 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3900 5750 3900
Wire Wire Line
	5750 3900 5750 4200
Wire Wire Line
	6250 4000 5750 4000
Connection ~ 5750 4000
Text Label 6050 4100 0    60   ~ 0
VIN
Wire Wire Line
	5750 3700 5750 3800
Wire Wire Line
	5750 3800 6250 3800
$Comp
L +3.3V #PWR03
U 1 1 558BA9AA
P 5850 3500
F 0 "#PWR03" H 5850 3350 50  0001 C CNN
F 1 "+3.3V" H 5850 3640 50  0000 C CNN
F 2 "" H 5850 3500 60  0000 C CNN
F 3 "" H 5850 3500 60  0000 C CNN
	1    5850 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3500 5850 3700
Wire Wire Line
	5850 3700 6250 3700
Text Label 5950 3600 0    60   ~ 0
RESET
Text Label 5950 3500 0    60   ~ 0
IOREF
Wire Wire Line
	5950 3500 6250 3500
Wire Wire Line
	6250 3600 5950 3600
Wire Wire Line
	6050 4100 6250 4100
Wire Wire Line
	7000 3500 6850 3500
Wire Wire Line
	7000 3600 6850 3600
Wire Wire Line
	7000 3700 6850 3700
Wire Wire Line
	7000 3800 6850 3800
Wire Wire Line
	7000 3900 6850 3900
Wire Wire Line
	7000 4000 6850 4000
Wire Wire Line
	7000 2300 6850 2300
Wire Wire Line
	7000 2400 6850 2400
Wire Wire Line
	7000 2500 6850 2500
Wire Wire Line
	7000 2600 6850 2600
Wire Wire Line
	7000 2700 6850 2700
Wire Wire Line
	7000 2800 6850 2800
Wire Wire Line
	7000 2900 6850 2900
Wire Wire Line
	7000 3000 6850 3000
Wire Wire Line
	6250 2200 5950 2200
Wire Wire Line
	6250 2300 5950 2300
Wire Wire Line
	6250 2400 5950 2400
Wire Wire Line
	5950 2600 6250 2600
Wire Wire Line
	5950 2700 6250 2700
Wire Wire Line
	5950 2800 6250 2800
Wire Wire Line
	5950 2900 6250 2900
Wire Wire Line
	5950 3000 6250 3000
Wire Wire Line
	5950 3100 6250 3100
NoConn ~ 6250 3400
$Comp
L +5V #PWR04
U 1 1 558BAF4B
P 5750 3700
F 0 "#PWR04" H 5750 3550 50  0001 C CNN
F 1 "+5V" H 5750 3840 50  0000 C CNN
F 2 "" H 5750 3700 60  0000 C CNN
F 3 "" H 5750 3700 60  0000 C CNN
	1    5750 3700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR05
U 1 1 558BAF77
P 3950 2500
F 0 "#PWR05" H 3950 2350 50  0001 C CNN
F 1 "+5V" H 3950 2640 50  0000 C CNN
F 2 "" H 3950 2500 60  0000 C CNN
F 3 "" H 3950 2500 60  0000 C CNN
	1    3950 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2500 3950 2650
Wire Wire Line
	3950 2550 4300 2550
Wire Wire Line
	4300 2550 4300 2650
Connection ~ 3950 2550
NoConn ~ 2450 3050
NoConn ~ 2450 3900
Text Label 2900 3400 0    60   ~ 0
D2
Text Label 2900 3700 0    60   ~ 0
D3
Text Label 2900 3500 0    60   ~ 0
D4
Text Label 2900 3600 0    60   ~ 0
D5
Wire Wire Line
	2850 2650 3100 2650
Wire Wire Line
	3100 2650 3100 2600
Wire Wire Line
	2850 2750 3100 2750
Wire Wire Line
	3100 2750 3100 2800
Wire Wire Line
	2850 2850 3000 2850
Wire Wire Line
	3000 2550 2850 2550
Text Label 3450 2600 0    60   ~ 0
D10
Text Label 3450 2800 0    60   ~ 0
D11
Wire Wire Line
	3650 2600 3400 2600
Wire Wire Line
	3650 2800 3400 2800
Wire Wire Line
	3050 3400 2850 3400
Wire Wire Line
	3050 3500 2850 3500
Wire Wire Line
	3050 3600 2850 3600
Wire Wire Line
	3050 3700 2850 3700
Text Label 2900 2850 0    60   ~ 0
D9
Text Label 2900 2750 0    60   ~ 0
D8
Text Label 2900 2650 0    60   ~ 0
D7
Text Label 2900 2550 0    60   ~ 0
D6
Text Label 4400 3550 0    60   ~ 0
A0
Text Label 4400 3450 0    60   ~ 0
A1
Wire Wire Line
	4500 3450 4300 3450
Wire Wire Line
	4300 3450 4300 3350
Wire Wire Line
	4500 3550 3950 3550
Wire Wire Line
	3950 3550 3950 3350
Text Notes 4550 3250 1    60   ~ 0
RED
Text Notes 3800 3300 1    60   ~ 0
GREEN
$Comp
L SW_PUSH SW1
U 1 1 558BCFF5
P 3950 4200
F 0 "SW1" H 4100 4310 50  0000 C CNN
F 1 "SW_PUSH" H 3950 4120 50  0000 C CNN
F 2 "Jason_Libraries:SW_Tact_PTS645S_SMD" H 3950 4200 60  0001 C CNN
F 3 "" H 3950 4200 60  0000 C CNN
	1    3950 4200
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR06
U 1 1 558BD0EE
P 3950 4600
F 0 "#PWR06" H 3950 4350 50  0001 C CNN
F 1 "GND" H 3950 4450 50  0000 C CNN
F 2 "" H 3950 4600 60  0000 C CNN
F 3 "" H 3950 4600 60  0000 C CNN
	1    3950 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 4600 3950 4500
Text Label 4400 3800 0    60   ~ 0
A3
Wire Wire Line
	3950 3800 4750 3800
Wire Wire Line
	3950 3800 3950 3900
$Comp
L R R5
U 1 1 558BD7A9
P 4750 3650
F 0 "R5" V 4830 3650 50  0000 C CNN
F 1 "10k" V 4750 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4680 3650 30  0001 C CNN
F 3 "" H 4750 3650 30  0000 C CNN
	1    4750 3650
	1    0    0    -1  
$EndComp
Text Label 4750 3400 0    60   ~ 0
IOREF
Wire Wire Line
	4750 3400 4750 3500
$EndSCHEMATC
