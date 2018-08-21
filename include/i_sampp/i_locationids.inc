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
#define LOC_CALIGOFFICE            27  //[!] No Collisions
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
#define LOC_BURGH12                50
#define LOC_AMMUNATION3            51
#define LOC_JAYSDINER              52
#define LOC_247V5                  53
#define LOC_MICHELLESNEST          54
#define LOC_BURGH13                55
#define LOC_DIRTBIKE               56
#define LOC_BURGH15                57
#define LOC_GANTONGYM              58
#define LOC_DINER1                 59  //[!] No Collisions
#define LOC_PIZZASTACK             60
#define LOC_VICTIM                 61
#define LOC_BARBARASNEST           62
#define LOC_MADDDOGGMANSION        63
#define LOC_BURNINGDESIREB         64
#define LOC_SAFEHOUSE1             65
#define LOC_BURGH4                 66
#define LOC_CRACKDEN               67  //[?] TODO: CIV
#define LOC_BURGH11                68
#define LOC_BURGH16                69
#define LOC_BURGH17                70
#define LOC_SAFEHOUSE2             71  //[!] No Collisions
#define LOC_MILLIESROOM            72
#define LOC_COBRAGYM               73
#define LOC_LSPDHQ                 74
#define LOC_BURGH18                75
#define LOC_BURGH19                76
#define LOC_ZERORCSHOP             77
#define LOC_AMMUNATION4            78
#define LOC_AMMUNATION5            79
#define LOC_247V6                  80
#define LOC_VALLEYDINER            81  //[!] No Collisions
#define LOC_WHOREHOUSE             82
#define LOC_AMMUNATION             83
#define LOC_BBELTGYM               84
#define LOC_8TSTADIUM              85

new Float:locCoords[86][4] = {
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
{-2031.12,-115.83,1035.17,190.19},
{261.12,1287.22,1080.26,178.91},
{291.76,-80.13,1001.52,290.22},
{449.02,-88.99,999.55,89.66},
{-27.84,-26.67,1003.56,184.31},
{306.2,307.82,1003.3,203.14},
{221.68,1142.5,1082.61,184.96},
{-1421.56,-663.83,1059.56,170.93},
{-262.18,1456.62,1084.37,82.46},
{770.8,-0.7,1000.73,22.86},
{454.99,-107.25,999.44,309.02},
{372.56,-131.36,1001.49,354.23},
{225.03,-9.18,1002.22,85.53},
{322.5,303.69,999.15,8.17},
{1267.84,-776.96,1091.91,231.34},
{2350.16,-1181.07,1027.98,99.19},
{2233.69,-1112.81,1050.88,8.65},
{239.28,1114.2,1080.99,270.27},
{227.39,1114.66,1081.0,267.46},
{227.76,1114.38,1080.99,266.26},
{22.86,1404.92,1084.43,349.62},
{140.37,1367.88,1083.86,349.24},
{1211.25,1049.02,359.94,170.93},
{345.0,307.18,999.16,193.64},
{773.89,-47.77,1000.59,10.72},
{246.67,65.8,1003.64,7.96},
{234.28,1065.23,1084.21,4.39},
{-68.51,1353.85,1080.21,3.57},
{-2240.1,136.97,1035.41,269.1},
{297.14,-109.87,1001.52,20.23},
{316.5,-167.63,999.59,10.3},
{-26.83,-55.58,1003.55,3.95},
{442.13,-52.48,999.72,177.94},
{748.46,1438.24,1102.95,0.61},
{315.24,-140.89,999.6,7.42},
{773.73,-74.7,1000.65,5.23},
{-1403.01,-250.45,1043.53,355.86}
};

new locID[86][1] = {
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
{3},
{4},
{4},
{4},
{4},
{4},
{4},
{4},
{4},
{5},
{5},
{5},
{5},
{5},
{5},
{5},
{5},
{5},
{5},
{5},
{5},
{5},
{6},
{6},
{6},
{6},
{6},
{6},
{6},
{6},
{6},
{6},
{6},
{6},
{7},
{7},
{7}
};

new locName[86][] = {
"Warehouse 2",
"TransFender",
"World of Coq",
"Ammu-Nation (v2)",
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
"Driving School",
"Burglary House 12",
"Ammu-Nation (v3)",
"Jay's Diner",
"24/7 (v5)",
"Michelle's Love Nest",
"Burglary House 13",
"Dirtbike Stadium",
"Burglary House 15",
"Ganton Gym",
"Diner 1",
"The Well Stacked Pizza Co.",
"Victim",
"Barbara's Love Nest",
"Madd Dogg's Mansion",
"Burning Desire Building",
"Safe House Group 1",
"Burglary House 4",
"Crack Den",
"Burglary House 11",
"Burglary House 16",
"Burglary House 17",
"Safe House Group 2",
"Millie's Bedroom",
"Cobra Gym",
"Los Santos Police Department HQ",
"Burglary House 18",
"Burglary House 19",
"Zero's RC Shop",
"Ammu-Nation (v4)",
"Ammu-Nation (v5)",
"24/7 (v6)",
"Secret Valley Diner",
"Fanny Batter's Whore House",
"Ammu-Nation",
"Below the Belt Gym",
"8-Track Stadium"
};
