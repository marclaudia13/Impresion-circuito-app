EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Schematic Design of the circuit"
Date "2021-11-11"
Rev ""
Comp "PUCP-UPCH BME"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 618FE4B4
P 5500 4100
F 0 "A1" H 5500 3011 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 5500 2920 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5500 4100 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5500 4100 50  0001 C CNN
	1    5500 4100
	1    0    0    -1  
$EndComp
$Comp
L RF_Bluetooth:BTM112 BluetoothModule1
U 1 1 619085FE
P 7950 4100
F 0 "BluetoothModule1" H 7950 5481 50  0000 C CNN
F 1 "HC-05" H 7950 5390 50  0000 C CNN
F 2 "" H 7950 4100 50  0001 C CNN
F 3 "https://www.sparkfun.com/datasheets/Wireless/Bluetooth/BTM112_wATcommands.pdf" H 7950 4100 50  0001 C CNN
	1    7950 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 4400 7000 4400
Wire Wire Line
	7000 4400 7000 5800
$Comp
L Device:R R1
U 1 1 6190EFFC
P 5950 6100
F 0 "R1" V 6157 6100 50  0000 C CNN
F 1 "R" V 6066 6100 50  0000 C CNN
F 2 "" V 5880 6100 50  0001 C CNN
F 3 "~" H 5950 6100 50  0001 C CNN
	1    5950 6100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 5800 4850 4000
Wire Wire Line
	4850 5800 7000 5800
Wire Wire Line
	4850 4000 5000 4000
Wire Wire Line
	5000 4100 4650 4100
Wire Wire Line
	4650 4100 4650 6100
Wire Wire Line
	4650 6100 5800 6100
Wire Wire Line
	6100 6100 6800 6100
Wire Wire Line
	6800 6100 6800 4500
Wire Wire Line
	6800 4500 7150 4500
$Comp
L Device:R R2
U 1 1 6192324C
P 6100 5600
F 0 "R2" H 6170 5646 50  0000 L CNN
F 1 "R" H 6170 5555 50  0000 L CNN
F 2 "" V 6030 5600 50  0001 C CNN
F 3 "~" H 6100 5600 50  0001 C CNN
	1    6100 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 2900 5700 2900
Wire Wire Line
	5700 2900 5700 3100
Wire Wire Line
	7950 5300 7950 5450
Wire Wire Line
	7950 5450 6100 5450
Wire Wire Line
	5600 5450 5600 5100
Connection ~ 6100 5450
Wire Wire Line
	6100 5450 5600 5450
Wire Wire Line
	6100 5750 6100 6100
Connection ~ 6100 6100
Wire Wire Line
	3050 4550 3050 5450
Wire Wire Line
	3050 5450 5500 5450
Wire Wire Line
	5500 5450 5500 5100
Wire Wire Line
	3050 3350 3050 2900
Wire Wire Line
	3050 2900 5700 2900
Connection ~ 5700 2900
Wire Wire Line
	3550 3850 4150 3850
Wire Wire Line
	4150 3850 4150 2300
Wire Wire Line
	4150 2300 6400 2300
Wire Wire Line
	6400 2300 6400 4600
Wire Wire Line
	6400 4600 6000 4600
Wire Wire Line
	6000 4500 6300 4500
Wire Wire Line
	6300 4500 6300 2450
Wire Wire Line
	6300 2450 4300 2450
Wire Wire Line
	4300 4050 3550 4050
Wire Wire Line
	4300 2450 4300 4050
$Comp
L power:Earth #PWR0101
U 1 1 61930AC6
P 2850 4700
F 0 "#PWR0101" H 2850 4450 50  0001 C CNN
F 1 "Earth" H 2850 4550 50  0001 C CNN
F 2 "" H 2850 4700 50  0001 C CNN
F 3 "~" H 2850 4700 50  0001 C CNN
	1    2850 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4550 2850 4700
$Comp
L power:Earth #PWR0102
U 1 1 61988542
P 5600 2050
F 0 "#PWR0102" H 5600 1800 50  0001 C CNN
F 1 "Earth" H 5600 1900 50  0001 C CNN
F 2 "" H 5600 2050 50  0001 C CNN
F 3 "~" H 5600 2050 50  0001 C CNN
	1    5600 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 2050 5400 3100
$Comp
L power:+3V8 #LiPoBattery0101
U 1 1 61989A58
P 5500 1450
F 0 "#LiPoBattery0101" H 5588 1533 50  0000 L CNN
F 1 "+3V8" H 5588 1442 50  0000 L CNN
F 2 "" H 5500 1450 50  0001 C CNN
F 3 "" H 5500 1450 50  0001 C CNN
	1    5500 1450
	1    0    0    -1  
$EndComp
$Comp
L Sensor:BME280 BME280
U 1 1 61906F21
P 2950 3950
F 0 "BME280" H 2521 3996 50  0000 R CNN
F 1 "Sensor" H 2521 3905 50  0000 R CNN
F 2 "Package_LGA:Bosch_LGA-8_2.5x2.5mm_P0.65mm_ClockwisePinNumbering" H 4450 3500 50  0001 C CNN
F 3 "https://ae-bst.resource.bosch.com/media/_tech/media/datasheets/BST-BME280-DS002.pdf" H 2950 3750 50  0001 C CNN
	1    2950 3950
	1    0    0    -1  
$EndComp
$Comp
L Connector:XLR3_Switched Switch1
U 2 1 619833F8
P 5500 1750
F 0 "Switch1" V 5454 1954 50  0000 L CNN
F 1 "XLR3_Switched" V 5545 1954 50  0000 L CNN
F 2 "" H 5500 1850 50  0000 C CNN
F 3 " ~" H 5500 1850 50  0001 C CNN
	2    5500 1750
	0    1    1    0   
$EndComp
$EndSCHEMATC
