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

#define SND_GARAGE_DOOR_LOOP          1035    //Garage doors opening/closing loop
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

#define SND_HANGAR_DOOR_LOOP          1165    //Hangar doors opening/closing loop
#define SND_HANGAR_DOOR_STOP          1166    //Hangar doors finish opening/closing

#define SND_DRIVING_AWARD_TRACK_START 1183    //Driving School Award Music: start
#define SND_DRIVING_AWARD_TRACK_STOP  1184    //Driving School Award Music: stop
#define SND_BIKE_AWARD_TRACK_START    1185    //Bike School Award Music: start
#define SND_BIKE_AWARD_TRACK_STOP     1186    //Bike School Award Music: stop
#define SND_FLIGHT_AWARD_TRACK_START  1187    //Flight School Award Music: start
#define SND_FLIGHT_AWARD_TRACK_STOP   1188    //Flight School Award Music: stop

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
#define SND_BELLRING_LOOP             3401    //Ringing bell (Fire Alarm?) loop

#define SND_PHONEDIAL                 3600    //Phone dialing

#define SND_VIDEOTAPE_LOOP            3800    //Videotape loop

#define SND_BALLAS_LINE1              4000    //Ballas: "Grove Street's going down!"
#define SND_BALLAS_LINE2              4001    //Ballas: "Fuck them Grove Street fools!"

#define SND_CASINO_WHEEL_START        4200    //Bandit wheel start
#define SND_CASINO_COINS              4201    //Casino slot machine falling coins
#define SND_CASINO_BLIP1              4202    //Casino slot machine blip
#define SND_CASINO_BLIP2              4203    //Casino slot machine blip

#define SND_HAIRCUT                   4400    //Barber trimming hair (electric razor)

#define SND_BASKETBALL_BOUNCE1        4600    //Basketball, ball bounce
#define SND_BASKETBALL_BOUNCE2        4601    //Basketball, ball bounce
#define SND_BASKETBALL_BOUNCE3        4602    //Basketball, ball bounce
#define SND_BASKETBALL_BOARDHIT       4603    //Basketball, ball hits backboard, bad shot
#define SND_BASKETBALL_FIELDGOAL      4604    //Basketball, ball ripples net, good shot

#define SND_GYMGUY_LINE_1             4800    //Gym Guy: "Yo' you wanna learn some new moves?"
#define SND_GYMGUY_LINE_2             4801    //Gym Guy: "Suit youself homes, but the streets are mean dude."
#define SND_GYMGUY_LINE_3             4802    //Gym Guy: "Man you're an embarrassment, get yourselves some muscles first."
#define SND_GYMGUY_LINE_4             4803    //Gym Guy: "Hey you wanna go around with me?"
#define SND_GYMGUY_LINE_5             4804    //Gym Guy: "Yo' pay attention and you might learn something."
#define SND_GYMGUY_LINE_6             4805    //Gym Guy: "Yo' charge in and batter yo opponent!"
#define SND_GYMGUY_LINE_7             4806    //Gym Guy: "Make sure yo' opponent is down and out!"
#define SND_GYMGUY_LINE_8             4807    //Gym Guy: "Never give your opponent time to recover."

#define SND_CATALINA_LINE1            5000    //Catalina: "Oh Claude you're so big and manful."
#define SND_CATALINA_LINE2            5001    //Catalina: "Claude, youre the best driver I've ever bedded!"
#define SND_CATALINA_LINE3            5002    //Catalina: "Hands on the wheel, Claude, hands on the wheel!"
#define SND_CATALINA_LINE4            5003    //Catalina: "Oh Claude, it's bigger than the gear stick!"
#define SND_CATALINA_LINE5            5004    //Catalina: "I have never felt so satisfied!"
#define SND_CATALINA_LINE6            5005    //Catalina: "Five orgasms in as many minutes!"
#define SND_CATALINA_LINE7            5006    //Catalina: "Marry me, Claude, marry me!"
#define SND_CATALINA_LINE8            5007    //Catalina: "Oh Claude, I don't know if I'm woman enough!"
#define SND_CATALINA_LINE9            5008    //Catalina: "Hey, Carl, you drive like a drunken camel!"
#define SND_CATALINA_LINE10           5009    //Catalina: "Carl, are you jealous, eh?"
#define SND_CATALINA_LINE11           5010    //Catalina: "Claude has such girth, he is amazing!"
#define SND_CATALINA_LINE12           5011    //Catalina: "Claude would make you feel inadequate."
#define SND_CATALINA_LINE13           5012    //Catalina: "At last I have found a man to satisfy me!"
#define SND_CATALINA_LINE14           5013    //Catalina: "Claude is so manful, so forceful!"
#define SND_CATALINA_LINE15           5014    //Catalina: "I never knew there was so much more to sex!"

#define SND_GAME_BUZZ_LOOP            5200    //Continuous buzz loop
#define SND_GAME_BLING                5201    //Bling (high pitch sound effect - selection)
#define SND_GAME_BBEE_DAMAGE          5202    //Bumblebee video game take damage
#define SND_GAME_BBEE_GAMEOVER        5203    //Bumblebee video game game over
#define SND_GAME_BBEE_FIRE            5204    //Bumblebee video game firing sound
#define SND_GAME_BBEE_BEEP            5205    //Bumblebee video game beep
#define SND_GAME_BBEE_DEATH           5206    //Bumblebee video game death

#define SND_CROUPIERF_LINE_1          5400    //Croupier (Female): "Place your bets!"
#define SND_CROUPIERF_LINE_2          5401    //Croupier (Female): "Place your bets ladies and gentlemen."
#define SND_CROUPIERF_LINE_3          5402    //Croupier (Female): "An offer of credit has been made, sir."
#define SND_CROUPIERF_LINE_4          5403    //Croupier (Female): "The house is prepared to offer you credit, sir."
#define SND_CROUPIERF_LINE_5          5404    //Croupier (Female): "The house recognises sir's credit rating."
#define SND_CROUPIERF_LINE_6          5405    //Croupier (Female): "Sir doesn't have sufficient money to back another bet."
#define SND_CROUPIERF_LINE_7          5406    //Croupier (Female): "Sorry sir, you do not have enough funds."
#define SND_CROUPIERF_LINE_8          5407    //Croupier (Female): "You appear to have insufficient funds to continue betting."
#define SND_CROUPIERF_LINE_9          5408    //Croupier (Female): "No more bets please!"
#define SND_CROUPIERF_LINE_10         5409    //Croupier (Female): "No more bets ladies and gentlemen, please."
#define SND_CROUPIERF_LINE_11         5410    //Croupier (Female): "No more bets people."
#define SND_CROUPIERF_LINE_12         5411    //Croupier (Female): "Black, 10!"
#define SND_CROUPIERF_LINE_13         5412    //Croupier (Female): "Black, 11!"
#define SND_CROUPIERF_LINE_14         5413    //Croupier (Female): "Red, 12!"
#define SND_CROUPIERF_LINE_15         5414    //Croupier (Female): "Black, 13!"
#define SND_CROUPIERF_LINE_16         5415    //Croupier (Female): "Red, 14!"
#define SND_CROUPIERF_LINE_17         5416    //Croupier (Female): "Black, 15!"
#define SND_CROUPIERF_LINE_18         5417    //Croupier (Female): "Red, 16!"
#define SND_CROUPIERF_LINE_19         5418    //Croupier (Female): "Black, 17!"
#define SND_CROUPIERF_LINE_20         5419    //Croupier (Female): "Red, 18!"
#define SND_CROUPIERF_LINE_21         5420    //Croupier (Female): "Red, 19!"
#define SND_CROUPIERF_LINE_22         5421    //Croupier (Female): "Black, 20!"
#define SND_CROUPIERF_LINE_23         5422    //Croupier (Female): "Red, 21!"
#define SND_CROUPIERF_LINE_24         5423    //Croupier (Female): "Black, 22!"
#define SND_CROUPIERF_LINE_25         5424    //Croupier (Female): "Red, 23!"
#define SND_CROUPIERF_LINE_26         5425    //Croupier (Female): "Black, 24!"
#define SND_CROUPIERF_LINE_27         5426    //Croupier (Female): "Red, 25!"
#define SND_CROUPIERF_LINE_28         5427    //Croupier (Female): "Black, 26!"
#define SND_CROUPIERF_LINE_29         5428    //Croupier (Female): "Red, 27!"
#define SND_CROUPIERF_LINE_30         5429    //Croupier (Female): "Black, 28!"
#define SND_CROUPIERF_LINE_31         5430    //Croupier (Female): "Black, 29!"
#define SND_CROUPIERF_LINE_32         5431    //Croupier (Female): "Red, 30!"
#define SND_CROUPIERF_LINE_33         5432    //Croupier (Female): "Black, 31!"
#define SND_CROUPIERF_LINE_34         5433    //Croupier (Female): "Red, 32!"
#define SND_CROUPIERF_LINE_35         5434    //Croupier (Female): "Black, 33!"
#define SND_CROUPIERF_LINE_36         5435    //Croupier (Female): "Red, 34!"
#define SND_CROUPIERF_LINE_37         5436    //Croupier (Female): "Black, 35!"
#define SND_CROUPIERF_LINE_38         5437    //Croupier (Female): "Red, 36!"
#define SND_CROUPIERF_LINE_39         5438    //Croupier (Female): "Zero!"
#define SND_CROUPIERF_LINE_40         5439    //Croupier (Female): "Red, 1!"
#define SND_CROUPIERF_LINE_41         5440    //Croupier (Female): "Black, 2!"
#define SND_CROUPIERF_LINE_42         5441    //Croupier (Female): "Red, 3!"
#define SND_CROUPIERF_LINE_43         5442    //Croupier (Female): "Black, 4!"
#define SND_CROUPIERF_LINE_44         5443    //Croupier (Female): "Red, 5!"
#define SND_CROUPIERF_LINE_45         5444    //Croupier (Female): "Black, 6!"
#define SND_CROUPIERF_LINE_46         5445    //Croupier (Female): "Red, 7!"
#define SND_CROUPIERF_LINE_47         5446    //Croupier (Female): "Black, 8!"
#define SND_CROUPIERF_LINE_48         5447    //Croupier (Female): "Red, 9!"
#define SND_CROUPIERF_LINE_49         5448    //Croupier (Female): "You win!"
#define SND_CROUPIERF_LINE_50         5449    //Croupier (Female): "You win sir well done."
#define SND_CROUPIERF_LINE_51         5450    //Croupier (Female): "Congratulations sir!"
#define SND_CROUPIERF_LINE_52         5451    //Croupier (Female): "Sorry sir, regulars only."
#define SND_CROUPIERF_LINE_53         5452    //Croupier (Female): "The house does not recognize your limit at this table sir."
#define SND_CROUPIERF_LINE_54         5453    //Croupier (Female): "Thank you sir have a nice day!"
#define SND_CROUPIERF_LINE_55         5454    //Croupier (Female): "Thank you for playing sir!"
#define SND_CROUPIERF_LINE_56         5455    //Croupier (Female): "One dollar pays out!"
#define SND_CROUPIERF_LINE_57         5456    //Croupier (Female): "Two dollars pays out!"
#define SND_CROUPIERF_LINE_58         5457    //Croupier (Female): "Five dollars pays out!"
#define SND_CROUPIERF_LINE_59         5458    //Croupier (Female): "Ten dollars pays out."
#define SND_CROUPIERF_LINE_60         5459    //Croupier (Female): "Twenty dollars pays out."
#define SND_CROUPIERF_LINE_61         5460    //Croupier (Female): "Forty dollars pays out."
#define SND_CROUPIERF_LINE_62         5461    //Croupier (Female): "Jackpot!"
#define SND_CROUPIERF_LINE_63         5462    //Croupier (Female): "Another win for sir!"
#define SND_CROUPIERF_LINE_64         5463    //Croupier (Female): "Congratulations sir, you're having quite a run."
#define SND_CROUPIERF_LINE_65         5464    //Croupier (Female): "I hope sir's luck holds!"

#define SND_SATCHEL_THROW1            5600    //Throw satchel charge
#define SND_SATCHEL_THROW2            5601    //Throw satchel charge
#define SND_SATCHEL_THROW3            5602    //Throw satchel charge

#define SND_CROUPIERM_LINE1           5800    //Croupier (Male): "10 or 20."
#define SND_CROUPIERM_LINE2           5801    //Croupier (Male): "2 or 12."
#define SND_CROUPIERM_LINE3           5802    //Croupier (Male): "3 or 13."
#define SND_CROUPIERM_LINE4           5803    //Croupier (Male): "4 or 14."
#define SND_CROUPIERM_LINE5           5804    //Croupier (Male): "5 or 15."
#define SND_CROUPIERM_LINE6           5805    //Croupier (Male): "6 or 16."
#define SND_CROUPIERM_LINE7           5806    //Croupier (Male): "7 or 17."
#define SND_CROUPIERM_LINE8           5807    //Croupier (Male): "8 or 18."
#define SND_CROUPIERM_LINE9           5808    //Croupier (Male): "9 or 19."
#define SND_CROUPIERM_LINE10          5809    //Croupier (Male): "Place your bets, sir."
#define SND_CROUPIERM_LINE11          5810    //Croupier (Male): "Please place your bet."
#define SND_CROUPIERM_LINE12          5811    //Croupier (Male): "Blackjack!"
#define SND_CROUPIERM_LINE13          5812    //Croupier (Male): "Blackjack! House loses."
#define SND_CROUPIERM_LINE14          5813    //Croupier (Male): "You're bust, sir."
#define SND_CROUPIERM_LINE15          5814    //Croupier (Male): "Your hand is dead, sir."
#define SND_CROUPIERM_LINE16          5815    //Croupier (Male): "Push."
#define SND_CROUPIERM_LINE17          5816    //Croupier (Male): "No winner."
#define SND_CROUPIERM_LINE18          5817    //Croupier (Male): "Sorry sir, dealer wins!"
#define SND_CROUPIERM_LINE19          5818    //Croupier (Male): "Dealer wins!"
#define SND_CROUPIERM_LINE20          5819    //Croupier (Male): "House wins."
#define SND_CROUPIERM_LINE21          5820    //Croupier (Male): "The house is willing to extend an offer of credit, sir."
#define SND_CROUPIERM_LINE22          5821    //Croupier (Male): "The house is offering you credit, sir."
#define SND_CROUPIERM_LINE23          5822    //Croupier (Male): "You may accept an offer of credit from the house, sir."
#define SND_CROUPIERM_LINE24          5823    //Croupier (Male): "I'm sorry sir, you don't have the funds."
#define SND_CROUPIERM_LINE25          5824    //Croupier (Male): "You do not have enough to cover your bet, sir."
#define SND_CROUPIERM_LINE26          5825    //Croupier (Male): "If sir is going to gamble, sir must have enough cash."
#define SND_CROUPIERM_LINE27          5826    //Croupier (Male): "No more bets please."
#define SND_CROUPIERM_LINE28          5827    //Croupier (Male): "Closed to bets, ladies and gentlemen."
#define SND_CROUPIERM_LINE29          5828    //Croupier (Male): "No more bets."
#define SND_CROUPIERM_LINE30          5829    //Croupier (Male): "10."
#define SND_CROUPIERM_LINE31          5830    //Croupier (Male): "11."
#define SND_CROUPIERM_LINE32          5831    //Croupier (Male): "12."
#define SND_CROUPIERM_LINE33          5832    //Croupier (Male): "13."
#define SND_CROUPIERM_LINE34          5833    //Croupier (Male): "14."
#define SND_CROUPIERM_LINE35          5834    //Croupier (Male): "15."
#define SND_CROUPIERM_LINE36          5835    //Croupier (Male): "16."
#define SND_CROUPIERM_LINE37          5836    //Croupier (Male): "17."
#define SND_CROUPIERM_LINE38          5837    //Croupier (Male): "18."
#define SND_CROUPIERM_LINE39          5838    //Croupier (Male): "19."
#define SND_CROUPIERM_LINE40          5839    //Croupier (Male): "20!"
#define SND_CROUPIERM_LINE41          5840    //Croupier (Male): "21!"
#define SND_CROUPIERM_LINE42          5841    //Croupier (Male): "4."
#define SND_CROUPIERM_LINE43          5842    //Croupier (Male): "5."
#define SND_CROUPIERM_LINE44          5843    //Croupier (Male): "6."
#define SND_CROUPIERM_LINE45          5844    //Croupier (Male): "7."
#define SND_CROUPIERM_LINE46          5845    //Croupier (Male): "8."
#define SND_CROUPIERM_LINE47          5846    //Croupier (Male): "9."
#define SND_CROUPIERM_LINE48          5847    //Croupier (Male): "You win!"
#define SND_CROUPIERM_LINE49          5848    //Croupier (Male): "You win sir, well played."
#define SND_CROUPIERM_LINE50          5849    //Croupier (Male): "Sir is lucky today!"
#define SND_CROUPIERM_LINE51          5850    //Croupier (Male): "Regulars only at this table, sir."
#define SND_CROUPIERM_LINE52          5851    //Croupier (Male): "Only regulars at this table, sir."
#define SND_CROUPIERM_LINE53          5852    //Croupier (Male): "Thank you sir, have a nice day."
#define SND_CROUPIERM_LINE54          5853    //Croupier (Male): "Thank you for playing sir."
#define SND_CROUPIERM_LINE55          5854    //Croupier (Male): "Luck is with sir today."
#define SND_CROUPIERM_LINE56          5855    //Croupier (Male): "Congratulations on your luck, sir."
#define SND_CROUPIERM_LINE57          5856    //Croupier (Male): "Sir is on a winning streak."

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
#define SND_LIGHTS_SHUTOFF            6402    //Lights shut off

#define SND_ROOF_COLLAPSE             6600    //Roof collapsing
#define SND_WALL_COLLAPSE1            6601    //Wall collapsing
#define SND_WALL_COLLAPSE2            6602    //Wall collapsing
#define SND_WOODEN_DOOR_BREACH        6603    //Breaching wooden doors

#define SND_CARGOPLANE_DOOR_LOOP      6800    //Cargo plane door opening/closing loop
#define SND_CARGOPLANE_DOOR_START     6801    //Cargo plane door: start
#define SND_CARGOPLANE_DOOR_STOP      6802    //Cargo plane door: stop

#define SND_JOHNNY_LINE_1             7000    //Johnny Sindacco: "Hey, hey, who the fuck - who are you? Untie me, huh?"
#define SND_JOHNNY_LINE_2             7001    //Johnny Sindacco: "I've been here for fucking ages, I can't feel my hands no more!"
#define SND_CJ_LINE_1                 7002    //CJ: "You know what? I think we're gonna take a little drive."
#define SND_JOHNNY_LINE_3             7003    //Johnny Sindacco: "What are you, fucking stupid? I'm not joking here - untie me, motherfucker."
#define SND_CJ_LINE_2                 7004    //CJ: "No, I think I'm gonna leave you right where you are."
#define SND_JOHNNY_LINE_4             7005    //Johnny Sindacco: "You got any idea in that pea brain head of yours who the fuck I am?
#define SND_CJ_LINE_3                 7006    //CJ: "No, but I think I'm going to find out."
#define SND_JOHNNY_LINE_5             7007    //Johnny Sindacco: "You, you you your fu--, you're crazy! You're a dead man! You're a dead man!"
#define SND_CJ_LINE_4                 7008    //CJ: "You ain't in no position to make no threats."
#define SND_CJ_LINE_5                 7009    //CJ: "Who are you?"
#define SND_JOHNNY_LINE_6             7010    //Johnny Sindacco: "Fuck you man, you know who I am!"
#define SND_CJ_LINE_6                 7011    //CJ: "Have it your way."
#define SND_JOHNNY_LINE_7             7012    //Johnny Sindacco: "You are messing with the wrong people!"
#define SND_JOHNNY_LINE_8             7013    //Johnny Sindacco: "You are so dead, do you hear me? DEAD! D-E-A-D pal!"
#define SND_JOHNNY_LINE_9             7014    //Johnny Sindacco: "You've signed your own death warrant! Ha ha ha!"
#define SND_JOHNNY_LINE_10            7015    //Johnny Sindacco: "You think this is scaring me, huh?"
#define SND_JOHNNY_LINE_11            7016    //Johnny Sindacco: "Takes a little more than a drive to get me chirpin' pal!"
#define SND_JOHNNY_LINE_12            7017    //Johnny Sindacco: "Hey, l-look, uh, w-we can come to some arrangement, okay?"
#define SND_JOHNNY_LINE_13            7018    //Johnny Sindacco: "OK, I can see you're serious!"
#define SND_JOHNNY_LINE_14            7019    //Johnny Sindacco: "Hey look pal, this ain't funny anymore."
#define SND_JOHNNY_LINE_15            7020    //Johnny Sindacco: "Hey! Stop this insanity right now!"
#define SND_JOHNNY_LINE_16            7021    //Johnny Sindacco: "Oh my God, you're nuts!"
#define SND_JOHNNY_LINE_17            7022    //Johnny Sindacco: "Aargh! Oh, I don't wanna die, c'mon I don't wanna die!"
#define SND_JOHNNY_LINE_18            7023    //Johnny Sindacco: "FUCK YOU! FUCK YOU-HOO-hooooo!"
#define SND_JOHNNY_LINE_19            7024    //Johnny Sindacco: "Oh my God, I just shit myself!"}
#define SND_JOHNNY_LINE_20            7025    //Johnny Sindacco: "Oh Mother Mary, I've had enough, oh God..."
#define SND_JOHNNY_LINE_21            7026    //Johnny Sindacco: "Alright, alright! You made your point, please, no more! NO MORE!"
#define SND_JOHNNY_LINE_22            7027    //Johnny Sindacco: "Oh man, this is too faaaaast!"
#define SND_JOHNNY_LINE_23            7028    //Johnny Sindacco: "Oh! Slow down, slow down for Godsakes!"
#define SND_JOHNNY_LINE_24            7029    //Johnny Sindacco: "Oh, this is too fast! TOO FAAAAAAST!"
#define SND_JOHNNY_LINE_25            7030    //Johnny Sindacco: "Whoooooooa! Holy fuck!"
#define SND_JOHNNY_LINE_26            7031    //Johnny Sindacco: "Whoooa, geez no!"
#define SND_JOHNNY_LINE_27            7032    //Johnny Sindacco: "Oh Christ! Ooooooooh!"
#define SND_JOHNNY_LINE_28            7033    //Johnny Sindacco: "Oh my God, oh-my-God!"
#define SND_JOHNNY_LINE_29            7034    //Johnny Sindacco: "Hey, whatcha doing?"
#define SND_JOHNNY_LINE_30            7035    //Johnny Sindacco: "Hey, you think you're smart, but you're not, you're not!"
#define SND_JOHNNY_LINE_31            7036    //Johnny Sindacco: "Ha, this shit don't scare me asshole!"
#define SND_JOHNNY_LINE_32            7037    //Johnny Sindacco: "Whadaya doin' now?"
#define SND_JOHNNY_LINE_33            7038    //Johnny Sindacco: "Somebody, anybody, HELP!"
#define SND_JOHNNY_LINE_34            7039    //Johnny Sindacco: "Hey, watch the pedestrians, pal!"
#define SND_JOHNNY_LINE_35            7040    //Johnny Sindacco: "Jesus Christ that was close!"
#define SND_JOHNNY_LINE_36            7041    //Johnny Sindacco: "What are you trying to fuck both of us?"
#define SND_JOHNNY_LINE_37            7042    //Johnny Sindacco: "Mother Mary, that was lucky!"
#define SND_JOHNNY_LINE_38            7043    //Johnny Sindacco: "You're gonna kill us both! Oh God, I'm still alive!"
#define SND_JOHNNY_LINE_39            7044    //Johnny Sindacco: "Thank you! Thank God! Thank God!"
#define SND_JOHNNY_LINE_40            7045    //Johnny Sindacco: "Jesus! JESUS!"
#define SND_JOHNNY_LINE_41            7046    //Johnny Sindacco: "What are you trying to hit things?! You're crazy!"
#define SND_JOHNNY_LINE_42            7047    //Johnny Sindacco: "Oh... jesus... fuck you..."
#define SND_JOHNNY_LINE_43            7048    //Johnny Sindacco: "Aarrgghh!"
#define SND_JOHNNY_LINE_44            7049    //Johnny Sindacco: "Oh mama, come for me! Ohhhh."
#define SND_JOHNNY_LINE_45            7050    //Johnny Sindacco: "Holy fuck! My legs! They're on fire!"
#define SND_JOHNNY_LINE_46            7051    //Johnny Sindacco: "Shit! My balls! MY BALLS!"
#define SND_JOHNNY_LINE_47            7052    //Johnny Sindacco: "Oh mama! I'm on fire!"
#define SND_JOHNNY_LINE_48            7053    //Johnny Sindacco: "FIRE! FIRE!"
#define SND_JOHNNY_LINE_49            7054    //Johnny Sindacco: "MOTHERFUCKER!"
#define SND_JOHNNY_LINE_50            7055    //Johnny Sindacco: "The family will make you pay for this!"
#define SND_CJ_LINE_7                 7056    //CJ: "Which family?"
#define SND_JOHNNY_LINE_51            7057    //Johnny Sindacco: "The Sindacco Family, ya idiot!"
#define SND_CJ_LINE_8                 7058    //CJ: "That's all I wanted to hear!"
#define SND_JOHNNY_LINE_52            7059    //Johnny Sindacco: "What the-? Oh shit..."
#define SND_JOHNNY_LINE_53            7060    //Johnny Sindacco: "Oh God, thank God..."
#define SND_JOHNNY_LINE_54            7061    //Johnny Sindacco: "Though I walk through the shadow of the valley of death..."
#define SND_JOHNNY_LINE_55            7062    //Johnny Sindacco: "Oh, momma... momma..."
#define SND_JOHNNY_LINE_56            7063    //Johnny Sindacco: "(whimpering)"
#define SND_JOHNNY_LINE_57            7064    //Johnny Sindacco: "I've lead such a sinful life, I'm sorry, so sorry..."
#define SND_TRIAD_LINE_1              7065    //Triad Gang Member: "CJ, ha, I think he messed himself."
#define SND_CJ_LINE_9                 7066    //CJ: "I guess he willing to talk now!"

#define SND_CJ_LINE_10                7200    //CJ: "Alright, you guys better get out of Las Venturas, fast!"
#define SND_CJ_LINE_11                7201    //CJ: "I'll be in touch."
#define SND_MACCER_LINE_1             7202    //Maccer: "What about your backup, man, will you be a'right without us?"
#define SND_ROSENBERG_LINE_1          7203    //Rosenberg: "Of course he will, you fucking moron, come on!"
#define SND_CJ_LINE_12                7204    //CJ: "This is private flight CJ101 on approach to Liberty, over."
#define SND_ATC_LINE_1                7205    //Air Traffic Control: "Flight CJ101, we have you on our scope."
#define SND_ATC_LINE_2                7206    //Air Traffic Control: "Stay on current heading and await final approach instructions."
#define SND_ATC_LINE_3                7207    //Air Traffic Control: "Welcome to Liberty City, CJ101."
#define SND_FORELLI_LINE_1            7208    //Forelli Guard: "Private function, invitation only!"
#define SND_CJ_LINE_13                7209    //CJ: "Oh yeah? Well Mr. Leone says otherwise!"
#define SND_CJ_LINE_14                7210    //CJ: "Salvatore sends his regards!"
#define SND_CJ_LINE_15                7211    //CJ: "The Forellis are finished in this town!"
#define SND_CJ_LINE_16                7212    //CJ: "I'm here to spill pasta sauce!"
#define SND_CJ_LINE_17                7213    //CJ: "Marco Forelli, I'm here for you!"
#define SND_CJ_LINE_18                7214    //CJ: "Marco, I'm coming for you!"
#define SND_CJ_LINE_19                7215    //CJ: "Mafia assholes!"
#define SND_CJ_LINE_20                7216    //CJ: "I'm your worst egg plant nightmare!"
#define SND_ATC_LINE_4                7217    //Air Traffic Control: "Flight CJ101, you are cleared for take-off!"
#define SND_CJ_LINE_21                7218    //CJ: "This is flight CJ101 out of Liberty City..."
#define SND_CJ_LINE_22                7219    //CJ: "...requesting final approach to Las Venturas International, over."
#define SND_ATC_LINE_5                7220    //Air Traffic Control: "Flight CJ101, you are clear for landing on runway 3."
#define SND_ATC_LINE_6                7221    //Air Traffic Control: "Holy fuck, who's flying that thing?"
#define SND_ATC_LINE_7                7222    //Air Traffic Control: "That guy's a maniac!"
#define SND_ATC_LINE_8                7223    //Air Traffic Control: "He's going to hit us!"
#define SND_ATC_LINE_9                7224    //Air Traffic Control: "Oh my god he's going to loose it!"
#define SND_ATC_LINE_10               7225    //Air Traffic Control: "Prep the emergency crews!"
#define SND_ATC_LINE_11               7226    //Air Traffic Control: "Prepare the fire crews for a crash landing!"
#define SND_CJ_LINE_23                7227    //CJ: "Alright, you guys better get out of Las Venturas fast!"
#define SND_CJ_LINE_24                7228    //CJ: "I'll be in touch."
#define SND_CJ_LINE_25                7229    //CJ: "This is private flight CJ-101 on approuch to Liberty, over."
#define SND_CJ_LINE_26                7230    //CJ: "Oh yeah? Well Mr. Leone says otherwise!"
#define SND_CJ_LINE_27                7231    //CJ: "Salvatore sends his regards!"
#define SND_CJ_LINE_28                7232    //CJ: "The Forellis are finished in this town!"
#define SND_CJ_LINE_29                7233    //CJ: "I'm here to spill pasta sauce!"
#define SND_CJ_LINE_30                7234    //CJ: "Marco Forelli, I'm here for you!"
#define SND_CJ_LINE_31                7235    //CJ: "Marco, I'm coming for you!"
#define SND_CJ_LINE_32                7236    //CJ: "Mafia assholes!"
#define SND_CJ_LINE_33                7237    //CJ: "I'm your worst eggplant nightmare!"
#define SND_CJ_LINE_34                7238    //CJ: "This is flight CJ101 out of Liberty City..."
#define SND_CJ_LINE_35                7239    //CJ: "...requesting final approach to Las Venturas International, over."

#define SND_QUARRYWORKER_LINE_1       7400    //Quarry Worker: "Hey you can't come down here!"
#define SND_QUARRYWORKER_LINE_2       7401    //Quarry Worker: "Where's your safety gear?"
#define SND_QUARRYWORKER_LINE_3       7402    //Quarry Worker: "You don't have clearance for this area!"
#define SND_QUARRYWORKER_LINE_4       7403    //Quarry Worker: "Get away from that dynamite!"
#define SND_QUARRYWORKER_LINE_5       7404    //Quarry Worker: "Hey, that's dangerous!"
#define SND_QUARRYWORKER_LINE_6       7405    //Quarry Worker: "Stay away from that stuff!"
#define SND_QUARRYWORKER_LINE_7       7406    //Quarry Worker: "Meet my shovel asshole!"
#define SND_QUARRYWORKER_LINE_8       7407    //Quarry Worker: "He's gonna blow us all to hell!"
#define SND_QUARRYWORKER_LINE_9       7408    //Quarry Worker: "Dude, somebody stop that guy!"
#define SND_QUARRYWORKER_LINE_10      7409    //Quarry Worker: "Who's this asshole?"
#define SND_QUARRYWORKER_LINE_11      7410    //Quarry Worker: "Someone call security!"
#define SND_QUARRYWORKER_LINE_12      7411    //Quarry Worker: "What do you think you're doing?"
#define SND_QUARRYWORKER_LINE_13      7412    //Quarry Worker: "Someone's stealing dynamite, call security!"
#define SND_QUARRYWORKER_LINE_14      7413    //Quarry Worker: "He's after the dynamite!"
#define SND_QUARRYWORKER_LINE_15      7414    //Quarry Worker: "He's stealing the demolition charges!"
#define SND_QUARRYWORKER_LINE_16      7415    //Quarry Worker: "ALL PERSONNEL CLEAR!"
#define SND_QUARRYWORKER_LINE_17      7416    //Quarry Worker: "FIVE SECONDS TO DETONATION!"
#define SND_QUARRYWORKER_LINE_18      7417    //Quarry Worker: "THREE..."
#define SND_QUARRYWORKER_LINE_19      7418    //Quarry Worker: "TWO..."
#define SND_QUARRYWORKER_LINE_20      7419    //Quarry Worker: "ONE..."
#define SND_CJ_LINE_36                7420    //CJ: "Delivery for Woozie."
#define SND_CJ_LINE_37                7421    //CJ: "Hey, you be careful with that."

#define SND_SINDACCO_LINE_1           7600    //Sindacco Gang Member: "Hey, who's this character? He looks like a cop to me."
#define SND_SINDACCO_LINE_2           7601    //Sindacco Gang Member: "We better go warn the boss."
#define SND_SINDACCO_LINE_3           7602    //Sindacco Gang Member: "Hey, watch the car, I just got this baby detailed!"
#define SND_SINDACCO_LINE_4           7603    //Sindacco Gang Boss: "What? He must be a fed! Let's give him a proper Sindacco welcome!"
#define SND_SINDACCO_LINE_5           7604    //Sindacco Gang Member: "Hey, what's going on?"
#define SND_SINDACCO_LINE_6           7605    //Sindacco Gang Member: "Someone's got a fucking deathwish if they're starting trouble 'round here!"
#define SND_SINDACCO_LINE_7           7606    //Sindacco Gang Boss: "Get the boys ready! Production line's gotta keep rolling!"
#define SND_SINDACCO_LINE_8           7607    //Sindacco Gang Member: "Hey, who's this prick?"
#define SND_SINDACCO_LINE_9           7608    //Sindacco Gang Member: "Somebody take care of this joker!"
#define SND_TRIAD_LINE_2              7609    //Triad Gang Member: "Hey, Carl, how'd it go?"
#define SND_CJ_LINE_38                7610    //CJ: "Tell Woozie we'll be getting no more trouble with them..."
#define SND_CJ_LINE_39                7611    //CJ: "...counterfeit chips"
#define SND_SINDACCO_LINE_10          7612    //Sindacco Gang Member: "Aye Johnny, how you feelin'?"

#define SND_MACCER_LINE_2             7800    //Maccer: "Me legs are fucked and me head's fuckin' poundin'!"
#define SND_KENT_LINE_1               7801    //Kent Paul: "We can't walk back, son, look at the state of us."
#define SND_MACCER_LINE_3             7802    //Maccer: "Your turn in the boot, kid!"
#define SND_MACCER_LINE_4             7803    //Maccer: "Oooo, this is comfy!"
#define SND_KENT_LINE_2               7804    //Kent Paul: "I'm the manager, I get the front seat!"
#define SND_KENT_LINE_3               7805    //Kent Paul: "Oi! That's my seat!"
#define SND_KENT_LINE_4               7806    //Kent Paul: "Leave him, he'll be fine!"
#define SND_KENT_LINE_5               7807    //Kent Paul: "We'll come back for you, I promise!"
#define SND_MACCER_LINE_5             7808    //Maccer: "Oh no you don't, I remember Preston Guild Hall!"
#define SND_KENT_LINE_6               7809    //Kent Paul: "I'm the manager, what I say, goes!"
#define SND_KENT_LINE_7               7810    //Kent Paul: "Don't make me slap you, sunshine!"
#define SND_MACCER_LINE_6             7811    //Maccer: "Don't make me sack you, P!"
#define SND_MACCER_LINE_7             7812    //Maccer: "You're the manager, so this is all your fault!"
#define SND_CJ_LINE_40                7813    //CJ: "So where's the rest of the band, guys?"
#define SND_KENT_LINE_8               7814    //Kent Paul: "Maccer, where are the boys?"
#define SND_MACCER_LINE_8             7815    //Maccer: "I don't fuckin' know, do I."
#define SND_MACCER_LINE_9             7816    //Maccer: "I remember snakes, lots of snakes..."
#define SND_CJ_LINE_41                7817    //CJ: "It's a snake farm not too far from here, we can go check it out."
#define SND_MACCER_LINE_10            7818    //Maccer: "I don't recognize this part of Manchester, kiddo. Are we in Chorlton?"
#define SND_KENT_LINE_9               7819    //Kent Paul: "How many times do I have to tell you? We're in America."
#define SND_MACCER_LINE_11            7820    //Maccer: "America? Wait 'til I tell me ma about this!"
#define SND_KENT_LINE_10              7821    //Kent Paul: "He's like a fucking stuck record. He'll ask about Las Venturas next."
#define SND_MACCER_LINE_12            7822    //Maccer: "Las Venturas? Always wanted to go there, great tits."
#define SND_KENT_LINE_11              7823    //Kent Paul: "Don't start, not in this confined space."
#define SND_MACCER_LINE_13            7824    //Maccer: "Bouncy, wobbling, massive, great tits!"
#define SND_KENT_LINE_12              7825    //Kent Paul: "Leave yourself alone, for crying out loud!"
#define SND_CJ_LINE_42                7826    //CJ: "Here we are, look familiar?"
#define SND_MACCER_LINE_14            7827    //Maccer: "Looks just like Salford to me..."
#define SND_KENT_LINE_13              7828    //Kent Paul: "What are you talking about?"
#define SND_HILLBILLY_LINE_1          7829    //Hillbilly: "Take a gander at 'em fellas. Is that 'em?"
#define SND_HILLBILLY_LINE_2          7830    //Hillbilly: "That there city boy has gone and been with my prize hog!"
#define SND_HILLBILLY_LINE_3          7831    //Hillbilly: "Now I don't even get no sugar from her!"
#define SND_HILLBILLY_LINE_4          7832    //Hillbilly: "And that one done screwed my sis'!"
#define SND_HILLBILLY_LINE_5          7833    //Hillbilly: "I've had a terr'ble aching in my grinds ever since!
#define SND_HILLBILLY_LINE_6          7834    //Hillbilly: "I'm gonna slap you silly for giving me and my fella the red bumpies!"
#define SND_HILLBILLY_LINE_7          7835    //Hillbilly: "What'n tarnation?"
#define SND_HILLBILLY_LINE_8          7836    //Hillbilly: "I'm a fixing to give ya a whoopin' for what you gone and done to my young'uns!"
#define SND_KENT_LINE_14              7837    //Kent Paul: "Oh, no! Run like fuck!"
#define SND_CJ_LINE_43                7838    //CJ: "Everybody in the car!"
#define SND_MACCER_LINE_15            7839    //Maccer: "Wait, kiddo, wait!"
#define SND_MACCER_LINE_16            7840    //Maccer: "I want to come too!"
#define SND_KENT_LINE_15              7841    //Kent Paul: "Oi, wait for me, sunshine!"
#define SND_KENT_LINE_16              7842    //Kent Paul: "Don't leave me in their evil clutches!"
#define SND_CJ_LINE_44                7843    //CJ: "I think we lost 'em."
#define SND_CJ_LINE_45                7844    //CJ: "I can't see those snake farmers no more!"
#define SND_CJ_LINE_46                7845    //CJ: "Shut up, you two!"
#define SND_CJ_LINE_47                7846    //CJ: "Quit squabbling!"
#define SND_CJ_LINE_48                7847    //CJ: "Seems you boys had a good time."
#define SND_MACCER_LINE_17            7848    //Maccer: "Hey, what about the band?"
#define SND_KENT_LINE_17              7849    //Kent Paul: "We'll just have to pray they've made it to civilization."
#define SND_KENT_LINE_18              7850    //Kent Paul: "Keyboardists and drummers are ten-a-penny anyway."
#define SND_MACCER_LINE_18            7851    //Maccer: "Hey, man, I really need to piss!"
#define SND_KENT_LINE_19              7852    //Kent Paul: "Oh fuck, we're screwed!"
#define SND_CJ_LINE_49                7853    //CJ: "Hey, can't it wait?"
#define SND_MACCER_LINE_19            7854    //Maccer: "I'm about to burst man!"
#define SND_KENT_LINE_20              7855    //Kent Paul: "You've gotta pull over, he's got a condition - he's priapic. It'll go everywhere!"
#define SND_MACCER_LINE_20            7856    //Maccer: "I can't hold it any longer!"
#define SND_KENT_LINE_21              7857    //Kent Paul: "Oh, fuck! It's in me eye!"
#define SND_CJ_LINE_50                7858    //CJ: "Hey, c'mon, man!"
#define SND_KENT_LINE_22              7859    //Kent Paul: "Argh! Stop it!"
#define SND_KENT_LINE_23              7860    //Kent Paul: "Point it out the fucking window, will you?"
#define SND_MACCER_LINE_21            7861    //Maccer: "Oh fuck me, that is so good."
#define SND_KENT_LINE_24              7862    //Kent Paul: "Oh, fuck, now I've got the shakes."
#define SND_MACCER_LINE_22            7863    //Maccer: "You look as pale as a drowned baby, man!"
#define SND_KENT_LINE_25              7864    //Kent Paul: "Oh God, I think I'm going to chuck!"
#define SND_MACCER_LINE_23            7865    //Maccer: "P. what you need is some food down ya."
#define SND_KENT_LINE_26              7866    //Kent Paul: "(Paul nearly vomits)"
#define SND_MACCER_LINE_24            7867    //Maccer: "A fried egg sanger with mayonnaise will sort it."
#define SND_KENT_LINE_27              7868    //Kent Paul: "(Paul nearly vomits again)"
#define SND_MACCER_LINE_25            7869    //Maccer: "Or what about a pickled egg?"
#define SND_KENT_LINE_28              7870    //Kent Paul: "Pull over, NOW!"
#define SND_KENT_LINE_29              7871    //Kent Paul: "Shhi- huuuurghhh -hit!"
#define SND_KENT_LINE_30              7872    //Kent Paul: "I've go- huuurrrgghh!"
#define SND_KENT_LINE_31              7873    //Kent Paul: "Got the- hhuurrgghh!"
#define SND_KENT_LINE_32              7874    //Kent Paul: "Dry- hurgh!"
#define SND_KENT_LINE_33              7875    //Kent Paul: "Dry- hurgh!"
#define SND_KENT_LINE_34              7876    //Kent Paul: "Dry heavies... Oh..."
#define SND_KENT_LINE_35              7877    //Kent Paul: "Oh, I think it... I think it passed."
#define SND_MACCER_LINE_26            7878    //Maccer: "How about a pint of cod liver oil, that'll well sort ya."
#define SND_KENT_LINE_36              7879    //Kent Paul: "(Paul vomiting violently)"
#define SND_CJ_LINE_51                7880    //CJ: "Leave him alone, man!"
#define SND_MACCER_LINE_27            7881    //Maccer: "Hey hey, the good doctor was just tryin' to help!"
#define SND_KENT_LINE_37              7882    //Kent Paul: "Fuh-huh-Fuck off!"
#define SND_MACCER_LINE_28            7883    //Maccer: "What kind of tits does this Rosie have?"
#define SND_MACCER_LINE_29            7884    //Maccer: "Big floppy sausage tits?"
#define SND_MACCER_LINE_30            7885    //Maccer: "Empty saddlebags? Or bee stings?"
#define SND_KENT_LINE_38              7886    //Kent Paul: "Rosie's a man!"
#define SND_KENT_LINE_39              7887    //Kent Paul: "And stop touching yourself!"
#define SND_MACCER_LINE_31            7888    //Maccer: "It's just for comfort, Pablo. This is a stressful situation, man."
#define SND_KENT_LINE_40              7889    //Kent Paul: "You're fucking telling me it is!"
#define SND_CJ_LINE_52                7890    //CJ: "Aw, can it you two!"
#define SND_MACCER_LINE_32            7891    //Maccer: "Hey, he started it!"
#define SND_CJ_LINE_53                7892    //CJ: "Which casino is it?"
#define SND_KENT_LINE_41              7893    //Kent Paul: "It's called Caligula's. It's on the strip somewhere, I think."
#define SND_CJ_LINE_54                7894    //CJ: "Shit! Here come them snake farmers!"
#define SND_CJ_LINE_55                7895    //CJ: "Alright, I've had enough. Let's finish this!"
#define SND_MACCER_LINE_33            7896    //Maccer: "Oh, I'm gonna grab some big tits, man!"
#define SND_KENT_LINE_42              7897    //Kent Paul: "Oh, bollox. In for a penny, in for a pound."
#define SND_KENT_LINE_43              7898    //Kent Paul: "Come on then, let's go in and see Rosie."
#define SND_MACCER_LINE_34            7899    //Maccer: "What about your backup, man? Will you be alright without us?"
#define SND_CJ_LINE_56                7900    //CJ: "Hey Woozie."
#define SND_CJ_LINE_57                7901    //CJ: "I think I found a way to scope Caligula's without causing too much suspicion."
#define SND_CJ_LINE_58                7902    //CJ: "We can talk later."

#define SND_CJ_LINE_59                8000    //CJ: "So here I am, about to try and rescue some guy I've scared half to death."
#define SND_CJ_LINE_60                8001    //CJ: If he wake up through all of this, I'm screwed..."
#define SND_HOSPITALWORKER_LINE_1     8002    //Hospital Worker: "Hello, Sir, can I help you?"
#define SND_CJ_LINE_61                8003    //CJ: "Yeah, I'm here to pick up Mr. Sindacco."
#define SND_HOSPITALWORKER_LINE_2     8004    //Hospital Worker: "Mr. Sindacco? There must be some mistake."
#define SND_HOSPITALWORKER_LINE_3     8005    //Hospital Worker: "An ambulance just picked him up."
#define SND_CJ_LINE_62                8006    //CJ: "Oh, OK. Thank you for your help."
#define SND_JOHNNY_LINE_58            8007    //Johnny Sindacco: "Hey mother, mother is that you?"
#define SND_JOHNNY_LINE_59            8008    //Johnny Sindacco: "I see the light!"
#define SND_JOHNNY_LINE_60            8009    //Johnny Sindacco: "Uggh, never...never ever gonna talk like that again."
#define SND_JOHNNY_LINE_61            8010    //Johnny Sindacco: "Fuck you, fuck you! Fuck fuck you!"
#define SND_JOHNNY_LINE_62            8011    //Johnny Sindacco: "Oh my God, where am I?"
#define SND_JOHNNY_LINE_63            8012    //Johnny Sindacco: "Nurse, hey nurse!"
#define SND_JOHNNY_LINE_64            8013    //Johnny Sindacco: "I need my bag emptied!"
#define SND_SINDACCO_LINE_11          8014    //Sindacco Gang Member: "Hey, Johnny, how you feelin'?"
#define SND_SINDACCO_LINE_12          8015    //Sindacco Gang Member: "I didn't think he was going to be discharged 'til tomorrow!"
#define SND_FORELLI_LINE_2            8016    //Forelli Gang Member: "Alright, who's messing with Forelli business?"
#define SND_FORELLI_LINE_3            8017    //Forelli Gang Member: "Yeah, who's got a death wish?"

#define SND_UNKNOWN_LINE_1            39000   //"What would your mother think?"
#define SND_UNKNOWN_LINE_2            39001   //"You're as bad as them"
#define SND_UNKNOWN_LINE_3            39002   //"Filth like you always have to pay for sex!"

#define SND_UNKNOWN_LINE_4            39047   //"Where's my cellphone!"

#define SND_UNKNOWN_LINE_5            39051   //"That's right put your hands there."
#define SND_UNKNOWN_LINE_6            39052   //"Holy fuck I've got my phone."

//#define SND_CJ_LINE_1                 39074   //CJ: "I'm listening, honest..."

//#define SND_CJ_LINE_2                 39076   //CJ: "Aha, real interesting."

#define SND_UNKNOWN_LINE_7            50002   //"Just Try Punk! Just Try It!"

#define SND_UNKNOWN_LINE_8            50004   //"You're My World Now!"

#define SND_UNKNOWN_LINE_9            50050   //"Tell My Wife I Love Her."
#define SND_UNKNOWN_LINE_10           50051   //"I'm going in."
#define SND_UNKNOWN_LINE_11           50052   //"What The Hell!"
#define SND_UNKNOWN_LINE_12           50053   //"Uh, My Coffee."

#define SND_UNKNOWN_LINE_13           50094   //"Wait Wait, think about what you're doing."
