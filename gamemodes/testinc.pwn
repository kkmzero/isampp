#include <a_samp>
#include <i_sampp\i_colorlist>
#include <i_sampp\i_pickupids>
#include <i_sampp\i_vehids>
#include <i_sampp\i_weaponids>

#if defined FILTERSCRIPT

public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print(" SA-MP Includes Library+ Test GameMode");
	print("--------------------------------------\n");
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

#else

main()
{
	print("\n----------------------------------");
	print(" SA-MP Includes Library+ Test GameMode");
	print("----------------------------------\n");
}

#endif

new pickupWeapBrassKnuckles;
new pickupWeapGolfClub;
new pickupWeapKnife;
new pickupWeapBaseballBat;
new pickupWeapNightStick;
new pickupWeapShovel;
new pickupWeapPoolCue;
new pickupWeapKatana;
new pickupWeapChainsaw;
new pickupWeapRdildo;
new pickupWeapWdildo;
new pickupWeapVibrator;
new pickupWeapVibrator2;
new pickupWeapFlowers;
new pickupWeapCane;
new pickupWeapGrenade;
new pickupWeapTeargas;
new pickupWeapMolotov;
new pickupWeapSatchel;
new pickupWeapPistol;
new pickupWeapSilencedPistol;
new pickupWeapDeagle;
new pickupWeapShotgun;
new pickupWeapSawedoff;
new pickupWeapAutoshotgun;
new pickupWeapMicroUzi;
new pickupWeapMP5;
new pickupWeapTec9;
new pickupWeapAK47;
new pickupWeapM4;
new pickupWeapRifle;
new pickupWeapSniperRifle;
new pickupWeapRPG;
new pickupWeapHeatRPG;
new pickupWeapFlamethrower;
new pickupWeapMinigun;
new pickupWeapDetonator;
new pickupWeapSpray;
new pickupWeapExtinguisher;
new pickupWeapCamera;
new pickupWeapNGoggles;
new pickupWeapTGoggles;
new pickupWeapParachute;

public OnGameModeInit()
{
	SetWorldTime(12);
	// Don't use these lines if it's a filterscript
	SetGameModeText("SA-MP Includes Library+ Test GameMode");
	AddPlayerClass(0, 441.7056,2500.1367,17.7823,276.6780, 0, 0, 0, 0, 0, 0);
	
	//PICKUPS - ROW 1
	pickupWeapRdildo = CreatePickup(PICKUP_WEAP_RDILDO, 2, 425.5590,2480.2830,16.4844, -1);
	pickupWeapWdildo = CreatePickup(PICKUP_WEAP_WDILDO, 2, 420.5590,2480.2830,16.4844, -1);
	pickupWeapVibrator = CreatePickup(PICKUP_WEAP_VIBRATOR, 2, 415.5590,2480.2830,16.4844, -1);
	pickupWeapVibrator2 = CreatePickup(PICKUP_WEAP_VIBRATOR2, 2, 410.5590,2480.2830,16.4844, -1);
	pickupWeapFlowers = CreatePickup(PICKUP_WEAP_FLOWERS, 2, 405.5590,2480.2830,16.4844, -1);
	pickupWeapCane = CreatePickup(PICKUP_WEAP_CANE, 2, 400.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_PHONE, 1, 395.5590,2480.2830,16.4844, -1);
	pickupWeapBrassKnuckles = CreatePickup(PICKUP_WEAP_BRASSKNUCKLES, 2, 390.5590,2480.2830,16.4844, -1);
	pickupWeapGolfClub = CreatePickup(PICKUP_WEAP_GOLFCLUB, 2, 385.5590,2480.2830,16.4844, -1);
	pickupWeapNightStick = CreatePickup(PICKUP_WEAP_NIGHTSTICK, 2, 380.5590,2480.2830,16.4844, -1);
    pickupWeapKnife = CreatePickup(PICKUP_WEAP_KNIFE, 2, 375.5590,2480.2830,16.4844, -1);
	pickupWeapBaseballBat = CreatePickup(PICKUP_WEAP_BASEBALLBAT, 2, 370.5590,2480.2830,16.4844, -1);
	pickupWeapShovel = CreatePickup(PICKUP_WEAP_SHOVEL, 2, 365.5590,2480.2830,16.4844, -1);
	pickupWeapPoolCue = CreatePickup(PICKUP_WEAP_POOLCUE, 2, 360.5590,2480.2830,16.4844, -1);
	pickupWeapKatana = CreatePickup(PICKUP_WEAP_KATANA, 2, 355.5590,2480.2830,16.4844, -1);
	pickupWeapChainsaw = CreatePickup(PICKUP_WEAP_CHAINSAW, 2, 350.5590,2480.2830,16.4844, -1);
	pickupWeapGrenade = CreatePickup(PICKUP_WEAP_GRENADE, 2, 345.5590,2480.2830,16.4844, -1);
	pickupWeapTeargas = CreatePickup(PICKUP_WEAP_TEARGAS, 2, 340.5590,2480.2830,16.4844, -1);
	pickupWeapMolotov = CreatePickup(PICKUP_WEAP_MOLOTOV, 2, 335.5590,2480.2830,16.4844, -1);
	pickupWeapPistol = CreatePickup(PICKUP_WEAP_PISTOL, 2, 330.5590,2480.2830,16.4844, -1);
	pickupWeapSilencedPistol = CreatePickup(PICKUP_WEAP_SILENCEDPISTOL, 2, 325.5590,2480.2830,16.4844, -1);
	pickupWeapDeagle = CreatePickup(PICKUP_WEAP_DEAGLE, 2, 320.5590,2480.2830,16.4844, -1);
	pickupWeapShotgun = CreatePickup(PICKUP_WEAP_SHOTGUN, 2, 315.5590,2480.2830,16.4844, -1);
	pickupWeapSawedoff = CreatePickup(PICKUP_WEAP_SAWNOFF, 2, 310.5590,2480.2830,16.4844, -1);
	pickupWeapAutoshotgun = CreatePickup(PICKUP_WEAP_AUTOSHOTGUN, 2, 305.5590,2480.2830,16.4844, -1);
	pickupWeapMicroUzi = CreatePickup(PICKUP_WEAP_MICROUZI, 2, 300.5590,2480.2830,16.4844, -1);
	pickupWeapMP5 = CreatePickup(PICKUP_WEAP_MP5, 2, 295.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_HYDRAFLARE, 1, 290.5590,2480.2830,16.4844, -1);
	pickupWeapAK47 = CreatePickup(PICKUP_WEAP_AK47, 2, 285.5590,2480.2830,16.4844, -1);
	pickupWeapM4 = CreatePickup(PICKUP_WEAP_M4, 2, 280.5590,2480.2830,16.4844, -1);
    pickupWeapRifle = CreatePickup(PICKUP_WEAP_RIFLE, 2, 275.5590,2480.2830,16.4844, -1);
	pickupWeapSniperRifle = CreatePickup(PICKUP_WEAP_SNIPERRIFLE, 2, 270.5590,2480.2830,16.4844, -1);
	pickupWeapRPG = CreatePickup(PICKUP_WEAP_RPG, 2, 265.5590,2480.2830,16.4844, -1);
	pickupWeapHeatRPG = CreatePickup(PICKUP_WEAP_HEATRPG, 2, 260.5590,2480.2830,16.4844, -1);
	pickupWeapFlamethrower = CreatePickup(PICKUP_WEAP_FLAMETHROWER, 2, 255.5590,2480.2830,16.4844, -1);
	pickupWeapMinigun = CreatePickup(PICKUP_WEAP_MINIGUN, 2, 250.5590,2480.2830,16.4844, -1);
	pickupWeapSatchel = CreatePickup(PICKUP_WEAP_SATCHEL, 2, 245.5590,2480.2830,16.4844, -1);
	pickupWeapDetonator = CreatePickup(PICKUP_WEAP_DETONATOR, 2, 240.5590,2480.2830,16.4844, -1);
	pickupWeapSpray = CreatePickup(PICKUP_WEAP_SPRAY, 2, 235.5590,2480.2830,16.4844, -1);
	pickupWeapExtinguisher = CreatePickup(PICKUP_WEAP_EXTINGUISHER, 2, 230.5590,2480.2830,16.4844, -1);
	pickupWeapCamera = CreatePickup(PICKUP_WEAP_CAMERA, 2, 225.5590,2480.2830,16.4844, -1);
	pickupWeapNGoggles = CreatePickup(PICKUP_WEAP_NGOGGLES, 2, 220.5590,2480.2830,16.4844, -1);
	pickupWeapTGoggles = CreatePickup(PICKUP_WEAP_TGOGGLES, 2, 215.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_JETPACK, 1, 210.5590,2480.2830,16.4844, -1);
	pickupWeapParachute = CreatePickup(PICKUP_WEAP_PARACHUTE, 2, 205.5590,2480.2830,16.4844, -1);
	pickupWeapTec9 = CreatePickup(PICKUP_WEAP_TEC9, 2, 200.5590,2480.2830,16.4844, -1);
	
	//PICKUPS - ROW 2
	CreatePickup(PICKUP_BRIEFCASE, 1, 425.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_MONEY, 1, 420.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_INFO, 1, 415.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_HEART, 1, 410.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_PILL, 1, 405.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_ARMOR, 1, 400.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_BRIBE, 1, 395.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_GTA3LOGO, 1, 390.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_GREYBOMB, 1, 385.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_PHOTOOP, 1, 380.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_RAMPAGESSKULL, 1, 375.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_RAMPAGEMSKULL, 1, 370.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_PROPERTYBLUE, 1, 365.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_PROPERTYGRN, 1, 360.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_DOLLAR, 1, 355.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_BLSHIRT, 1, 350.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_TIKI, 1, 345.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_SAVE, 1, 340.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_DRUGS, 1, 335.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_TWOPLAYER, 1, 330.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_CORONA, 1, 325.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_CHECKPOINT, 1, 320.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_WHITEARROW, 1, 315.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_YELLOWARROW, 1, 310.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_PIZZABOX, 1, 305.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_RHYMEBOOK, 1, 300.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_CJAMMOBOX, 1, 295.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_CJSAWNOFF, 1, 290.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_CJSAWNOFF2, 1, 285.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_CJMP5, 1, 280.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_YELLOWBOTTLE, 1, 275.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_PAINKILLER, 1, 270.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_WATCH, 1, 265.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_MINE, 1, 260.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_APMINE, 1, 255.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_STRIPEDQUESTIONM, 1, 250.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_MEDCASE, 1, 245.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_LARMOR, 1, 240.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_DYNAMITE, 1, 235.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_AIDKIT, 1, 230.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_AMMOBOX, 1, 225.5590,2486.2830,16.4844, -1);
	CreatePickup(PICKUP_PETROLCAN, 1, 220.5590,2486.2830,16.4844, -1);
	
	//PICKUPS - ROW 3
	CreatePickup(PICKUP_WDRUGS, 1, 425.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_ODRUGS, 1, 420.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_YDRUGS, 1, 415.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_GDRUGS, 1, 410.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_BDRUGS, 1, 405.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_RDRUGS, 1, 400.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_TWOROUNDS, 1, 395.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_PROPERTYRED, 1, 390.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_PROPERTYORANGE, 1, 385.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_PROPERTYYELLOW, 1, 380.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_ARROWTYPE1, 1, 375.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_ARROWTYPE2, 1, 370.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_ARROWTYPE3, 1, 365.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_ARROWTYPE5, 1, 360.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_RCBOMB, 1, 355.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_ENEXMARKER1, 1, 350.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_CJBBATNAILS, 1, 345.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_KEYCARD, 1, 340.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_HORSESHOE, 1, 335.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_CJFIREEXT, 1, 330.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_FLAMETINS, 1, 325.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_REDARROWDOWN, 1, 320.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_RUSTYM4, 1, 315.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_SCATTEREDPAPERS, 1, 310.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_ALTPARACHUTE, 1, 305.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_MONEYBAG, 1, 300.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_SQUARESHOVEL, 1, 295.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_PAPERTARGETS, 1, 290.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_RUSTYSNIPER, 1, 285.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_CJSHOVEL2, 1, 280.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_SANDBAG, 1, 275.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_ENEXMARKER2, 1, 270.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_YELLOWENMARKER, 1, 265.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_XMASBOX1, 1, 260.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_XMASBOX2, 1, 255.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_XMASBOX3, 1, 250.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_XMASBOX4, 1, 245.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_XMASBOX5, 1, 240.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_ENEXMARKERRED, 1, 235.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_ENEXMARKERGREEN, 1, 230.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_ENEXMARKERBLUE, 1, 225.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_CJFIELDGUN, 1, 220.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_PUMPKIN, 1, 215.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_HEARTBED, 1, 210.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_CJCAMMONET, 1, 205.5590,2492.2830,16.4844, -1);
	CreatePickup(PICKUP_ALTCHAINSAW, 1, 200.5590,2492.2830,16.4844, -1);
	
	//VEHICLES - ROW1
	//[!]WARNING: Do not use more than 1 row of vehicles otherwise the game might crash
	AddStaticVehicle(VEH_LANDSTALKER,425.7991,2523.3472,16.5794,180,0,0);
	AddStaticVehicle(VEH_BRAVURA,420.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_BUFFALO,415.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_LINERUNNER,410.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_PERENNIAL,405.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_SENTINEL,400.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_DUMPER,395.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_FIRETRUCK,390.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_TRASHMASTER,385.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_STRETCH,380.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_MANANA,375.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_INFERNUS,370.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_VOODOO,365.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_PONY,360.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_MULE,355.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_CHEETAH,350.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_AMBULANCE,345.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_MOONBEAM,340.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_ESPERANTO,335.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_TAXI,330.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_WASHINGTON,325.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_BOBCAT,320.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_MRWHOOPEE,315.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_BFINJECTION,310.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_PREMIER,305.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_ENFORCER,300.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_SECURICAR,295.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_BANSHEE,290.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_BUS,285.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_RHINO,280.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_BARRACKS,275.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_HOTKNIFE,270.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_PREVION,265.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_COACH,260.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_CABBIE,255.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_STALLION,250.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_RUMPO,245.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_ROMERO,240.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_PACKER,235.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_MONSTER,230.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_ADMIRAL,225.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_TURISMO,220.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_FLATBED,215.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_YANKEE,210.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_CADDY,205.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_SOLAIR,200.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_TOPFUN,195.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_GLENDALE,190.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_OCEANIC,185.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_PATRIOT,180.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_HERMES,175.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_SABRE,170.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_ZR350,165.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_WALTON,160.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_REGINA,155.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_COMET,150.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_BURRITO,145.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_CAMPER,140.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_BAGGAGE,135.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_DOZER,130.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_RANCHER,125.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_FBIRANCHER,120.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_VIRGO,115.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_GREENWOOD,110.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_HOTRING,105.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_SANDKING,100.7991,2523.3472,16.5764,180,0,0);
	
	//VEHICLES - ROW2
	/*AddStaticVehicle(VEH_BLISTA,425.7991,2513.3472,16.5794,180,0,0);
	AddStaticVehicle(VEH_BOXVILLE,420.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_BENSON,415.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_MESA,410.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_HOTRINGA,405.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_HOTRINGB,400.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_BLOODRING,395.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_RANCHERLURE,390.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_SUPERGT,385.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_ELEGANT,380.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_JOURNEY,375.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_TANKER,370.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_ROADTRAIN,365.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_NEBULA,360.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_MAJESTIC,355.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_BUCCANEER,350.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_CEMENTTRUCK,345.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_TOWTRUCK,340.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_FORTUNE,335.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_CADRONA,330.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_FBITRUCK,325.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_WILLARD,320.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_FORKLIFT,315.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_TRACTOR,310.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_COMBINE,305.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_FELTZER,300.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_REMINGTON,295.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_SLAMVAN,290.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_BLADE,285.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_VORTEX,280.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_VINCENT,275.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_BULLET,270.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_CLOVER,265.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_SADLER,260.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_FIRETRUCKLA,255.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_HUSTLER,250.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_INTRUDER,245.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_PRIMO,240.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_TAMPA,235.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_SUNRISE,230.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_MERIT,225.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_UTILITY,220.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_YOSEMITE,215.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_WINDSOR,210.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_MONSTERA,205.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_MONSTERB,200.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_URANUS,195.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_JESTER,190.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_SULTAN,185.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_STRATUM,180.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_ELEGY,175.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_FLASH,170.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_TAHOMA,165.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_SAVANNA,160.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_BANDITO,155.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_KART,150.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_MOWER,145.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_DUNE,140.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_SWEEPER,135.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_BROADWAY,130.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_TORNADO,125.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_DFT30,120.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_HUNTLEY,115.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_STAFFORD,110.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_NEWSVAN,105.7991,2513.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_TUG,100.7991,2513.3472,16.5764,180,0,0);*/
	
	//VEHICLES - ROW3
	/*AddStaticVehicle(VEH_EMPEROR,425.7991,2503.3472,16.5794,180,0,0);
	AddStaticVehicle(VEH_EUROS,420.7991,2503.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_HOTDOG,415.7991,2503.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_CLUB,410.7991,2503.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_COPCARLA,405.7991,2503.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_COPCARSF,400.7991,2503.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_COPCARVG,395.7991,2503.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_POLRANGER,390.7991,2503.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_PICADOR,385.7991,2503.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_SWATVAN,380.7991,2503.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_ALPHA,375.7991,2503.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_PHOENIX,370.7991,2503.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_GLENSHIT,365.7991,2503.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_SADLERSHIT,360.7991,2503.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_BOXVILLEBURG,355.7991,2503.3472,16.5764,180,0,0);*/
	
	//Motorbikes + Bicycles
	AddStaticVehicle(VEH_PIZZABOY,95.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_PCJ600,90.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_FAGGIO,85.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_FREEWAY,80.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_SANCHEZ,75.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_QUAD,70.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_FCR900,65.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_NRG500,60.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_COPBIKE,55.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_BF400,50.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_WAYFARER,45.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_BMX,40.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_BIKE,35.7991,2523.3472,16.5764,180,0,0);
	AddStaticVehicle(VEH_MTBIKE,30.7991,2523.3472,16.5764,180,0,0);
	
	return 1;
}

public OnGameModeExit()
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	SetPlayerPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraLookAt(playerid, 1958.3783, 1343.1572, 15.3746);
	return 1;
}

public OnPlayerConnect(playerid)
{
	SendClientMessage(playerid,COLOR_WHITE,"Use command /help for list of available commands");
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerText(playerid, text[])
{
	return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
	if (strcmp("/help", cmdtext, true, 10) == 0)
	{
		SendClientMessage(playerid,COLOR_WHITE,"/defcols[0-14]");

		return 1;
	}

	if (strcmp("/defcols0", cmdtext, true, 10) == 0)
	{
		SendClientMessage(playerid,COLOR_WHITE,"White");
		SendClientMessage(playerid,COLOR_BLACK,"Black");
		SendClientMessage(playerid,COLOR_RED,"Red");
		SendClientMessage(playerid,COLOR_GREEN,"Green");
		SendClientMessage(playerid,COLOR_BLUE,"Blue");
		SendClientMessage(playerid,COLOR_CYAN,"Cyan");
		SendClientMessage(playerid,COLOR_MAGENTA,"Magenta");
		SendClientMessage(playerid,COLOR_YELLOW,"Yellow");
		SendClientMessage(playerid,COLOR_DARKRED,"DarkRed");
		SendClientMessage(playerid,COLOR_DARKGREEN,"DarkGreen");

		return 1;
	}

	if (strcmp("/defcols1", cmdtext, true, 10) == 0)
	{
		SendClientMessage(playerid,COLOR_DARKBLUE,"DarkBlue");
		SendClientMessage(playerid,COLOR_DARKCYAN,"DarkCyan");
		SendClientMessage(playerid,COLOR_DARKMAGENTA,"DarkMagenta");
		SendClientMessage(playerid,COLOR_DARKYELLOW,"DarkYellow");
		SendClientMessage(playerid,COLOR_LIGHTRED,"LightRed");
		SendClientMessage(playerid,COLOR_LIGHTGREEN,"LightGreen");
		SendClientMessage(playerid,COLOR_LIGHTBLUE,"LightBlue");
		SendClientMessage(playerid,COLOR_LIGHTCYAN,"LightCyan");
		SendClientMessage(playerid,COLOR_LIGHTMAGENTA,"LightMagenta");
		SendClientMessage(playerid,COLOR_LIGHTYELLOW,"LightYellow");

		return 1;
	}

	if (strcmp("/defcols2", cmdtext, true, 10) == 0)
	{
		SendClientMessage(playerid,COLOR_ALICEBLUE,"AliceBlue");
		SendClientMessage(playerid,COLOR_ANTIQUEWHITE,"AntiqueWhite");
		SendClientMessage(playerid,COLOR_AQUA,"Aqua");
		SendClientMessage(playerid,COLOR_AQUAMARINE,"Aquamarine");
		SendClientMessage(playerid,COLOR_AZURE,"Azure");
		SendClientMessage(playerid,COLOR_BEIGE,"Beige");
		SendClientMessage(playerid,COLOR_BLANCHEDALMOND,"BlanchedAlmond");
		SendClientMessage(playerid,COLOR_BLUEVIOLET,"BlueViolet");
		SendClientMessage(playerid,COLOR_BROWN,"Brown");
		SendClientMessage(playerid,COLOR_BURLYWOOD,"Burlywood");

		return 1;
	}

	if (strcmp("/defcols3", cmdtext, true, 10) == 0)
	{
		SendClientMessage(playerid,COLOR_CADETBLUE,"CadetBlue");
		SendClientMessage(playerid,COLOR_CHARTEREUSE,"Chartereuse");
		SendClientMessage(playerid,COLOR_CHOCOLATE,"Chocolate");
		SendClientMessage(playerid,COLOR_CORAL,"Coral");
		SendClientMessage(playerid,COLOR_CORNFLOWERBLUE,"CornflowerBlue");
		SendClientMessage(playerid,COLOR_CORNSILK,"Cornsilk");
		SendClientMessage(playerid,COLOR_CRIMSON,"Crimson");
		SendClientMessage(playerid,COLOR_DARKGOLDENROD,"DarkGoldenRod");
		SendClientMessage(playerid,COLOR_DARKGRAY,"DarkGray");
		SendClientMessage(playerid,COLOR_DARKKHAKI,"DarkKhaki");

		return 1;
	}

	if (strcmp("/defcols4", cmdtext, true, 10) == 0)
	{
		SendClientMessage(playerid,COLOR_DARKOLIVEGREEN,"DarkOliveGreen");
		SendClientMessage(playerid,COLOR_DARKORANGE,"DarkOrange");
		SendClientMessage(playerid,COLOR_DARKORCHID,"DarkOrchid");
		SendClientMessage(playerid,COLOR_DARKSALMON,"DarkSalmon");
		SendClientMessage(playerid,COLOR_DARKSEAGREEN,"DarkSeaGreen");
		SendClientMessage(playerid,COLOR_DARKSLATEBLUE,"DarkSlateBlue");
		SendClientMessage(playerid,COLOR_DARKSLATEGRAY,"DarkSlateGray");
		SendClientMessage(playerid,COLOR_DARKTURQUOISE,"DarkTurquoise");
		SendClientMessage(playerid,COLOR_DARKVIOLET,"DarkViolet");
		SendClientMessage(playerid,COLOR_DEEPPINK,"DeepPink");

		return 1;
	}

	if (strcmp("/defcols5", cmdtext, true, 10) == 0)
	{
		SendClientMessage(playerid,COLOR_DEEPSKYBLUE,"DeepSkyBlue");
		SendClientMessage(playerid,COLOR_DIMGRAY,"DimGray");
		SendClientMessage(playerid,COLOR_DODGERBLUE,"DodgerBlue");
		SendClientMessage(playerid,COLOR_FIREBRICK,"Firebrick");
		SendClientMessage(playerid,COLOR_FLORALWHITE,"FloralWhite");
		SendClientMessage(playerid,COLOR_FORESTGREEN,"ForestGreen");
		SendClientMessage(playerid,COLOR_GAINSBORO,"Gainsboro");
		SendClientMessage(playerid,COLOR_GHOSTWHITE,"GhostWhite");
		SendClientMessage(playerid,COLOR_GOLD,"Gold");
		SendClientMessage(playerid,COLOR_GOLDENROD,"GoldenRod");

		return 1;
	}

	if (strcmp("/defcols6", cmdtext, true, 10) == 0)
	{
		SendClientMessage(playerid,COLOR_DARKERGREEN,"DarkerGreen");
		SendClientMessage(playerid,COLOR_GREENYELLOW,"GreenYellow");
		SendClientMessage(playerid,COLOR_HONEYDEW,"Honeydew");
		SendClientMessage(playerid,COLOR_HOTPINK,"HotPink");
		SendClientMessage(playerid,COLOR_INDIANRED,"IndianRed");
		SendClientMessage(playerid,COLOR_INDIGO,"Indigo");
		SendClientMessage(playerid,COLOR_IVORY,"Ivory");
		SendClientMessage(playerid,COLOR_KHAKI,"Khaki");
		SendClientMessage(playerid,COLOR_LAVENDER,"Lavender");
		SendClientMessage(playerid,COLOR_LAVENDERBLUSH,"LavenderBlush");

		return 1;
	}

	if (strcmp("/defcols7", cmdtext, true, 10) == 0)
	{
		SendClientMessage(playerid,COLOR_LAWNGREEN,"LawnGreen");
		SendClientMessage(playerid,COLOR_LEMONCHIFFON,"LemonChiffon");
		SendClientMessage(playerid,COLOR_LIGHTCORAL,"LightCoral");
		SendClientMessage(playerid,COLOR_LIGHTGOLDENRODYELLOW,"LightGoldenRodYellow");
		SendClientMessage(playerid,COLOR_LIGHTGRAY,"LightGray");
		SendClientMessage(playerid,COLOR_LIGHTPINK,"LightPink");
		SendClientMessage(playerid,COLOR_LIGHTSALMON,"LightSalmon");
		SendClientMessage(playerid,COLOR_LIGHTSEAGREEN,"LightSeaGreen");
		SendClientMessage(playerid,COLOR_LIGHTSKYBLUE,"LightSkyBlue");
		SendClientMessage(playerid,COLOR_LIGHTSLATEGRAY,"LightSlateGray");

		return 1;
	}

	if (strcmp("/defcols8", cmdtext, true, 10) == 0)
	{
		SendClientMessage(playerid,COLOR_LIGHTSTEELBLUE,"LightSteelBlue");
		SendClientMessage(playerid,COLOR_LIME,"Lime");
		SendClientMessage(playerid,COLOR_LIMEGREEN,"LimeGreen");
		SendClientMessage(playerid,COLOR_LINEN,"Linen");
		SendClientMessage(playerid,COLOR_MAROON,"Maroon");
		SendClientMessage(playerid,COLOR_MEDIUMAQUAMARINE,"MediumAquamarine");
		SendClientMessage(playerid,COLOR_MEDIUMBLUE,"MediumBlue");
		SendClientMessage(playerid,COLOR_MEDIUMORCHID,"MediumOrchid");
		SendClientMessage(playerid,COLOR_MEDIUMPURPLE,"MediumPurple");
		SendClientMessage(playerid,COLOR_MEDIUMSEAGREEN,"MediumSeaGreen");

		return 1;
	}

	if (strcmp("/defcols9", cmdtext, true, 10) == 0)
	{
		SendClientMessage(playerid,COLOR_MEDIUMSLATEBLUE,"MediumSlateBlue");
		SendClientMessage(playerid,COLOR_MEDIUMSPRINGGREEN,"MediumSpringGreen");
		SendClientMessage(playerid,COLOR_MEDIUMTURQUOISE,"MediumTurquoise");
		SendClientMessage(playerid,COLOR_MEDIUMVIOLETRED,"MediumVioletRed");
		SendClientMessage(playerid,COLOR_MIDNIGHTBLUE,"MidnightBlue");
		SendClientMessage(playerid,COLOR_MINTCREAM,"MintCream");
		SendClientMessage(playerid,COLOR_MISTYROSE,"MistyRose");
		SendClientMessage(playerid,COLOR_MOCCASIN,"Moccasin");
		SendClientMessage(playerid,COLOR_NAVAJOWHITE,"NavajoWhite");
		SendClientMessage(playerid,COLOR_NAVY,"Navy");

		return 1;
	}

	if (strcmp("/defcols10", cmdtext, true, 10) == 0)
	{
		SendClientMessage(playerid,COLOR_OLDLACE,"Oldlace");
		SendClientMessage(playerid,COLOR_OLIVE,"Olive");
		SendClientMessage(playerid,COLOR_OLIVEDRAB,"OliveDrab");
		SendClientMessage(playerid,COLOR_ORANGE,"Orange");
		SendClientMessage(playerid,COLOR_ORANGERED,"OrangeRed");
		SendClientMessage(playerid,COLOR_ORCHID,"Orchid");
		SendClientMessage(playerid,COLOR_PALEGOLDENROD,"PaleGoldenRod");
		SendClientMessage(playerid,COLOR_PALEGREEN,"PaleGreen");
		SendClientMessage(playerid,COLOR_PALETURQUOISE,"PaleTurquoise");
		SendClientMessage(playerid,COLOR_PALEVIOLETRED,"PaleVioletRed");

		return 1;
	}

	if (strcmp("/defcols11", cmdtext, true, 10) == 0)
	{
		SendClientMessage(playerid,COLOR_PAPAYAWHIP,"PapayaWhip");
		SendClientMessage(playerid,COLOR_PEACHPUFF,"PeachPuff");
		SendClientMessage(playerid,COLOR_PERU,"Peru");
		SendClientMessage(playerid,COLOR_PINK,"Pink");
		SendClientMessage(playerid,COLOR_PLUM,"Plum");
		SendClientMessage(playerid,COLOR_POWEDERBLUE,"PowderBlue");
		SendClientMessage(playerid,COLOR_PURPLE,"Purple");
		SendClientMessage(playerid,COLOR_REBECCAPURPLE, "RebeccaPurple");
		SendClientMessage(playerid,COLOR_ROSYBROWN,"RosyBrown");
		SendClientMessage(playerid,COLOR_ROYALBLUE,"RoyalBlue");

		return 1;
	}

	if (strcmp("/defcols12", cmdtext, true, 10) == 0)
	{
		SendClientMessage(playerid,COLOR_SADDLEBROWN,"SaddleBrown");
		SendClientMessage(playerid,COLOR_SALMON,"Salmon");
		SendClientMessage(playerid,COLOR_SANDYBROWN,"SandyBrown");
		SendClientMessage(playerid,COLOR_SEAGREEN,"SeaGreen");
		SendClientMessage(playerid,COLOR_SEASHELL,"SeaShell");
		SendClientMessage(playerid,COLOR_SIENNA,"Sienna");
		SendClientMessage(playerid,COLOR_SILVER,"Silver");
		SendClientMessage(playerid,COLOR_SKYBLUE,"SkyBlue");
		SendClientMessage(playerid,COLOR_SLATEBLUE,"SlateBlue");
		SendClientMessage(playerid,COLOR_SLATEGRAY,"SlateGray");

		return 1;
	}

	if (strcmp("/defcols13", cmdtext, true, 10) == 0)
	{
		SendClientMessage(playerid,COLOR_SNOW,"Snow");
		SendClientMessage(playerid,COLOR_SPRINGGREEN,"SpringGreen");
		SendClientMessage(playerid,COLOR_STEELBLUE,"SteelBlue");
		SendClientMessage(playerid,COLOR_TAN,"Tan");
		SendClientMessage(playerid,COLOR_TEAL,"Teal");
		SendClientMessage(playerid,COLOR_THISTLE,"Thistle");
		SendClientMessage(playerid,COLOR_TOMATO,"Tomato");
		SendClientMessage(playerid,COLOR_TURQUOISE,"Turquoise");
		SendClientMessage(playerid,COLOR_VIOLET,"Violet");
		SendClientMessage(playerid,COLOR_WHEAT,"Wheat");

		return 1;
	}

	if (strcmp("/defcols14", cmdtext, true, 10) == 0)
	{
		SendClientMessage(playerid,COLOR_WHITESMOKE,"WhiteSmoke");
		SendClientMessage(playerid,COLOR_YELLOWGREEN,"YellowGreen");
		
		return 1;
	}
	return 0;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
    if(pickupid == pickupWeapRdildo) {
        GivePlayerWeapon(playerid, WEAP_RDILDO, 1);
    }
    else if(pickupid == pickupWeapWdildo) {
        GivePlayerWeapon(playerid, WEAP_WDILDO, 1);
    }
    else if(pickupid == pickupWeapVibrator) {
        GivePlayerWeapon(playerid, WEAP_VIBRATOR, 1);
    }
    else if(pickupid == pickupWeapVibrator2) {
        GivePlayerWeapon(playerid, WEAP_VIBRATOR2, 1);
    }
    else if(pickupid == pickupWeapFlowers) {
        GivePlayerWeapon(playerid, WEAP_FLOWERS, 1);
    }
	else if(pickupid == pickupWeapCane) {
        GivePlayerWeapon(playerid, WEAP_CANE, 1);
    }
    else if(pickupid == pickupWeapBrassKnuckles) {
        GivePlayerWeapon(playerid, WEAP_BRASSKNUCKLES, 1);
    }
    else if(pickupid == pickupWeapGolfClub) {
        GivePlayerWeapon(playerid, WEAP_GOLFCLUB, 1);
    }
    else if(pickupid == pickupWeapNightStick) {
        GivePlayerWeapon(playerid, WEAP_NIGHTSTICK, 1);
    }
    else if(pickupid == pickupWeapKnife) {
        GivePlayerWeapon(playerid, WEAP_KNIFE, 1);
    }
    else if(pickupid == pickupWeapBaseballBat) {
        GivePlayerWeapon(playerid, WEAP_BASEBALLBAT, 1);
    }
    else if(pickupid == pickupWeapShovel) {
        GivePlayerWeapon(playerid, WEAP_SHOVEL, 1);
    }
    else if(pickupid == pickupWeapPoolCue) {
        GivePlayerWeapon(playerid, WEAP_POOLCUE, 1);
    }
    else if(pickupid == pickupWeapKatana) {
        GivePlayerWeapon(playerid, WEAP_KATANA, 1);
    }
    else if(pickupid == pickupWeapChainsaw) {
        GivePlayerWeapon(playerid, WEAP_CHAINSAW, 1);
    }
    else if(pickupid == pickupWeapGrenade) {
        GivePlayerWeapon(playerid, WEAP_GRENADE, 10);
    }
    else if(pickupid == pickupWeapTeargas) {
        GivePlayerWeapon(playerid, WEAP_TEARGAS, 10);
    }
    else if(pickupid == pickupWeapMolotov) {
        GivePlayerWeapon(playerid, WEAP_MOLOTOV, 10);
    }
    else if(pickupid == pickupWeapPistol) {
        GivePlayerWeapon(playerid, WEAP_PISTOL, 100);
    }
    else if(pickupid == pickupWeapSilencedPistol) {
        GivePlayerWeapon(playerid, WEAP_SILENCEDPISTOL, 100);
    }
    else if(pickupid == pickupWeapDeagle) {
        GivePlayerWeapon(playerid, WEAP_DEAGLE, 100);
    }
    else if(pickupid == pickupWeapShotgun) {
        GivePlayerWeapon(playerid, WEAP_SHOTGUN, 50);
    }
    else if(pickupid == pickupWeapSawedoff) {
        GivePlayerWeapon(playerid, WEAP_SAWEDOFF, 50);
    }
    else if(pickupid == pickupWeapAutoshotgun) {
        GivePlayerWeapon(playerid, WEAP_AUTOSHOTGUN, 50);
    }
    else if(pickupid == pickupWeapMicroUzi) {
        GivePlayerWeapon(playerid, WEAP_MICROUZI, 100);
    }
    else if(pickupid == pickupWeapMP5) {
        GivePlayerWeapon(playerid, WEAP_MP5, 100);
    }
    else if(pickupid == pickupWeapAK47) {
        GivePlayerWeapon(playerid, WEAP_AK47, 100);
    }
    else if(pickupid == pickupWeapM4) {
        GivePlayerWeapon(playerid, WEAP_M4, 100);
    }
    else if(pickupid == pickupWeapRifle) {
        GivePlayerWeapon(playerid, WEAP_RIFLE, 25);
    }
    else if(pickupid == pickupWeapSniperRifle) {
        GivePlayerWeapon(playerid, WEAP_SNIPERRIFLE, 25);
    }
    else if(pickupid == pickupWeapRPG) {
        GivePlayerWeapon(playerid, WEAP_RPG, 10);
    }
    else if(pickupid == pickupWeapHeatRPG) {
        GivePlayerWeapon(playerid, WEAP_HEATRPG, 10);
    }
    else if(pickupid == pickupWeapFlamethrower) {
        GivePlayerWeapon(playerid, WEAP_FLAMETHROWER, 200);
    }
    else if(pickupid == pickupWeapMinigun) {
        GivePlayerWeapon(playerid, WEAP_MINIGUN, 500);
    }
    else if(pickupid == pickupWeapSatchel) {
        GivePlayerWeapon(playerid, WEAP_SATCHEL, 10);
    }
    else if(pickupid == pickupWeapDetonator) {
        GivePlayerWeapon(playerid, WEAP_DETONATOR, 1);
    }
    else if(pickupid == pickupWeapSpray) {
        GivePlayerWeapon(playerid, WEAP_SPRAY, 100);
    }
    else if(pickupid == pickupWeapExtinguisher) {
        GivePlayerWeapon(playerid, WEAP_EXTINGUISHER, 100);
    }
    else if(pickupid == pickupWeapCamera) {
        GivePlayerWeapon(playerid, WEAP_CAMERA, 25);
    }
    else if(pickupid == pickupWeapNGoggles) {
        GivePlayerWeapon(playerid, WEAP_NGOGGLES, 1);
    }
    else if(pickupid == pickupWeapTGoggles) {
        GivePlayerWeapon(playerid, WEAP_TGOGGLES, 1);
    }
    else if(pickupid == pickupWeapParachute) {
        GivePlayerWeapon(playerid, WEAP_PARACHUTE, 1);
    }
    else if(pickupid == pickupWeapTec9) {
        GivePlayerWeapon(playerid, WEAP_TEC9, 100);
    }
    
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}
