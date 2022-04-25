/*
 * Includes for San Andreas Multiplayer+
 * 2018 - 2022, Ivan Kmeťo
 *
 * CC0 1.0 Universal (CC0 1.0) Public Domain Dedication
 * https://creativecommons.org/publicdomain/zero/1.0/
 */


#define SND_AMBIENCE_ENABLE           0       //Resume ambience sound
#define SND_AMBIENCE_DISABLE          1       //Stop ambience sound

#define SND_HELI_DISABLE              1000    //Disable helicopter sounds
#define SND_HELI_ENABLE               1001    //Enable helicopter sounds

#define SND_VENT_DROP                 1002    //Vent dropped from ceiling

#define SND_CAR_DENT                  1009    //Car part dent

#define SND_WHEEL_OF_FORTUNE_CLACKER  1027    //Wheel Of Fortune clacker (Casino)

#define SND_GARAGE_DOOR_LOOP          1035    //Garage doors opening/closing
#define SND_GARAGE_DOOR_STOP          1036    //Garage doors finish opening/closing

#define SND_PARACHUTE_OPEN            1039    //Parachute opening

#define SND_SHOP1_BUY                 1052    //(Ammunation?) Buy blip
#define SND_SHOP1_BUY_DENIED          1053    //(Ammunation?) Buying failed (f.e. insufficient money)
#define SND_SHOP2_BUY                 1054    //Buy blip
#define SND_SHOP2_BUY_DENIED          1055    //Buying failed (f.e. insufficient money)
#define SND_RACE_COUNTDOWN            1056    //Race countdown blip
#define SND_RACE_GO                   1057    //Race countdown "Go" blip
#define SND_ITEM_SELECT               1058    //Blip for selecting/collecting items, race checkpoints

#define SND_GAME_GOGO_TRACK_START     1062    //Go Go Space Monkey Music: start
#define SND_GAME_GOGO_TRACK_STOP      1063    //Go Go Space Monkey Music: stop

#define SND_GAME_DUAL_TRACK_START     1068    //Duality Music: start
#define SND_GAME_DUAL_TRACK_STOP      1069    //Duality Music: stop

#define SND_GAME_BBEE_TRACK_START     1076    //Bumblebee Music: start
#define SND_GAME_BBEE_TRACK_STOP      1077    //Bumblebee Music: stop

#define SND_CASINO_ADD_CASH           1083    //Blip: add cash or place marker on map
#define SND_CASINO_REMOVE_CASH        1084    //Blip: remove cash or remove marker from map
#define SND_CASINO_NO_CASH            1085    //Blip: insufficient money/limit hit

#define SND_LOUD_HIT                  1095    //Loud hit

#define SND_AWARD_TRACK_START         1097    //Awards Ceremony Music: start
#define SND_AWARD_TRACK_STOP          1098    //Awards Ceremony Music: stop

#define SND_MESH_GATE_OPEN            1100    //Mesh gate opening/closing
#define SND_MESH_GATE_STOP            1101    //Mesh gate finish opening/closing

#define SND_PUNCH_PED                 1130    //Punching ped
#define SND_HIT_OBJECT                1131    //Hit wooden object
#define SND_CAMERA_SHOT               1132    //Take camera picture
#define SND_VEH_MOD                   1133    //Installing vehicle modification
#define SND_VEH_RESPRAY               1134    //Respraying vehicle
#define SND_BASEBALL_BAT_HIT_PED      1135    //Hitting ped with baseball bat
#define SND_STAMP_PED                 1136    //Stamping ped
#define SND_CHECKPOINT_BLIP1          1137    //Checkpoint blip (Amber)
#define SND_CHECKPOINT_BLIP2          1138    //Checkpoint blip (Green)
#define SND_CHECKPOINT_BLIP3          1139    //Checkpoint blip (Red)
#define SND_VEH_SMASH1                1140    //Smashing vehicle
#define SND_VEH_SMASH2                1141    //Smashing vehicle
#define SND_OTB_TRACK_START           1142    //OTB Sound: start
#define SND_OTB_TRACK_STOP            1143    //OTB Sound: stop

#define SND_RESTAURANT_TRAY_COLLISION 1145    //Collision/hit or thowing a satchel?
#define SND_SWEETS_HORN               1147    //Sweet's car horn
#define SND_MAGNET_VEH_COLLISION      1148    //Attaching vehicle to magnet
#define SND_PROPERTY_PURCHASED        1149    //Property purchased blip
#define SND_PICKUP_BLIP               1150    //Picking up a pickup/selection blip

#define SND_GARAGE_DOOR_LOOP_ALT      1153    //Garage doors opening/closing (same as SND_GARAGE_DOOR_LOOP)
#define SND_GARAGE_DOOR_STOP_ALT      1154    //Garage doors finish opening/closing (same as SND_GARAGE_DOOR_STOP)

#define SND_FEET_LAND_JUMP            1163    //Two-feet stomp (after jumping)

#define SND_HANGAR_DOOR_LOOP          1165    //Hangar doors opening/closing 
#define SND_HANGAR_DOOR_STOP          1166    //Hangar doors finish opening/closing

#define SND_DRIVING_AWARD_TRACK_START 1183    //Driving School Award Music: Start
#define SND_DRIVING_AWARD_TRACK_STOP  1184    //Driving School Award Music: Stop
#define SND_BIKE_AWARD_TRACK_START    1185    //Bike School Award Music: Start
#define SND_BIKE_AWARD_TRACK_STOP     1186    //Bike School Award Music: Stop
#define SND_FLIGHT_AWARD_TRACK_START  1187    //Flight School Award Music: Start
#define SND_FLIGHT_AWARD_TRACK_STOP   1188    //Flight School Award Music: Stop

#define SND_SLAP                      1190    //Slap

#define SND_POLICE_ALDEA_MALVADA      2000    //Police Radio: "Aldea Malvada"
#define SND_POLICE_ANGEL_PINE         2001    //Police Radio: "Angel Pine"
#define SND_POLICE_ARCO_DEL_OESTE     2002    //Police Radio: "Arco Del Oeste"
#define SND_POLICE_AVISPA_CNTRY_CLUB  2003    //Police Radio: "Avispa Country Club"
#define SND_POLICE_BACK_O_BEYOND      2004    //Police Radio: "Back-o-Beyond"
#define SND_POLICE_BATTERY_POINT      2005    //Police Radio: "Battery Point"
#define SND_POLICE_BAYSIDE            2006    //Police Radio: "Bayside"
#define SND_POLICE_BAYSIDE_MARINA     2007    //Police Radio: "Bayside Marina"
#define SND_POLICE_BAYSIDE_TUNNEL     2008    //Police Radio: "Bayside Tunnel"
#define SND_POLICE_BEACON_HILL        2009    //Police Radio: "Beacon Hill"
#define SND_POLICE_BLACKFIELD         2010    //Police Radio: "Blackfield"
#define SND_POLICE_BLACKFIELD_CHAPEL  2011    //Police Radio: "Blackfield Chapel"
#define SND_POLICE_BLACKFIELD_INT     2012    //Police Radio: "Blackfield Intersection"
#define SND_POLICE_BLUEBERRY_ACRES    2013    //Police Radio: "Blueberry Acres"
#define SND_POLICE_BLUEBERRY          2014    //Police Radio: "Blueberry"
#define SND_POLICE_BONE_COUNTY        2015    //Police Radio: "Bone County"
#define SND_POLICE_CALIGULAS_PALACE   2016    //Police Radio: "Caligulas Palace"
#define SND_POLICE_CALTON_HEIGHTS     2017    //Police Radio: "Calton Heights"
#define SND_POLICE_CHINATOWN          2018    //Police Radio: "Chinatown"
#define SND_POLICE_CITY_HALL          2019    //Police Radio: "City Hall"
#define SND_POLICE_COMEALOT           2020    //Police Radio: "Come-a-Lot"
#define SND_POLICE_COMMERCE           2021    //Police Radio: "Commerce"
#define SND_POLICE_CONFERENCE_CENTRE  2022    //Police Radio: "Conference Centre"
#define SND_POLICE_CRANBERRY_STATION  2023    //Police Radio: "Cranberry Station"
#define SND_POLICE_DILLIMORE          2024    //Police Radio: "Dillimore"
#define SND_POLICE_DOHERTY            2025    //Police Radio: "Doherty"
#define SND_POLICE_DOWNTOWN           2026    //Police Radio: "Downtown"
#define SND_POLICE_DOWNTOWN_LS        2027    //Police Radio: "Downtown Los Santos"
#define SND_POLICE_EAST_LS            2028    //Police Radio: "East Los Santos"
#define SND_POLICE_EAST_BEACH         2029    //Police Radio: "East Beach"
#define SND_POLICE_EASTER_BASIN       2030    //Police Radio: "Easter Basin"
#define SND_POLICE_EASTER_BAY_AIRPT   2031    //Police Radio: "Easter Bay Airport"
#define SND_POLICE_EASTER_BAY_BCP     2032    //Police Radio: "Easter Bay Bluffs Chemical Plant"
#define SND_POLICE_EASTER_TUNNEL      2033    //Police Radio: "Easter Tunnel"
#define SND_POLICE_EL_CASTILLO        2034    //Police Radio: "El Castillo Del Diablo"
#define SND_POLICE_EL_CORONA          2035    //Police Radio: "El Corona"
#define SND_POLICE_EL_QUEBRADOS       2036    //Police Radio: "El Quebrados"
#define SND_POLICE_ESPLANADE_EAST     2037    //Police Radio: "Esplanade East"
#define SND_POLICE_ESPLANADE_NORTH    2038    //Police Radio: "Esplanade North"
#define SND_POLICE_FALLEN_TREE        2039    //Police Radio: "Fallen Tree"
#define SND_POLICE_FALLOW_BRIDGE      2040    //Police Radio: "Fallow Bridge"
#define SND_POLICE_FERN_RIDGE         2041    //Police Radio: "Fern Ridge"
#define SND_POLICE_FINANCIAL          2042    //Police Radio: "Financial"
#define SND_POLICE_FISHERS_LAGOON     2043    //Police Radio: "Fishers Lagoon"
#define SND_POLICE_FLINT_COUNTY       2044    //Police Radio: "Flint County"
#define SND_POLICE_FLINT_INT          2045    //Police Radio: "Flint Intersection"
#define SND_POLICE_FLINT_RANGE        2046    //Police Radio: "Flint Range"
#define SND_POLICE_FLINT_WATER        2047    //Police Radio: "Flint Water"
#define SND_POLICE_FORT_CARSON        2048    //Police Radio: "Fort Carson"
#define SND_POLICE_FOSTER_VALLEY      2049    //Police Radio: "Foster Valley"
#define SND_POLICE_FREDERICK_BRIDGE   2050    //Police Radio: "Frederick Bridge"
#define SND_POLICE_GANTON             2051    //Police Radio: "Ganton"
#define SND_POLICE_GANT_BRIDGE        2052    //Police Radio: "Gant Bridge"
#define SND_POLICE_GARCIA             2053    //Police Radio: "Garcia"
#define SND_POLICE_GARVER_BRIDGE      2054    //Police Radio: "Garver Bridge"
#define SND_POLICE_GLEN_PARK          2055    //Police Radio: "Glen Park"
#define SND_POLICE_GREENGLASS_COLLEGE 2056    //Police Radio: "Greenglass College"
#define SND_POLICE_GREEN_PALMS        2057    //Police Radio: "Green Palms"
#define SND_POLICE_HAMPTON_BARNS      2058    //Police Radio: "Hampton Barns"
#define SND_POLICE_HANKYPANKY_POINT   2059    //Police Radio: "Hankypanky Point"
#define SND_POLICE_HARRY_GOLD_PARKWAY 2060    //Police Radio: "Harry Gold Parkway"
#define SND_POLICE_HASHBERRY          2061    //Police Radio: "Hashberry"
#define SND_POLICE_HILLTOP_FARM       2062    //Police Radio: "Hilltop Farm"
#define SND_POLICE_HUNTER_QUARRY      2063    //Police Radio: "Hunter Quarry"
#define SND_POLICE_IDLEWOOD           2064    //Police Radio: "Idlewood"
#define SND_POLICE_JULIUS_THRWY_EAST  2065    //Police Radio: "Julius Thruway East"
#define SND_POLICE_JULIUS_THRWY_NORTH 2066    //Police Radio: "Julius Thruway North"
#define SND_POLICE_JULIUS_THRWY_SOUTH 2067    //Police Radio: "Julius Thruway South"
#define SND_POLICE_JULIUS_THRWY_WEST  2068    //Police Radio: "Julius Thruway West"
#define SND_POLICE_JUNIPER_HILL       2069    //Police Radio: "Juniper Hill"
#define SND_POLICE_JUNIPER_HOLLOW     2070    //Police Radio: "Juniper Hollow"
#define SND_POLICE_KACC               2071    //Police Radio: "KACC Military Fuels"
#define SND_POLICE_KINCAID_BRIDGE     2072    //Police Radio: "Kincaid Bride"
#define SND_POLICE_KINGS              2073    //Police Radio: "Kings"
#define SND_POLICE_LAS_BARRANCAS      2074    //Police Radio: "Las Barrancas"
#define SND_POLICE_LAS_BRUJAS         2075    //Police Radio: "Las Brujas"
#define SND_POLICE_LAS_PAYASADAS      2076    //Police Radio: "Las Payasadas"
#define SND_POLICE_LAST_DIME_MOTEL    2077    //Police Radio: "Last Dime Motel"
#define SND_POLICE_LAS_VENTURAS       2078    //Police Radio: "Las Venturas"
#define SND_POLICE_LEAFY_HOLLOW       2079    //Police Radio: "Leafy Hollow"
#define SND_POLICE_LIL_PROBE_INN      2080    //Police Radio: "Lil' Probe Inn"
#define SND_POLICE_LINDEN_SIDE        2081    //Police Radio: "Linden Side"
#define SND_POLICE_LINDEN_STATION     2082    //Police Radio: "Linden Station"
#define SND_POLICE_LITTLE_MEXICO      2083    //Police Radio: "Little Mexico"
#define SND_POLICE_LAS_COLINAS        2084    //Police Radio: "Las Colinas"
#define SND_POLICE_LOS_FLORES         2085    //Police Radio: "Los Flores"
#define SND_POLICE_LOS_SANTOS         2086    //Police Radio: "Los Santos"
#define SND_POLICE_LOS_SANTOS_INLET   2087    //Police Radio: "Los Santos Inlet"
#define SND_POLICE_LOS_SANTOS_INTL    2088    //Police Radio: "Los Santos International"
#define SND_POLICE_LOS_SEPULCROS      2089    //Police Radio: "Los Seupulcros"
#define SND_POLICE_LV_AIRPORT         2090    //Police Radio: "Las Venturas Airport"
#define SND_POLICE_LVA_FREIGHT_DEPOT  2091    //Police Radio: "LVA Freight Depot"
#define SND_POLICE_MARINA             2092    //Police Radio: "Marina"
#define SND_POLICE_MARKET             2093    //Police Radio: "Market"
#define SND_POLICE_MARKET_STATION     2094    //Police Radio: "Market Station"
#define SND_POLICE_MARTIN_BRIDGE      2095    //Police Radio: "Martin Bridge"
#define SND_POLICE_MISSIONARY_HILL    2096    //Police Radio: "Missionary Hill"
#define SND_POLICE_MONTGOMERY         2097    //Police Radio: "Montgomery"
#define SND_POLICE_MONTGOMERY_INT     2098    //Police Radio: "Montgomery Intersection"
#define SND_POLICE_MOUNT_CHILLIAD     2099    //Police Radio: "Mount Chilliad"
#define SND_POLICE_MULHOLLAND         2100    //Police Radio: "Mulholland"
#define SND_POLICE_MULHOLLAND_INT     2101    //Police Radio: "Mulholland Intersection"
#define SND_POLICE_NORTHSTAR_ROCK     2102    //Police Radio: "Northstar Rock"
#define SND_POLICE_OCEAN_DOCKS        2103    //Police Radio: "Ocean Docks"
#define SND_POLICE_OCEAN_FLATS        2104    //Police Radio: "Ocean Flats"
#define SND_POLICE_OCTANE_SPRINGS     2105    //Police Radio: "Octane Springs"
#define SND_POLICE_OLD_VENTURAS_STRIP 2106    //Police Radio: "Old Venturas Strip"
#define SND_POLICE_OPEN_OCEAN         2107    //Police Radio: "Open Ocean"
#define SND_POLICE_PALLISADES         2108    //Police Radio: "Pallisades"
#define SND_POLICE_PALOMINO_CREEK     2109    //Police Radio: "Palomino Creek"
#define SND_POLICE_PARADISO           2110    //Police Radio: "Paradiso"
#define SND_POLICE_PILGRAMS_CREEK     2111    //Police Radio: "Pilgrams Creek"
#define SND_POLICE_PILSON_INT         2112    //Police Radio: "Pilson Intersection"
#define SND_POLICE_PLAYA_DEL_SEVILLE  2113    //Police Radio: "Playa Del Seville"
#define SND_POLICE_PRICKLE_PINE       2114    //Police Radio: "Prickle Pine"
#define SND_POLICE_QUEENS             2115    //Police Radio: "Queens"
#define SND_POLICE_RANDOLPH_IE        2116    //Police Radio: "Randolph Industrial Estate"
#define SND_POLICE_RED_COUNTY         2117    //Police Radio: "Red County"
#define SND_POLICE_REDSANDS_EAST      2118    //Police Radio: "Redsands East"
#define SND_POLICE_REDSANDS_WEST      2119    //Police Radio: "Redsands West"
#define SND_POLICE_REGULAR_TOM        2120    //Police Radio: "Regular Tom"
#define SND_POLICE_RICHMAN            2121    //Police Radio: "Richman"
#define SND_POLICE_ROCA_ESCALANTE     2122    //Police Radio: "Roca Escalante"
#define SND_POLICE_ROCKSHORE_EAST     2123    //Police Radio: "Rockshore East"
#define SND_POLICE_ROCKSHORE_WEST     2124    //Police Radio: "Rockshore West"
#define SND_POLICE_RODEO              2125    //Police Radio: "Rodeo"
#define SND_POLICE_ROYALE_CASINO      2126    //Police Radio: "Royale Casino"
#define SND_POLICE_SAN_ANDREAS        2127    //Police Radio: "San Andreas"
#define SND_POLICE_SAN_FIERRO         2128    //Police Radio: "San Fierro"
#define SND_POLICE_SAN_FIERRO_BAY     2129    //Police Radio: "San Fierro Bay"
#define SND_POLICE_SANTA_FLORA        2130    //Police Radio: "Santa Flora"
#define SND_POLICE_SANTA_MARIA_BEACH  2131    //Police Radio: "Santa Maria Beach"
#define SND_POLICE_SHADY_CREEKS       2132    //Police Radio: "Shady Creeks"
#define SND_POLICE_SHERMAN_RESERVOIR  2133    //Police Radio: "Sherman Reservoir"
#define SND_POLICE_SOBELL_RAILYARDS   2134    //Police Radio: "Sobell Railyards"
#define SND_POLICE_SPINYBED           2135    //Police Radio: "Spinybed"
#define SND_POLICE_STARFISH_CASINO    2136    //Police Radio: "Starfish Casino"
#define SND_POLICE_SUNNYSIDE          2137    //Police Radio: "Sunnyside"
#define SND_POLICE_TEMPLE             2138    //Police Radio: "Temple"
#define SND_POLICE_BIG_EAR            2139    //Police Radio: "The Big Ear Radiotelescope"
#define SND_POLICE_CAMELS_TOE         2140    //Police Radio: "The Camel's Toe"
#define SND_POLICE_CLOWNS_POCKET      2141    //Police Radio: "The Clowns Pocket"
#define SND_POLICE_EMERALD_ISLE       2142    //Police Radio: "The Emerald Isle"
#define SND_POLICE_FARM               2143    //Police Radio: "The Farm"
#define SND_POLICE_FOUR_DRAGONS       2144    //Police Radio: "The Four Dragons Casino"
#define SND_POLICE_HIGH_ROLLER        2145    //Police Radio: "The High Roller"
#define SND_POLICE_MAKO_SPAN          2146    //Police Radio: "The Mako Span"
#define SND_POLICE_PANOPTICON         2147    //Police Radio: "The Panopticon"
#define SND_POLICE_PINK_SWAN          2148    //Police Radio: "The Pink Swan"
#define SND_POLICE_PIRATES            2149    //Police Radio: "The Pirates in Mens Pants" 
#define SND_POLICE_SHERMAN_DAM        2150    //Police Radio: "The Sherman Dam"
#define SND_POLICE_VISAGE             2151    //Police Radio: "The Visage"
#define SND_POLICE_TIERRA_ROBADA      2152    //Police Radio: "Tierra Robada"
#define SND_POLICE_UNITY_STATION      2153    //Police Radio: "Unity Station"
#define SND_POLICE_VALLE_OCULTADO     2154    //Police Radio: "Valle Ocultado"
#define SND_POLICE_VERDANT_BLUFFS     2155    //Police Radio: "Verdant Bluffs"
#define SND_POLICE_VERDANT_MEADOWS    2156    //Police Radio: "Verdant Meadows"
#define SND_POLICE_VERONA_BEACH       2157    //Police Radio: "Verona Beach"
#define SND_POLICE_VINEWOOD           2158    //Police Radio: "Vinewood"
#define SND_POLICE_WHETSTONE          2159    //Police Radio: "Whetstone"
#define SND_POLICE_WHITEWOOD_ESTATES  2160    //Police Radio: "Whitewood Estates"
#define SND_POLICE_WILLOWFIELD        2161    //Police Radio: "Willowfield"
#define SND_POLICE_YELLOWBELL_GOLF    2162    //Police Radio: "Yellowbell Golf Course"
#define SND_POLICE_YELLOWBELL_STATION 2163    //Police Radio: "Yellowbell Station"

#define SND_POLICE_BLACK              2200    //Police Radio: "Black"
#define SND_POLICE_BLUE               2201    //Police Radio: "Blue"
#define SND_POLICE_BROWN              2202    //Police Radio: "Brown"
#define SND_POLICE_COPPER             2203    //Police Radio: "Copper"
#define SND_POLICE_CUSTOM             2204    //Police Radio: "Custom"
#define SND_POLICE_CUSTOMIZED         2205    //Police Radio: "Customized"
#define SND_POLICE_DARK               2206    //Police Radio: "Dark"
#define SND_POLICE_GOLD               2207    //Police Radio: "Gold"
#define SND_POLICE_GREEN              2208    //Police Radio: "Green"
#define SND_POLICE_GREY               2209    //Police Radio: "Grey"
#define SND_POLICE_LIGHT              2210    //Police Radio: "Light"
#define SND_POLICE_PINK               2211    //Police Radio: "Pink"
#define SND_POLICE_RED                2212    //Police Radio: "Red"
#define SND_POLICE_SILVER             2213    //Police Radio: "Silver"
#define SND_POLICE_WHITE              2214    //Police Radio: "White"

#define SND_POLICE_CENTRAL            2400    //Police Radio: "Central"
#define SND_POLICE_EAST               2401    //Police Radio: "East"
#define SND_POLICE_NORTH              2402    //Police Radio: "North"
#define SND_POLICE_SOUTH              2403    //Police Radio: "South"
#define SND_POLICE_WEST               2404    //Police Radio: "West"

#define SND_POLICE_HEADTOA10          2600    //Police Radio: "Head to a 10-"
#define SND_POLICE_INA                2601    //Police Radio: "In a"
#define SND_POLICE_INWATER            2602    //Police Radio: "In water"
#define SND_POLICE_ONA                2603    //Police Radio: "On a"
#define SND_POLICE_ONFOOT             2604    //Police Radio: "On foot"
#define SND_POLICE_RESPONDTOA10       2605    //Police Radio: "Respond to a 10-"
#define SND_POLICE_SUSPECTINWATER     2606    //Police Radio: "Suspect in water"
#define SND_POLICE_SUSPECTLASTSEEN    2607    //Police Radio: "Suspect last seen"
#define SND_POLICE_WEGOTA10           2608    //Police Radio: "We got a 10-"

#define SND_POLICE_17IN               2800    //Police Radio: "17 in"
#define SND_POLICE_21IN               2801    //Police Radio: "21 in"
#define SND_POLICE_24IN               2802    //Police Radio: "24 in"
#define SND_POLICE_28IN               2803    //Police Radio: "28 in"
#define SND_POLICE_34IN               2804    //Police Radio: "34 in"
#define SND_POLICE_37IN               2805    //Police Radio: "37 in"
#define SND_POLICE_7IN                2806    //Police Radio: "7 in"
#define SND_POLICE_71IN               2807    //Police Radio: "71 in"
#define SND_POLICE_81IN               2808    //Police Radio: "81 in"
#define SND_POLICE_90IN               2809    //Police Radio: "90 in"
#define SND_POLICE_91IN               2810    //Police Radio: "91 in"
#define SND_POLICE_A10_1              2811    //Police Radio: "a 10-"
#define SND_POLICE_A10_2              2812    //Police Radio: "a 10-"
#define SND_POLICE_A10_3              2813    //Police Radio: "a 10-"

#define SND_POLICE_2DOOR              3000    //Police Radio: "2 Door"
#define SND_POLICE_4DOOR              3001    //Police Radio: "4 Door"
#define SND_POLICE_AMBULANCE          3002    //Police Radio: "Ambulance"
#define SND_POLICE_ARTICCAB           3003    //Police Radio: "Artic Cab"
#define SND_POLICE_BEACHBUGGY         3004    //Police Radio: "Beach Buggy"
#define SND_POLICE_BIKE               3005    //Police Radio: "Bike"
#define SND_POLICE_BOAT               3006    //Police Radio: "Boat"
#define SND_POLICE_BUGGY              3007    //Police Radio: "Buggy"
#define SND_POLICE_BULLDOZER          3008    //Police Radio: "Bulldozer"
#define SND_POLICE_BUS                3009    //Police Radio: "Bus"
#define SND_POLICE_CAMPERVAN          3010    //Police Radio: "Camper Van"
#define SND_POLICE_COACH              3011    //Police Radio: "Coach"
#define SND_POLICE_COMBINEHARVESTER   3012    //Police Radio: "Combine Harvester"
#define SND_POLICE_COMPACT            3013    //Police Radio: "Compact"
#define SND_POLICE_CONVERTIBLE        3014    //Police Radio: "Convertible"
#define SND_POLICE_COUPE              3015    //Police Radio: "Coupe"
#define SND_POLICE_CRUISER            3016    //Police Radio: "Cruiser"
#define SND_POLICE_FIRETRUCK          3017    //Police Radio: "Firetruck"
#define SND_POLICE_FORKLIFT           3018    //Police Radio: "Forklift"
#define SND_POLICE_FREIGHTTRAIN       3019    //Police Radio: "Freight Train"
#define SND_POLICE_GARBAGETRUCK       3020    //Police Radio: "Garbage Truck"
#define SND_POLICE_GASTANKER          3021    //Police Radio: "Gas Tanker"
#define SND_POLICE_GOLFCART           3022    //Police Radio: "Golf Cart"
#define SND_POLICE_GOKART             3023    //Police Radio: "Go Kart"
#define SND_POLICE_HEARSE             3024    //Police Radio: "Hearse"
#define SND_POLICE_HELICOPTER         3025    //Police Radio: "Helicopter"
#define SND_POLICE_HOVERCRAFT         3026    //Police Radio: "Hovercraft"
#define SND_POLICE_ICECREAMVAN        3027    //Police Radio: "Icecream Van"
#define SND_POLICE_JEEP               3028    //Police Radio: "Jeep"
#define SND_POLICE_LAWNMOWER          3029    //Police Radio: "Lawn Mower"
#define SND_POLICE_LIMO               3030    //Police Radio: "Limo"
#define SND_POLICE_LOWRIDER           3031    //Police Radio: "Lowrider"
#define SND_POLICE_MOPED              3032    //Police Radio: "Moped"
#define SND_POLICE_MOTORBIKE          3033    //Police Radio: "Motorbike"
#define SND_POLICE_OFFROAD            3034    //Police Radio: "Offroad"
#define SND_POLICE_PEOPLECARRIER      3035    //Police Radio: "People Carrier"
#define SND_POLICE_PICKUP             3036    //Police Radio: "Pickup"
#define SND_POLICE_PLANE              3037    //Police Radio: "Plane"
#define SND_POLICE_POLICECAR          3038    //Police Radio: "Police Car"
#define SND_POLICE_POLICEVAN          3039    //Police Radio: "Police Van"
#define SND_POLICE_QUADBIKE           3040    //Police Radio: "Quad Bike"
#define SND_POLICE_RUBBERDINGHY       3041    //Police Radio: "Rubber Dinghy"
#define SND_POLICE_SANDBUGGY          3042    //Police Radio: "Sand Buggy"
#define SND_POLICE_SEAPLANE           3043    //Police Radio: "Sea Plane"
#define SND_POLICE_SNOWCAT            3044    //Police Radio: "Snowcat"
#define SND_POLICE_SPEEDBOAT          3045    //Police Radio: "Speedboat"
#define SND_POLICE_SPORT              3046    //Police Radio: "Sport"
#define SND_POLICE_SPORTSCAR          3047    //Police Radio: "Sports Car"
#define SND_POLICE_SPORTSBIKE         3048    //Police Radio: "Sports Bike"
#define SND_POLICE_STATIONVAGON       3049    //Police Radio: "Station Wagon"
#define SND_POLICE_SUV                3050    //Police Radio: "SUV"
#define SND_POLICE_TANK               3051    //Police Radio: "Tank"
#define SND_POLICE_TAXI               3052    //Police Radio: "Taxi"
#define SND_POLICE_TRACTOR            3053    //Police Radio: "Tractor"
#define SND_POLICE_TRAIN              3054    //Police Radio: "Train"
#define SND_POLICE_TRAM               3055    //Police Radio: "Tram"
#define SND_POLICE_TRUCK              3056    //Police Radio: "Truck"
#define SND_POLICE_VAN                3057    //Police Radio: "Van"

#define SND_AIRHORN_SHORT             3200    //Air horn
#define SND_AIRHORN_LONG              3201    //Air horn (longer than previous one)

#define SND_AIRCONDITIONING           3400    //Air conditioning
#define SND_BELLRING_LOOP             3401    //Continuous ringing bell (Fire Alarm?)

#define SND_PHONEDIAL                 3600    //Phone dialing

#define SND_VIDEOTAPE_LOOP            3800    //Videotape (continuous)

#define SND_CASINO_WHEEL_START        4200    //Bandit wheel start
#define SND_CASINO_COINS              4201    //Casino slot machine falling coins
#define SND_CASINO_BLIP1              4202    //Casino slot machine blip
#define SND_CASINO_BLIP2              4203    //Casino slot machine blip

#define SND_HAIRCUT                   4400    //Barber trimming hair (electric razor)

#define SND_GYM_LINE_1                4800    //Gym Guy: "Yo' you wanna learn some new moves?"
#define SND_GYM_LINE_2                4801    //Gym Guy: "Suit youself homes, but the streets are mean dude."
#define SND_GYM_LINE_3                4802    //Gym Guy: "Man you're an embarrassment, get yourselves some muscles first."
#define SND_GYM_LINE_4                4803    //Gym Guy: "Hey you wanna go around with me?"
#define SND_GYM_LINE_5                4804    //Gym Guy: "Yo' pay attention and you might learn something."
#define SND_GYM_LINE_6                4805    //Gym Guy: "Yo' charge in and batter yo opponent!"
#define SND_GYM_LINE_7                4806    //Gym Guy: "Make sure yo' opponent is down and out!"
#define SND_GYM_LINE_8                4807    //Gym Guy: "Never give your opponent time to recover."

#define SND_GAME_BUZZ_LOOP            5200    //Continuous buzz
#define SND_GAME_BLING                5201    //Bling
#define SND_GAME_BBEE_DAMAGE          5202    //Bumblebee video game take damage
#define SND_GAME_BBEE_GAMEOVER        5203    //Bumblebee video game game over
#define SND_GAME_BBEE_FIRE            5204    //Bumblebee video game firing sound
#define SND_GAME_BBEE_BEEP            5205    //Bumblebee video game beep
#define SND_GAME_BBEE_DEATH           5206    //Bumblebee video game death

#define SND_CROUPIER_LINE_1           5400    //Croupier: "Place your bets!"
#define SND_CROUPIER_LINE_2           5401    //Croupier: "Place your bets ladies and gentlemen."
#define SND_CROUPIER_LINE_3           5402    //Croupier: "An offer of credit has been made sir."
#define SND_CROUPIER_LINE_4           5403    //Croupier: "The house is prepared to offer you credit sir."
#define SND_CROUPIER_LINE_5           5404    //Croupier: "The house recognises sir's credit rating."
#define SND_CROUPIER_LINE_6           5405    //Croupier: "Sir doesn't have sufficient money to back another bet."
#define SND_CROUPIER_LINE_7           5406    //Croupier: "Sorry sir you do not have enough funds."
#define SND_CROUPIER_LINE_8           5407    //Croupier: "You appear to have insufficient funds to continue betting."
#define SND_CROUPIER_LINE_9           5408    //Croupier: "No more bets please!"
#define SND_CROUPIER_LINE_10          5409    //Croupier: "No more bets ladies and gentlemen, please."
#define SND_CROUPIER_LINE_11          5410    //Croupier: "No more bets people."
#define SND_CROUPIER_LINE_12          5411    //Croupier: "Black, 10!"
#define SND_CROUPIER_LINE_13          5412    //Croupier: "Black, 11!"
#define SND_CROUPIER_LINE_14          5413    //Croupier: "Red, 12!"
#define SND_CROUPIER_LINE_15          5414    //Croupier: "Black, 13!"
#define SND_CROUPIER_LINE_16          5415    //Croupier: "Red, 14!"
#define SND_CROUPIER_LINE_17          5416    //Croupier: "Black, 15!"
#define SND_CROUPIER_LINE_18          5417    //Croupier: "Red, 16!"
#define SND_CROUPIER_LINE_19          5418    //Croupier: "Black, 17!"
#define SND_CROUPIER_LINE_20          5419    //Croupier: "Red, 18!"
#define SND_CROUPIER_LINE_21          5420    //Croupier: "Red, 19!"
#define SND_CROUPIER_LINE_22          5421    //Croupier: "Black, 20!"
#define SND_CROUPIER_LINE_23          5422    //Croupier: "Red, 21!"
#define SND_CROUPIER_LINE_24          5423    //Croupier: "Black, 22!"
#define SND_CROUPIER_LINE_25          5424    //Croupier: "Red, 23!"
#define SND_CROUPIER_LINE_26          5425    //Croupier: "Black, 24!"
#define SND_CROUPIER_LINE_27          5426    //Croupier: "Red, 25!"
#define SND_CROUPIER_LINE_28          5427    //Croupier: "Black, 26!"
#define SND_CROUPIER_LINE_29          5428    //Croupier: "Red, 27!"
#define SND_CROUPIER_LINE_30          5429    //Croupier: "Black, 28!"
#define SND_CROUPIER_LINE_31          5430    //Croupier: "Black, 29!"
#define SND_CROUPIER_LINE_32          5431    //Croupier: "Red, 30!"
#define SND_CROUPIER_LINE_33          5432    //Croupier: "Black, 31!"
#define SND_CROUPIER_LINE_34          5433    //Croupier: "Red, 32!"
#define SND_CROUPIER_LINE_35          5434    //Croupier: "Black, 33!"
#define SND_CROUPIER_LINE_36          5435    //Croupier: "Red, 34!"
#define SND_CROUPIER_LINE_37          5436    //Croupier: "Black, 35!"
#define SND_CROUPIER_LINE_38          5437    //Croupier: "Red, 36!"
#define SND_CROUPIER_LINE_39          5438    //Croupier: "Zero!"
#define SND_CROUPIER_LINE_40          5439    //Croupier: "Red, 1!"
#define SND_CROUPIER_LINE_41          5440    //Croupier: "Black, 2!"
#define SND_CROUPIER_LINE_42          5441    //Croupier: "Red, 3!"
#define SND_CROUPIER_LINE_43          5442    //Croupier: "Black, 4!"
#define SND_CROUPIER_LINE_44          5443    //Croupier: "Red, 5!"
#define SND_CROUPIER_LINE_45          5444    //Croupier: "Black, 6!"
#define SND_CROUPIER_LINE_46          5445    //Croupier: "Red, 7!"
#define SND_CROUPIER_LINE_47          5446    //Croupier: "Black, 8!"
#define SND_CROUPIER_LINE_48          5447    //Croupier: "Red, 9!"
#define SND_CROUPIER_LINE_49          5448    //Croupier: "You win!"
#define SND_CROUPIER_LINE_50          5449    //Croupier: "You win sir well done."
#define SND_CROUPIER_LINE_51          5450    //Croupier: "Congratulations sir!"
#define SND_CROUPIER_LINE_52          5451    //Croupier: "Sorry sir, regulars only."
#define SND_CROUPIER_LINE_53          5452    //Croupier: "The house does not recognize your limit at this table sir."
#define SND_CROUPIER_LINE_54          5453    //Croupier: "Thank you sir have a nice day!"
#define SND_CROUPIER_LINE_55          5454    //Croupier: "Thank you for playing sir!"
#define SND_CROUPIER_LINE_56          5455    //Croupier: "One dollar pays out!"
#define SND_CROUPIER_LINE_57          5456    //Croupier: "Two dollars pays out!"
#define SND_CROUPIER_LINE_58          5457    //Croupier: "Five dollars pays out!"
#define SND_CROUPIER_LINE_59          5458    //Croupier: "Ten dollars pays out."
#define SND_CROUPIER_LINE_60          5459    //Croupier: "Twenty dollars pays out."
#define SND_CROUPIER_LINE_61          5460    //Croupier: "Forty dollars pays out."
#define SND_CROUPIER_LINE_62          5461    //Croupier: "Jackpot!"
#define SND_CROUPIER_LINE_63          5462    //Croupier: "Another win for sir!"
#define SND_CROUPIER_LINE_64          5463    //Croupier: "Congratulations sir, you're having quite a run."
#define SND_CROUPIER_LINE_65          5464    //Croupier: "I hope sir's luck holds!"

#define SND_BLAST_DOOR                6000    //Blast door sliding
#define SND_SIREN_LOOP                6001    //Repeating siren (repeats every 2 seconds)
#define SND_HEAVY_DOOR                6002    //Heavy door
#define SND_ELECTRIC                  6003    //Electricity (could be used for tazer)

#define SND_BOATSCH_SEAGULLS          6200    //Boat School: Seagulls
#define SND_BOATSCH_LINE_1            6201    //Boat School: "Welcome to the boat school."
#define SND_BOATSCH_LINE_2            6202    //Boat School: "To pass, you must achieve bronze or higher in all five tests."
#define SND_BOATSCH_LINE_3            6203    //Boat School: "To view a demonstration of each test, please use the TV over there."
#define SND_BOATSCH_LINE_4            6204    //Boat School: "Passing the test, will unlock the next test."
#define SND_BOATSCH_LINE_5            6205    //Boat School: "You can come back and check you scores or take new tests, at any time."

#define SND_BLIP                      6400    //Blip ('door buzzer' in game files)
#define SND_ELEVATOR_BELL             6401    //Lift bell rings

#define SND_UNKNOWN_LINE_1            39000   //"What would your mother think?"
#define SND_UNKNOWN_LINE_2            39001   //"You're as bad as them"
#define SND_UNKNOWN_LINE_3            39002   //"Filth like you always have to pay for sex!"

#define SND_UNKNOWN_LINE_4            39047   //"Where's my cellphone!"

#define SND_UNKNOWN_LINE_5            39051   //"That's right put your hands there."
#define SND_UNKNOWN_LINE_6            39052   //"Holy fuck I've got my phone."

#define SND_CJ_LINE_1                 39074   //CJ: "I'm listening, honest..."

#define SND_CJ_LINE_2                 39076   //CJ: "Aha, real interesting."

#define SND_UNKNOWN_LINE_7            50002   //"Just Try Punk! Just Try It!"

#define SND_UNKNOWN_LINE_8            50004   //"You're My World Now!"

#define SND_UNKNOWN_LINE_9            50050   //"Tell My Wife I Love Her."
#define SND_UNKNOWN_LINE_10           50051   //"I'm going in."
#define SND_UNKNOWN_LINE_11           50052   //"What The Hell!"
#define SND_UNKNOWN_LINE_12           50053   //"Uh, My Coffee."

#define SND_UNKNOWN_LINE_13           50094   //"Wait Wait, think about what you're doing."
