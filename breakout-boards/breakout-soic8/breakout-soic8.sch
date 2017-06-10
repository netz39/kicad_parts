EESchema Schematic File Version 2
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
Text Notes 1700 1850 0    60   ~ 0
Dummy Part SOIC-8\n
$Comp
L DIL8 P1
U 1 1 5904DCAA
P 2100 1500
F 0 "P1" H 2100 1750 50  0000 C CNN
F 1 "DIL8" V 2100 1500 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 2100 1850 50  0000 C CNN
F 3 "" H 2100 1500 50  0000 C CNN
	1    2100 1500
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P W1
U 1 1 5904DD2A
P 1600 1350
F 0 "W1" H 1600 1620 50  0000 C CNN
F 1 "TEST_1P" H 1600 1550 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 1800 1350 50  0001 C CNN
F 3 "" H 1800 1350 50  0000 C CNN
	1    1600 1350
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P W2
U 1 1 5904DD99
P 1600 1450
F 0 "W2" H 1600 1720 50  0000 C CNN
F 1 "TEST_1P" H 1600 1650 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 1800 1450 50  0001 C CNN
F 3 "" H 1800 1450 50  0000 C CNN
	1    1600 1450
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P W3
U 1 1 5904DDB4
P 1600 1550
F 0 "W3" H 1600 1820 50  0000 C CNN
F 1 "TEST_1P" H 1600 1750 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 1800 1550 50  0001 C CNN
F 3 "" H 1800 1550 50  0000 C CNN
	1    1600 1550
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P W4
U 1 1 5904DDD2
P 1600 1650
F 0 "W4" H 1600 1920 50  0000 C CNN
F 1 "TEST_1P" H 1600 1850 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 1800 1650 50  0001 C CNN
F 3 "" H 1800 1650 50  0000 C CNN
	1    1600 1650
	0    -1   -1   0   
$EndComp
$Comp
L TEST_1P W8
U 1 1 5904DEEE
P 2600 1350
F 0 "W8" H 2600 1620 50  0000 C CNN
F 1 "TEST_1P" H 2600 1550 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 2800 1350 50  0001 C CNN
F 3 "" H 2800 1350 50  0000 C CNN
	1    2600 1350
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W7
U 1 1 5904DF6E
P 2600 1450
F 0 "W7" H 2600 1720 50  0000 C CNN
F 1 "TEST_1P" H 2600 1650 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 2800 1450 50  0001 C CNN
F 3 "" H 2800 1450 50  0000 C CNN
	1    2600 1450
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W6
U 1 1 5904DF93
P 2600 1550
F 0 "W6" H 2600 1820 50  0000 C CNN
F 1 "TEST_1P" H 2600 1750 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 2800 1550 50  0001 C CNN
F 3 "" H 2800 1550 50  0000 C CNN
	1    2600 1550
	0    1    1    0   
$EndComp
$Comp
L TEST_1P W5
U 1 1 5904DFBB
P 2600 1650
F 0 "W5" H 2600 1920 50  0000 C CNN
F 1 "TEST_1P" H 2600 1850 50  0001 C CNN
F 2 "Wire_Pads:SolderWirePad_single_0-8mmDrill" H 2800 1650 50  0001 C CNN
F 3 "" H 2800 1650 50  0000 C CNN
	1    2600 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 1350 1750 1350
Wire Wire Line
	1750 1450 1600 1450
Wire Wire Line
	1600 1550 1750 1550
Wire Wire Line
	1750 1650 1600 1650
Wire Wire Line
	2450 1350 2600 1350
Wire Wire Line
	2600 1450 2450 1450
Wire Wire Line
	2450 1550 2600 1550
Wire Wire Line
	2600 1650 2450 1650
$EndSCHEMATC
