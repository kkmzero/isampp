/*
 * SA-MP Includes Library+
 * Copyright (c) 2018 Ivan Kmeto
 *
 * Licensed under the MIT License.
 * http://opensource.org/licenses/mit-license
*/

#define LOC_WAREHOUSE2             0
#define LOC_TRANSFENDER            1
#define LOC_WORLDOFCOQ             2
#define LOC_AMMUNATION2            3
#define LOC_SUBURBAN               4
#define LOC_DENISEBEDROOM          5
#define LOC_SFGARAGE               6
#define LOC_OVALSTADIUM            7
#define LOC_LIBERTYCITY            8
#define LOC_SWEETSHOUSE            9
#define LOC_CALIGULAS              10
#define LOC_WUZIMU                 11
#define LOC_JET                    12
#define LOC_WELCOMEPUMP            13
#define LOC_BURGH3                 14
#define LOC_ABATTOIR               15
#define LOC_SHCAMELTOE             16
#define LOC_CALIGROOF              17
#define LOC_BDUPPALACE             18
#define LOC_THEPIGPEN              19
#define LOC_RYDERSHOUSE            20
#define LOC_KATIESNEST             21
#define LOC_REECES                 22
#define LOC_APTRAILER              23
#define LOC_BSCRACKPALACE          24
#define LOC_BURGH2                 25
#define LOC_PAIRBURGH              26
#define LOC_CALIGOFFICE            27
#define LOC_STRIPCASINO            28
#define LOC_LOCOLOWCO              29
#define LOC_BROTHEL1               30
#define LOC_BROTHEL2               31
#define LOC_ITBETTING              32
#define LOC_BFRECORDS              33
#define LOC_BSRANCH                34
#define LOC_BDUPAPT                35
#define LOC_WARCHANGELS            36
#define LOC_OGLOCHOUSE             37
#define LOC_BARBERSHOP             38
#define LOC_PLANNINGDPT            39
#define LOC_LVPDHQ                 40
#define LOC_PROLAPS                41
#define LOC_SEXSHOP                42
#define LOC_LVTATTOO               43
#define LOC_HELENASBARN            44
#define LOC_JOHNSONHOUSE           45
#define LOC_PLEASUREDOMES          46
#define LOC_BURGH1                 47
#define LOC_BIKESCHOOL             48
#define LOC_DRIVESCHOOL            49

new Float:locCoords[50][4] = {
{1412.15,-2.28,1000.92,114.66},
{621.45,-23.73,1000.92,15.68},
{445.6,-6.98,1000.73,172.21},
{285.84,-39.02,1001.52,0.75},
{204.12,-46.8,1001.8,357.58},
{245.23,304.76,999.15,273.44},
{-2041.23,178.4,28.85,156.22},
{-1402.66,106.39,1032.27,105.14},
{-741.85,493.0,1371.98,71.78},
{2527.02,-1679.21,1015.5,260.97},
{2233.94,1711.8,1011.63,184.39},
{-2158.67,642.09,1052.38,86.54},
{1.55,23.32,1199.59,359.91},
{681.62,-451.89,-25.62,166.17},
{224.29,1289.19,1082.14,359.87},
{963.06,2159.76,1011.03,175.31},
{2216.13,-1076.31,1050.48,86.43},
{2268.52,1647.77,1084.23,99.73},
{1523.51,-47.82,1002.27,262.7},
{1204.67,-13.54,1000.92,350.02},
{2447.87,-1704.45,1013.51,314.53},
{269.64,305.95,999.15,215.66},
{414.3,-18.8,1001.8,41.43},
{1.19,-3.24,999.43,87.57},
{2536.53,-1294.84,1044.13,254.95},
{225.57,1240.06,1082.14,96.29},
{446.63,1397.74,1084.3,343.96},
{2182.2,1628.58,1043.87,224.86},
{2236.7,-1078.95,1049.02,2.57},
{611.35,-77.56,998.0,320.93},
{974.02,-9.59,1001.15,22.6},
{961.93,-51.91,1001.12,95.54},
{830.6,5.94,1004.18,125.81},
{1037.83,0.4,1001.28,353.93},
{1212.15,-28.54,1000.95,170.57},
{1527.05,-12.02,1002.1,350.0},
{612.22,-123.9,997.99,266.57},
{512.93,-11.69,1001.57,198.77},
{418.47,-80.46,1001.8,343.24},
{386.53,173.64,1008.38,63.74},
{288.47,170.06,1007.18,22.05},
{206.46,-137.71,1003.09,10.93},
{-100.27,-22.94,1000.72,17.29},
{-201.22,-43.25,1002.27,45.86},
{290.62,309.06,999.15,89.92},
{2496.05,-1695.17,1014.74,179.22},
{-2638.82,1407.34,906.46,94.68},
{234.61,1187.82,1080.26,349.48},
{1494.86,1306.48,1093.3,196.07},
{-2031.12,-115.83,1035.17,190.19}
};

new locID[50][1] = {
{1},
{1},
{1},
{1},
{1},
{1},
{1},
{1},
{1},
{1},
{1},
{1},
{1},
{1},
{1},
{1},
{1},
{1},
{2},
{2},
{2},
{2},
{2},
{2},
{2},
{2},
{2},
{2},
{2},
{2},
{3},
{3},
{3},
{3},
{3},
{3},
{3},
{3},
{3},
{3},
{3},
{3},
{3},
{3},
{3},
{3},
{3},
{3},
{3},
{3}
};

new locName[50][] = {
"Warehouse 2",
"TransFender",
"World of Coq",
"Ammunation (v2)",
"Suburban",
"Denise's Bedroom",
"San Fierro Garage",
"Oval Stadium",
"Liberty City",
"Sweet's House",
"Caligulas Casino",
"Wu Zi Mu's",
"Jet",
"The Welcome Pump",
"Burglary House 3",
"Sindacco Abattoir",
"The Camel's Toe Safehouse",
"Caligula's Casino/Palace Roof",
"B Dup's Crack Palace",
"The Pig Pen",
"Ryder's House",
"Katie's Love Nest",
"Old Reece's Barber Shop",
"Angel Pine Trailer",
"Big Smoke's Crack Palace",
"Burglary House 2",
"Pair of Burglary Houses",
"Caligula's Casino Office",
"Old Venturas Strip Casino",
"Loco Low Co",
"Brothel 1",
"Brothel 2",
"Inside Track Betting",
"Blastin' Fools Records",
"The Big Spread Ranch",
"B Dup's Apartment",
"Wheel Arch Angels",
"OG Loc's House",
"Barber Shop",
"Planning Department",
"Las Venturas Police Department HQ",
"Pro-Laps",
"Sex Shop",
"Las Venturas Tattoo Parlor",
"Helena's Barn",
"Johnson's House",
"Pleasure Domes",
"Burglary House 1",
"Bike School",
"Driving School"
};
