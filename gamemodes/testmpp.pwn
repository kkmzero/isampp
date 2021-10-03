/*
 * This file is part of Includes for San Andreas Multiplayer+
 * as its sandbox game mode for San Andreas Multiplayer Mod (SA-MP)
 * 2018 - 2021, Ivan Kmeto
 *
 * CC0 1.0 Universal (CC0 1.0) Public Domain Dedication
 * https://creativecommons.org/publicdomain/zero/1.0/
 */


#include <a_samp>
#include <i_sampp>

#if defined FILTERSCRIPT
	public OnFilterScriptInit()
	{
		print("\n----------------------------");
		print("ISAMPP" ISAMPP_VERSION "Sandbox GameMode");
		print("----------------------------\n");
		return 1;
	}
	public OnFilterScriptExit()
	{
		return 1;
	}
#else
	main()
	{
        isampp_console_printversion();

		print("\n----------------------------");
		printf("ISAMPP %s Sandbox GameMode", ISAMPP_VERSION);
		print("----------------------------\n");
	}
#endif


//Position Coordinates: Player Class Selection
new Float:cpos_pclass_x = 441.7056;
new Float:cpos_pclass_y = 2500.1367;
new Float:cpos_pclass_z = 17.7823;
new Float:cpos_pclass_angle = 276.6780;

//Position Coordinates: Explosions
new Float:cpos_explosion_x = 414.37;
new Float:cpos_explosion_y = 2502.48;
new Float:cpos_explosion_z = 16.484;


//Active Pickups
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
new pickupArmor;

//Get Vehicle Model
new VehicleModelID = 0;

//Create Actor Dummy
new gActorDummy;


public OnGameModeInit()
{
	SetWorldTime(12);
	SetGameModeText("ISAMPP 1.7 Sandbox GameMode");
	
	AddPlayerClass(SKIN_CJ, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_TRUTH, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_MACCER, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_ANDRE, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BBTHIN, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BB, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_EMMET, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_MALE01, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_JANITOR, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BFORI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BFOST, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VBFYCRP, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BFYRI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BFYST, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BMORI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BMOST, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BMYAP, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BMYBU, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BMYBE, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BMYDJ, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BMYRI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BMYCR, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BMYST, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYBMX, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WBDYG1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WBDYG2, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYBP, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYCON, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BMYDRUG, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYDRUG, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_HMYDRUG, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_DWFOLC, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_DWMOLC1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_DWMOLC2, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_DWMYLC1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_HMOGAR, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYGOL1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYGOL2, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_HFORI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_HFOST, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_HFYRI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_HFYST, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_JETHRO, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_HMORI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_HMOST, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_HMYBE, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_HMYRI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_HMYCR, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_HMYST, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_OMOKUNG, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYMECH, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BMYMOUN, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYMOUN, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_OFORI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_OFOST, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_OFYRI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_OFYST, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_OMORI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_OMOST, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_OMYRI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_OMYST, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYPLT, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMOPJ, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BFYPRO, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_HFYPRO, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_KENDL, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BMYPOL1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BMYPOL2, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMOPREA, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SBFYST, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMOSCI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYSGRD, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SWMYHP1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SWMYHP2, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SWFOPRO, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WFYSTEW, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SWMOTR1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMOTR1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BMOTR1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VBMYBOX, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VWMYBOX, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VHMYELV, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VBMYELV, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VIMYELV, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VWFYPRO, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_RYDER3, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VWFYST1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WFORI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WFOST, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WFYJG, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WFYRI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WFYRO, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WFYST, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMORI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMOST, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYJG, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYLG, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYRI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYRO, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYCR, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYST, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BALLAS1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BALLAS2, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BALLAS3, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_FAM1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_FAM2, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_FAM3, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_LSV1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_LSV2, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_LSV3, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_MAFFA, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_MAFFB, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_MAFBOSS, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VLA1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VLA2, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VLA3, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_TRIADA, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_TRIADB, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SINDACO, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_TRIBOSS, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_DNB1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_DNB2, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_DNB3, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VMAFF1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VMAFF2, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VMAFF3, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VMAFF4, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_DNMYLC, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_DNFOLC1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_DNFOLC2, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_DNFYLC, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_DNMOLC1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_DNMOLC2, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SBMOTR2, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SWMOTR2, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SBMYTR3, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SWMOTR3, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WFYBE, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BFYBE, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_HFYBE, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SOFYBU, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SBMYST, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SBMYCR, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BMYCG, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WFYCRK, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_HMYCM, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYBU, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BFYBU, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SMOKEV, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WFYBU, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_DWFYLC1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WFYPRO, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYCONB, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYBE, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYPIZZ, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BMOBAR, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_CWFYHB, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_CWMOFR, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_CWMOHB1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_CWMOHB2, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_CWMYFR, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_CWMYHB1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BMYBOUN, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYBOUN, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMOMIB, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BMYMIB, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYBELL, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BMOCHIL, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SOFYRI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SOMYST, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VWMYBJD, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VWFYCRP, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SFR1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SFR2, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SFR3, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BMYBAR, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYBAR, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WFYSEX, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYAMMO, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BMYTATT, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VWMYCR, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VBMOCD, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VBMYCR, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VHMYCR, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SBMYRI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SOMYRI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SOMYBU, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SWMYST, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYVA, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_COPGRL3, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_GUNGRL3, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_MECGRL3, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_NURGRL3, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_CROGRL3, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_GANGRL3, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_CWFOFR, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_CWFOHB, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_CWFYFR1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_CWFYFR2, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_CWMYHB2, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_DWFYLC2, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_DWMYLC2, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_OMYKARA, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYKARA, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WFYBURG, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VWMYCD, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VHFYPRO, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SUZIE, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_OMONOOD, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_OMOBOAT, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WFYCLOT, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VWMOTR1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VWMOTR2, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VWFYWAI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SBFORI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SWFYRI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYCLOT, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SBFOST, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SBFYRI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SBMOCD, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SBMORI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SBMOST, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SHMYCR, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SOFORI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SOFOST, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SOFYST, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SOMOBU, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SOMORI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SOMOST, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SWMOTR5, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SWFORI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SWFOST, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SWFYST, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SWMOCD, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SWMORI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SWMOST, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SHFYPRO, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SBFYPRO, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SWMOTR4, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SWMYRI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SMYST, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SMYST2, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SFYPRO, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VBFYST2, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VBFYPRO, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VHFYST3, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BIKERA, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BIKERB, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BMYPIMP, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SWMYCR, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WFYLG, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYVA2, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BMOSEC, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BIKDRUG, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYCH, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SBFYSTR, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SWFYSTR, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_HECK1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_HECK2, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BMYCON, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMYCD1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_BMOCD, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VWFYWA2, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WMOICE, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_TENPEN, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_PULASKI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_HERN, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_DWAYNE, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SMOKE, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SWEET, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_RYDER, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_FORELLI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_TBONE, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_LAEMT1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_LVEMT1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SFEMT1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_LAFD1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_LVFD1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SFFD1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_LAPD1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SFPD1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_LVPD1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_CSHER, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_LAPDM1, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SWAT, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_FBI, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_ARMY, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_DSHER, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_ZERO, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_ROSE, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_PAUL, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_CESAR, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_OGLOC, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WUZIMU, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_TORINO, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_JIZZY, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_MADDOGG, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_CAT, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_CLAUDE, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_LAPDNA, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_SFPDNA, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_LVPDNA, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_LAPDPC, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_LAPDPD, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_LVPDPC, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WFYCLPD, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_VBFYCPD, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WFYCLEM, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_WFYCLLV, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_CSHERNA, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	AddPlayerClass(SKIN_DSHERNA, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z, cpos_pclass_angle, 0, 0, 0, 0, 0, 0);
	
	//PICKUPS - ROW 1
	pickupWeapRdildo = CreatePickup(PICKUP_WEAP_RDILDO, 2, 425.5590, 2480.2830, 16.4844, -1);
	pickupWeapWdildo = CreatePickup(PICKUP_WEAP_WDILDO, 2, 420.5590, 2480.2830, 16.4844, -1);
	pickupWeapVibrator = CreatePickup(PICKUP_WEAP_VIBRATOR, 2, 415.5590, 2480.2830, 16.4844, -1);
	pickupWeapVibrator2 = CreatePickup(PICKUP_WEAP_VIBRATOR2, 2, 410.5590, 2480.2830, 16.4844, -1);
	pickupWeapFlowers = CreatePickup(PICKUP_WEAP_FLOWERS, 2, 405.5590, 2480.2830, 16.4844, -1);
	pickupWeapCane = CreatePickup(PICKUP_WEAP_CANE, 2, 400.5590, 2480.2830, 16.4844, -1);
	CreatePickup(PICKUP_WEAP_PHONE, 1, 395.5590, 2480.2830, 16.4844, -1);
	pickupWeapBrassKnuckles = CreatePickup(PICKUP_WEAP_BRASSKNUCKLES, 2, 390.5590, 2480.2830, 16.4844, -1);
	pickupWeapGolfClub = CreatePickup(PICKUP_WEAP_GOLFCLUB, 2, 385.5590, 2480.2830, 16.4844, -1);
	pickupWeapNightStick = CreatePickup(PICKUP_WEAP_NIGHTSTICK, 2, 380.5590, 2480.2830, 16.4844, -1);
	pickupWeapKnife = CreatePickup(PICKUP_WEAP_KNIFE, 2, 375.5590, 2480.2830, 16.4844, -1);
	pickupWeapBaseballBat = CreatePickup(PICKUP_WEAP_BASEBALLBAT, 2, 370.5590, 2480.2830, 16.4844, -1);
	pickupWeapShovel = CreatePickup(PICKUP_WEAP_SHOVEL, 2, 365.5590, 2480.2830, 16.4844, -1);
	pickupWeapPoolCue = CreatePickup(PICKUP_WEAP_POOLCUE, 2, 360.5590, 2480.2830, 16.4844, -1);
	pickupWeapKatana = CreatePickup(PICKUP_WEAP_KATANA, 2, 355.5590, 2480.2830, 16.4844, -1);
	pickupWeapChainsaw = CreatePickup(PICKUP_WEAP_CHAINSAW, 2, 350.5590, 2480.2830, 16.4844, -1);
	pickupWeapGrenade = CreatePickup(PICKUP_WEAP_GRENADE, 2, 345.5590, 2480.2830, 16.4844, -1);
	pickupWeapTeargas = CreatePickup(PICKUP_WEAP_TEARGAS, 2, 340.5590, 2480.2830, 16.4844, -1);
	pickupWeapMolotov = CreatePickup(PICKUP_WEAP_MOLOTOV, 2, 335.5590, 2480.2830, 16.4844, -1);
	pickupWeapPistol = CreatePickup(PICKUP_WEAP_PISTOL, 2, 330.5590, 2480.2830, 16.4844, -1);
	pickupWeapSilencedPistol = CreatePickup(PICKUP_WEAP_SILENCEDPISTOL, 2, 325.5590, 2480.2830, 16.4844, -1);
	pickupWeapDeagle = CreatePickup(PICKUP_WEAP_DEAGLE, 2, 320.5590, 2480.2830, 16.4844, -1);
	pickupWeapShotgun = CreatePickup(PICKUP_WEAP_SHOTGUN, 2, 315.5590, 2480.2830, 16.4844, -1);
	pickupWeapSawedoff = CreatePickup(PICKUP_WEAP_SAWNOFF, 2, 310.5590, 2480.2830, 16.4844, -1);
	pickupWeapAutoshotgun = CreatePickup(PICKUP_WEAP_AUTOSHOTGUN, 2, 305.5590, 2480.2830, 16.4844, -1);
	pickupWeapMicroUzi = CreatePickup(PICKUP_WEAP_MICROUZI, 2, 300.5590, 2480.2830, 16.4844, -1);
	pickupWeapMP5 = CreatePickup(PICKUP_WEAP_MP5, 2, 295.5590, 2480.2830, 16.4844, -1);
	CreatePickup(PICKUP_WEAP_HYDRAFLARE, 1, 290.5590, 2480.2830, 16.4844, -1);
	pickupWeapAK47 = CreatePickup(PICKUP_WEAP_AK47, 2, 285.5590, 2480.2830, 16.4844, -1);
	pickupWeapM4 = CreatePickup(PICKUP_WEAP_M4, 2, 280.5590, 2480.2830, 16.4844, -1);
	pickupWeapRifle = CreatePickup(PICKUP_WEAP_RIFLE, 2, 275.5590, 2480.2830, 16.4844, -1);
	pickupWeapSniperRifle = CreatePickup(PICKUP_WEAP_SNIPERRIFLE, 2, 270.5590, 2480.2830, 16.4844, -1);
	pickupWeapRPG = CreatePickup(PICKUP_WEAP_RPG, 2, 265.5590, 2480.2830, 16.4844, -1);
	pickupWeapHeatRPG = CreatePickup(PICKUP_WEAP_HEATRPG, 2, 260.5590, 2480.2830, 16.4844, -1);
	pickupWeapFlamethrower = CreatePickup(PICKUP_WEAP_FLAMETHROWER, 2, 255.5590, 2480.2830, 16.4844, -1);
	pickupWeapMinigun = CreatePickup(PICKUP_WEAP_MINIGUN, 2, 250.5590, 2480.2830, 16.4844, -1);
	pickupWeapSatchel = CreatePickup(PICKUP_WEAP_SATCHEL, 2, 245.5590, 2480.2830, 16.4844, -1);
	pickupWeapDetonator = CreatePickup(PICKUP_WEAP_DETONATOR, 2, 240.5590, 2480.2830, 16.4844, -1);
	pickupWeapSpray = CreatePickup(PICKUP_WEAP_SPRAY, 2, 235.5590, 2480.2830, 16.4844, -1);
	pickupWeapExtinguisher = CreatePickup(PICKUP_WEAP_EXTINGUISHER, 2, 230.5590, 2480.2830, 16.4844, -1);
	pickupWeapCamera = CreatePickup(PICKUP_WEAP_CAMERA, 2, 225.5590, 2480.2830, 16.4844, -1);
	pickupWeapNGoggles = CreatePickup(PICKUP_WEAP_NGOGGLES, 2, 220.5590, 2480.2830, 16.4844, -1);
	pickupWeapTGoggles = CreatePickup(PICKUP_WEAP_TGOGGLES, 2, 215.5590, 2480.2830, 16.4844, -1);
	CreatePickup(PICKUP_WEAP_JETPACK, 1, 210.5590, 2480.2830, 16.4844, -1);
	pickupWeapParachute = CreatePickup(PICKUP_WEAP_PARACHUTE, 2, 205.5590, 2480.2830, 16.4844, -1);
	pickupWeapTec9 = CreatePickup(PICKUP_WEAP_TEC9, 2, 200.5590, 2480.2830, 16.4844, -1);
	
	//PICKUPS - ROW 2
	CreatePickup(PICKUP_BRIEFCASE, 1, 425.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_MONEY, 1, 420.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_INFO, 1, 415.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_HEART, 1, 410.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_PILL, 1, 405.5590, 2486.2830, 16.4844, -1);
	pickupArmor = CreatePickup(PICKUP_ARMOR, 2, 400.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_BRIBE, 1, 395.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_GTA3LOGO, 1, 390.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_GREYBOMB, 1, 385.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_PHOTOOP, 1, 380.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_RAMPAGESSKULL, 1, 375.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_RAMPAGEMSKULL, 1, 370.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_PROPERTYBLUE, 1, 365.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_PROPERTYGRN, 1, 360.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_DOLLAR, 1, 355.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_BLSHIRT, 1, 350.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_TIKI, 1, 345.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_SAVE, 1, 340.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_DRUGS, 1, 335.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_TWOPLAYER, 1, 330.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_CORONA, 1, 325.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_CHECKPOINT, 1, 320.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_WHITEARROW, 1, 315.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_YELLOWARROW, 1, 310.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_PIZZABOX, 1, 305.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_RHYMEBOOK, 1, 300.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_CJAMMOBOX, 1, 295.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_CJSAWNOFF, 1, 290.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_CJSAWNOFF2, 1, 285.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_CJMP5, 1, 280.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_YELLOWBOTTLE, 1, 275.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_PAINKILLER, 1, 270.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_WATCH, 1, 265.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_MINE, 1, 260.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_APMINE, 1, 255.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_STRIPEDQUESTIONM, 1, 250.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_MEDCASE, 1, 245.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_DYNAMITE, 1, 240.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_AIDKIT, 1, 235.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_AMMOBOX, 1, 230.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_PETROLCAN, 1, 225.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_GIFTSMALL, 1, 220.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_GIFTBIG, 1, 215.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_BEERBOTTLE1, 1, 210.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_BEERBOTTLE2, 1, 205.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_BEERBOTTLE3, 1, 200.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_NAVALMINE, 1, 195.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_DONUTS, 1, 190.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_NITRO1, 1, 185.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_NITRO2, 1, 180.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_NITRO3, 1, 175.5590, 2486.2830, 16.4844, -1);
	
	//PICKUPS - ROW 3
	CreatePickup(PICKUP_WDRUGS, 1, 425.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_ODRUGS, 1, 420.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_YDRUGS, 1, 415.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_GDRUGS, 1, 410.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_BDRUGS, 1, 405.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_RDRUGS, 1, 400.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_TWOROUNDS, 1, 395.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_PROPERTYRED, 1, 390.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_PROPERTYORANGE, 1, 385.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_PROPERTYYELLOW, 1, 380.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_ARROWTYPE1, 1, 375.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_ARROWTYPE2, 1, 370.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_ARROWTYPE3, 1, 365.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_ARROWTYPE5, 1, 360.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_RCBOMB, 1, 355.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_ENEXMARKER1, 1, 350.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_CJBBATNAILS, 1, 345.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_KEYCARD, 1, 340.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_HORSESHOE, 1, 335.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_CJFIREEXT, 1, 330.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_FLAMETINS, 1, 325.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_REDARROWDOWN, 1, 320.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_RUSTYM4, 1, 315.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_SCATTEREDPAPERS, 1, 310.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_ALTPARACHUTE, 1, 305.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_MONEYBAG, 1, 300.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_SQUARESHOVEL, 1, 295.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_PAPERTARGETS, 1, 290.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_RUSTYSNIPER, 1, 285.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_CJSHOVEL2, 1, 280.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_SANDBAG, 1, 275.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_ENEXMARKER2, 1, 270.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_YELLOWENMARKER, 1, 265.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_XMASBOX1, 1, 260.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_XMASBOX2, 1, 255.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_XMASBOX3, 1, 250.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_XMASBOX4, 1, 245.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_XMASBOX5, 1, 240.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_ENEXMARKERRED, 1, 235.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_ENEXMARKERGREEN, 1, 230.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_ENEXMARKERBLUE, 1, 225.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_CJFIELDGUN, 1, 220.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_PUMPKIN, 1, 215.5590, 2492.2830, 16.4844, -1);
	
	//VEHICLES - ROW1
	//[!]WARNING: Do not use more than 1 row of vehicles otherwise the game client might crash
	AddStaticVehicle(VEH_LANDSTALKER, 425.7991, 2523.3472, 16.5794, 180, CARCOL_SAMP_BRIGHTGREEN, 0);
	AddStaticVehicle(VEH_BRAVURA, 420.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_BRIGHTBEIGE, 0);
	AddStaticVehicle(VEH_BUFFALO, 415.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_BRIGHTINDIGO, 0);
	AddStaticVehicle(VEH_LINERUNNER, 410.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_BEIGE, 0);
	AddStaticVehicle(VEH_PERENNIAL, 405.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_BRONZE, 0);
	AddStaticVehicle(VEH_SENTINEL, 400.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_GOLD, 0);
	AddStaticVehicle(VEH_DUMPER, 395.7991, 2523.3472, 16.5764, 180, 0, 0);
	AddStaticVehicle(VEH_FIRETRUCK, 390.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_LIGHTPURPLE, 0);
	AddStaticVehicle(VEH_TRASHMASTER, 385.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_DARKPURPLE, 0);
	AddStaticVehicle(VEH_STRETCH, 380.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_LIME, 0);
	AddStaticVehicle(VEH_MANANA, 375.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_LIGHTPINK, 0);
	AddStaticVehicle(VEH_INFERNUS, 370.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_DEEPPURPLE, 0);
	AddStaticVehicle(VEH_VOODOO, 365.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_SMOKEGREEN, 0);
	AddStaticVehicle(VEH_PONY, 360.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_GREENBROWN, 0);
	AddStaticVehicle(VEH_MULE, 355.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_PINE, 0);
	AddStaticVehicle(VEH_CHEETAH, 350.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_DARKENGREEN, 0);
	AddStaticVehicle(VEH_AMBULANCE, 345.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_BLUE, 0);
	AddStaticVehicle(VEH_MOONBEAM, 340.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_GREEN, 0);
	AddStaticVehicle(VEH_ESPERANTO, 335.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_NEONGREEN, 0);
	AddStaticVehicle(VEH_TAXI, 330.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_NEONCYAN, 0);
	AddStaticVehicle(VEH_WASHINGTON, 325.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_LIGHTBEIGE, 0);
	AddStaticVehicle(VEH_BOBCAT, 320.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_WHITESMOKE, 0);
	AddStaticVehicle(VEH_MRWHOOPEE, 315.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_DEEPORANGE, 0);
	AddStaticVehicle(VEH_BFINJECTION, 310.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_DEEPBROWN, 0);
	AddStaticVehicle(VEH_PREMIER, 305.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_DARKFOREST, 0);
	AddStaticVehicle(VEH_ENFORCER, 300.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_WASHEDRED, 0);
	AddStaticVehicle(VEH_SECURICAR, 295.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_SKYBLUE, 0);
	AddStaticVehicle(VEH_BANSHEE, 290.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_DARKENCYAN, 0);
	AddStaticVehicle(VEH_BUS, 285.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_BLUESMOKE, 0);
	AddStaticVehicle(VEH_RHINO, 280.7991, 2523.3472, 16.5764, 180, 0, 0);
	AddStaticVehicle(VEH_BARRACKS, 275.7991, 2523.3472, 16.5764, 180, 0, 0);
	AddStaticVehicle(VEH_HOTKNIFE, 270.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_CYAN, 0);
	AddStaticVehicle(VEH_PREVION, 265.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_DARKENBLUE, 0);
	AddStaticVehicle(VEH_COACH, 260.7991, 2523.3472, 16.5764, 180, 0, 0);
	AddStaticVehicle(VEH_CABBIE, 255.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_PURPLE, 0);
	AddStaticVehicle(VEH_STALLION, 250.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_WOODBROWN, 0);
	AddStaticVehicle(VEH_RUMPO, 245.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_WHITEPINK, 0);
	AddStaticVehicle(VEH_ROMERO, 240.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_WHITEPINK2, 0);
	AddStaticVehicle(VEH_PACKER, 235.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_WASHEDPURPLE, 0);
	AddStaticVehicle(VEH_MONSTER, 230.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_GREENBROWN2, 0);
	AddStaticVehicle(VEH_ADMIRAL, 225.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_BROWN2, 0);
	AddStaticVehicle(VEH_TURISMO, 220.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_BROWN3, 0);
	AddStaticVehicle(VEH_FLATBED, 215.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_ORANGERED, 0);
	AddStaticVehicle(VEH_YANKEE, 210.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_GLOSSPURPLE, 0);
	AddStaticVehicle(VEH_CADDY, 205.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_LIGHTPINK2, 0);
	AddStaticVehicle(VEH_SOLAIR, 200.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_DEEPPINK, 0);
	AddStaticVehicle(VEH_TOPFUN, 195.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_OXBLOOD, 0);
	AddStaticVehicle(VEH_GLENDALE, 190.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_BROWN4, 0);
	AddStaticVehicle(VEH_OCEANIC, 185.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_ORANGERED2, 0);
	AddStaticVehicle(VEH_PATRIOT, 180.7991, 2523.3472, 16.5764, 180, 0, 0);
	AddStaticVehicle(VEH_HERMES, 175.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_COPPER, 0);
	AddStaticVehicle(VEH_SABRE, 170.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_ORANGE, 0);
	AddStaticVehicle(VEH_ZR350, 165.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_WASHEDPINK, 0);
	AddStaticVehicle(VEH_WALTON, 160.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_WHITESMOKE2, 0);
	AddStaticVehicle(VEH_REGINA, 155.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_DARKGREEN, 0);
	AddStaticVehicle(VEH_COMET, 150.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_DARKGREEN2, 0);
	AddStaticVehicle(VEH_BURRITO, 145.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_DARKGREEN3, 0);
	AddStaticVehicle(VEH_CAMPER, 140.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_DARKGREEN4, 0);
	AddStaticVehicle(VEH_BAGGAGE, 135.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_DARKENPURPLE, 0);
	AddStaticVehicle(VEH_DOZER, 130.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_GREENLIME, 0);
	AddStaticVehicle(VEH_RANCHER, 125.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_CREAM, 0);
	AddStaticVehicle(VEH_FBIRANCHER, 120.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_WHITESMOKE3, 0);
	AddStaticVehicle(VEH_VIRGO, 115.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_DEEPYELLOW, 0);
	AddStaticVehicle(VEH_GREENWOOD, 110.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_LIME2, 0);
	AddStaticVehicle(VEH_HOTRING, 105.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_WHITESMOKE4, 0);
	AddStaticVehicle(VEH_SANDKING, 100.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_DEEPLIME, 0);
	
	//VEHICLES - ROW2
	/*AddStaticVehicle(VEH_BLISTA, 425.7991, 2513.3472, 16.5794, 180, CARCOL_SAMP_SEABLUE, 0);
	AddStaticVehicle(VEH_BOXVILLE, 420.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_SEABLUE2, 0);
	AddStaticVehicle(VEH_BENSON, 415.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_DARKSEABLUE, 0);
	AddStaticVehicle(VEH_MESA, 410.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_DEEPPURPLE2, 0);
	AddStaticVehicle(VEH_HOTRINGA, 405.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_REDCOPPER, 0);
	AddStaticVehicle(VEH_HOTRINGB, 400.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_WHITECREAM, 0);
	AddStaticVehicle(VEH_BLOODRING, 395.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_DARKLIME, 0);
	AddStaticVehicle(VEH_RANCHERLURE, 390.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_DARKFOREST2, 0);
	AddStaticVehicle(VEH_SUPERGT, 385.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_LIGHTORANGE, 0);
	AddStaticVehicle(VEH_ELEGANT, 380.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_LIGHTCYAN, 0);
	AddStaticVehicle(VEH_JOURNEY, 375.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_LIGHTORANGE2, 0);
	AddStaticVehicle(VEH_TANKER, 370.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_ORANGE2, 0);
	AddStaticVehicle(VEH_ROADTRAIN, 365.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_PINKPURPLE, 0);
	AddStaticVehicle(VEH_NEBULA, 360.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_YELLOWBEIGE, 0);
	AddStaticVehicle(VEH_MAJESTIC, 355.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_ORANGE3, 0);
	AddStaticVehicle(VEH_BUCCANEER, 350.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_DARKBLUE4, 0);
	AddStaticVehicle(VEH_CEMENTTRUCK, 345.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_DARKWOOD, 0);
	AddStaticVehicle(VEH_TOWTRUCK, 340.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_DARKSLIME, 0);
	AddStaticVehicle(VEH_FORTUNE, 335.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_NEONSLIME, 0);
	AddStaticVehicle(VEH_CADRONA, 330.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_DARKFOREST3, 0);
	AddStaticVehicle(VEH_FBITRUCK, 325.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_GOLD2, 0);
	AddStaticVehicle(VEH_WILLARD, 320.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_DEEPGREEN2, 0);
	AddStaticVehicle(VEH_FORKLIFT, 315.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_DARKRED, 0);
	AddStaticVehicle(VEH_TRACTOR, 310.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_BROWN5, 0);
	AddStaticVehicle(VEH_COMBINE, 305.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_LIGHTMAGENTA, 0);
	AddStaticVehicle(VEH_FELTZER, 300.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_MAGENTA, 0);
	AddStaticVehicle(VEH_REMINGTON, 295.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_DARKGREEN6, 0);
	AddStaticVehicle(VEH_SLAMVAN, 290.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_DARKENGREEN2, 0);
	AddStaticVehicle(VEH_BLADE, 285.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_BLUESMOKE2, 0);
	AddStaticVehicle(VEH_VORTEX, 280.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_WASHEDPINK2, 0);
	AddStaticVehicle(VEH_VINCENT, 275.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_LIGHTBROWN, 0);
	AddStaticVehicle(VEH_BULLET, 270.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_COPPERRED, 0);
	AddStaticVehicle(VEH_CLOVER, 265.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_BLUESLIME, 0);
	AddStaticVehicle(VEH_SADLER, 260.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_GREENSLIME, 0);
	AddStaticVehicle(VEH_FIRETRUCKLA, 255.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_OXBLOOD2, 0);
	AddStaticVehicle(VEH_HUSTLER, 250.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_DEEPGREEN3, 0);
	AddStaticVehicle(VEH_INTRUDER, 245.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_DARKBROWN3, 0);
	AddStaticVehicle(VEH_PRIMO, 240.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_DARKFOREST4, 0);
	AddStaticVehicle(VEH_TAMPA, 235.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_SKYBLUE2, 0);
	AddStaticVehicle(VEH_SUNRISE, 230.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_DARKENBLUE3, 0);
	AddStaticVehicle(VEH_MERIT, 225.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_DARKENOXBLOOD, 0);
	AddStaticVehicle(VEH_UTILITY, 220.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_DARKENMAGENTA, 0);
	AddStaticVehicle(VEH_YOSEMITE, 215.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_WHITESMOKE5, 0);
	AddStaticVehicle(VEH_WINDSOR, 210.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_GREY, 0);
	AddStaticVehicle(VEH_MONSTERA, 205.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_GREY2, 0);
	AddStaticVehicle(VEH_MONSTERB, 200.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_WHITESMOKE6, 0);
	AddStaticVehicle(VEH_URANUS, 195.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_SMOKE, 0);
	AddStaticVehicle(VEH_JESTER, 190.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_BLUESMOKE3, 0);
	AddStaticVehicle(VEH_SULTAN, 185.7991, 2513.3472, 16.5764, 180, CARCOL_DARKENBROWN4, 0);
	AddStaticVehicle(VEH_STRATUM, 180.7991, 2513.3472, 16.5764, 180, CARCOL_LIGHTBROWN7, 0);
	AddStaticVehicle(VEH_ELEGY, 175.7991, 2513.3472, 16.5764, 180, CARCOL_DEEPROSE2, 0);
	AddStaticVehicle(VEH_FLASH, 170.7991, 2513.3472, 16.5764, 180, CARCOL_SMOKE4, 0);
	AddStaticVehicle(VEH_TAHOMA, 165.7991, 2513.3472, 16.5764, 180, CARCOL_BROWN, 0);
	AddStaticVehicle(VEH_SAVANNA, 160.7991, 2513.3472, 16.5764, 180, CARCOL_ROSARED, 0);
	AddStaticVehicle(VEH_BANDITO, 155.7991, 2513.3472, 16.5764, 180, CARCOL_DEEPBLUE3, 0);
	AddStaticVehicle(VEH_KART, 150.7991, 2513.3472, 16.5764, 180, CARCOL_PINK, 0);
	AddStaticVehicle(VEH_MOWER, 145.7991, 2513.3472, 16.5764, 180, CARCOL_BLACK4, 0);
	AddStaticVehicle(VEH_DUNE, 140.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_DEEPGREEN, 0);
	AddStaticVehicle(VEH_SWEEPER, 135.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_DARKBROWN, 0);
	AddStaticVehicle(VEH_BROADWAY, 130.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_WASHEDBLUE, 0);
	AddStaticVehicle(VEH_TORNADO, 125.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_BROWN, 0);
	AddStaticVehicle(VEH_DFT30, 120.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_MAROON, 0);
	AddStaticVehicle(VEH_HUNTLEY, 115.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_BLACK, 0);
	AddStaticVehicle(VEH_STAFFORD, 110.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_INDIGO, 0);
	AddStaticVehicle(VEH_NEWSVAN, 105.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_LIGHTBLUE, 0);
	AddStaticVehicle(VEH_TUG, 100.7991, 2513.3472, 16.5764, 180, CARCOL_SAMP_BRIGHTPURPLE, 0);*/
	
	//VEHICLES - ROW3
	/*AddStaticVehicle(VEH_EMPEROR, 425.7991, 2503.3472, 16.5794, 180, 0, 0);
	AddStaticVehicle(VEH_EUROS, 420.7991, 2503.3472, 16.5764, 180, 0, 0);
	AddStaticVehicle(VEH_HOTDOG, 415.7991, 2503.3472, 16.5764, 180, 0, 0);
	AddStaticVehicle(VEH_CLUB, 410.7991, 2503.3472, 16.5764, 180, 0, 0);
	AddStaticVehicle(VEH_COPCARLA, 405.7991, 2503.3472, 16.5764, 180, 0, 0);
	AddStaticVehicle(VEH_COPCARSF, 400.7991, 2503.3472, 16.5764, 180, 0, 0);
	AddStaticVehicle(VEH_COPCARVG, 395.7991, 2503.3472, 16.5764, 180, 0, 0);
	AddStaticVehicle(VEH_POLRANGER, 390.7991, 2503.3472, 16.5764, 180, 0, 0);
	AddStaticVehicle(VEH_PICADOR, 385.7991, 2503.3472, 16.5764, 180, 0, 0);
	AddStaticVehicle(VEH_SWATVAN, 380.7991, 2503.3472, 16.5764, 180, 0, 0);
	AddStaticVehicle(VEH_ALPHA, 375.7991, 2503.3472, 16.5764, 180, 0, 0);
	AddStaticVehicle(VEH_PHOENIX, 370.7991, 2503.3472, 16.5764, 180, 0, 0);
	AddStaticVehicle(VEH_GLENSHIT, 365.7991, 2503.3472, 16.5764, 180, 0, 0);
	AddStaticVehicle(VEH_SADLERSHIT, 360.7991, 2503.3472, 16.5764, 180, 0, 0);
	AddStaticVehicle(VEH_BOXVILLEBURG, 355.7991, 2503.3472, 16.5764, 180, 0, 0);*/
	
	//Motorbikes + Bicycles
	AddStaticVehicle(VEH_PIZZABOY, 95.7991, 2523.3472, 16.5764 ,180, CARCOL_SAMP_INDIGO2, 0);
	AddStaticVehicle(VEH_PCJ600, 90.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_DARKBROWN2, 0);
	AddStaticVehicle(VEH_FAGGIO, 85.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_BEIGE2, 0);
	AddStaticVehicle(VEH_FREEWAY, 80.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_DARKBLUE, 0);
	AddStaticVehicle(VEH_SANCHEZ, 75.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_DARKGREEN5, 0);
	AddStaticVehicle(VEH_QUAD, 70.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_DARKENBLUE2, 0);
	AddStaticVehicle(VEH_FCR900, 65.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_SMOKEBLUE, 0);
	AddStaticVehicle(VEH_NRG500, 60.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_DARKBLUE2, 0);
	AddStaticVehicle(VEH_COPBIKE, 55.7991, 2523.3472, 16.5764, 180, 0, 0);
	AddStaticVehicle(VEH_BF400, 50.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_DARKBLUE3, 0);
	AddStaticVehicle(VEH_WAYFARER, 45.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_SMOKEBLUE2, 0);
	AddStaticVehicle(VEH_BMX, 40.7991, 2523.3472, 16.5764, 180, CARCOL_SMOKE2, 0);
	AddStaticVehicle(VEH_BIKE, 35.7991, 2523.3472, 16.5764, 180, CARCOL_LIGHTLIME, 0);
	AddStaticVehicle(VEH_MTBIKE, 30.7991, 2523.3472, 16.5764, 180, CARCOL_CORAL, 0);

	//Create Actor Dummy
	gActorDummy = CreateActor(SKIN_BMYST, 428.687, 2531.6868, 16.5926, 180);
	SetActorInvulnerable(gActorDummy, false);

	//TestObjects - Remove Later
	/*CreateObject(OBJECT_SM_DES_PCKLYPR2, 425.5590, 2498.2830, 16.4844, 0.0, 0.0, 96.0);
	CreateObject(OBJECT_SM_DES_PCKLYPR1, 420.5590, 2498.2830, 16.4844, 0.0, 0.0, 96.0);
	CreateObject(OBJECT_SM_SCRUB_ROCK6, 415.5590, 2498.2830, 16.4844, 0.0, 0.0, 96.0);
	CreateObject(OBJECT_SM_BUSH_LARGE_1, 410.5590, 2498.2830, 16.4844, 0.0, 0.0, 96.0);
	CreateObject(OBJECT_SM_BUSH_SMALL_1, 405.5590, 2498.2830, 16.4844, 0.0, 0.0, 96.0);
	CreateObject(OBJECT_SM_DRYBRUSH_SM1, 400.5590, 2498.2830, 16.4844, 0.0, 0.0, 96.0);
	CreateObject(OBJECT_NEW_BUSHTEST, 395.5590, 2498.2830, 16.4844, 0.0, 0.0, 96.0);
	CreateObject(OBJECT_ASH1_HI, 390.5590, 2498.2830, 16.4844, 0.0, 0.0, 96.0);*/

	return 1;
}

public OnGameModeExit()
{
	DestroyActor(gActorDummy);

	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	SetPlayerPos(playerid, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z);
	SetPlayerCameraPos(playerid, cpos_pclass_x + 5.0, cpos_pclass_y, cpos_pclass_z + 1.0);
	SetPlayerCameraLookAt(playerid, cpos_pclass_x, cpos_pclass_y, cpos_pclass_z);

	return 1;
}

public OnPlayerConnect(playerid)
{
	switch(ISAMPP_VERID) {
		case 202012: SendClientMessage(playerid, COLOR_MAGENTA, "ISAMPP 1.2");
		case 202013: SendClientMessage(playerid, COLOR_MAGENTA, "ISAMPP 1.3");
		case 202114: SendClientMessage(playerid, COLOR_MAGENTA, "ISAMPP 1.4");
		case 202115: SendClientMessage(playerid, COLOR_MAGENTA, "ISAMPP 1.5");
		case 202116: SendClientMessage(playerid, COLOR_MAGENTA, "ISAMPP 1.6");
		case 202117: SendClientMessage(playerid, COLOR_MAGENTA, "ISAMPP 1.7");
		default: SendClientMessage(playerid, COLOR_MAGENTA, "ISAMPP Unknown version");
	}

	SendClientMessage(playerid, COLOR_ORANGE, "Use command /help for list of available commands");
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
	GivePlayerWeapon(playerid, WEAP_MP5, 100);
	SetPlayerAttachedObject(playerid, BONE_LEFTUPPERARM, 19487, 2, 0.101, -0.0, 0.0, 5.50, 84.60, 83.7, 1.0, 1.0, 1.0, 0xFF00FF00);

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
	new cmd[128], idx;
	cmd = strtok(cmdtext, idx);

	//HELP COMMANDS
	if (strcmp(cmd, "/help", true) == 0) {
		new tmp[128];
		tmp = strtok(cmdtext, idx);

		if (isnull(tmp)) {
			SendClientMessage(playerid, COLOR_ORANGE, "/maincols [0-14]; /stringcols");
			SendClientMessage(playerid, COLOR_ORANGE, "/crime [3-19, 21, 22]; /tp [ID]; /tpcoord");
			SendClientMessage(playerid, COLOR_ORANGE, "/explosion [ID] (type /help explosion for ID list)");
			SendClientMessage(playerid, COLOR_ORANGE, "/gametext [ID] (type /help gametext for ID list)");
			SendClientMessage(playerid, COLOR_ORANGE, "/setvehiclehealth [ID] (type /help setvehiclehealth for ID list)");
			SendClientMessage(playerid, COLOR_ORANGE, "/w [ID] (type /help w for weather ID list)");
			SendClientMessage(playerid, COLOR_ORANGE, "/showplayerpos; /showvehicleinfo; /cameramode; /changeskin; /myname");
		}
		else if (strcmp(tmp, "explosion") == 0) {
			SendClientMessage(playerid, COLOR_MAGENTA, "/explosion [ID]");
			SendClientMessage(playerid, COLOR_MAGENTA, "ID: small1, small2, small3, small4, medium, chem1, chem2, large1, large2");
			SendClientMessage(playerid, COLOR_MAGENTA, "large3, invis1, invis2, invis3, rctiger");
		}
		else if (strcmp(tmp, "gametext") == 0) {
			SendClientMessage(playerid, COLOR_MAGENTA, "/gametext [ID]");
			SendClientMessage(playerid, COLOR_MAGENTA, "ID: pricedown, rpricedown, sa, slim1, slim2, slimw, bpricedown");
			SendClientMessage(playerid, COLOR_MAGENTA, "vehname, location, radio, radiow, pmoney, nmoney, stunt, clock, notification");
		}
		else if (strcmp(tmp, "setvehiclehealth") == 0) {
			SendClientMessage(playerid, COLOR_MAGENTA, "/setvehiclehealth [ID]");
			SendClientMessage(playerid, COLOR_MAGENTA, "ID: full, fulllow, whitesmoke, whitesmokelow, greysmoke, greysmokelow, blacksmoke, blacksmokelow, onfire");
		}
		else if (strcmp(tmp, "w") == 0) {
			SendClientMessage(playerid, COLOR_MAGENTA, "/w [ID]");
			SendClientMessage(playerid, COLOR_MAGENTA, "ID: extrasunnyla, sunnyla, extrasunnysmogla, sunnysmogla, cloudyla");
			SendClientMessage(playerid, COLOR_MAGENTA, "sunnysf, extrasunnysf, cloudysf, rainysf, foggysf");
			SendClientMessage(playerid, COLOR_MAGENTA, "sunnyvegas, extrasunnyvegas, cloudyvegas");
			SendClientMessage(playerid, COLOR_MAGENTA, "extrasunnycountry, sunnycountry, cloudycountry, rainycountry");
			SendClientMessage(playerid, COLOR_MAGENTA, "extrasunnydesert, sunnydesert, sandstorm, underwater");
		}
		else {
			SendClientMessage(playerid, COLOR_INDIANRED, "Use command /help for list of available commands");
		}

		return 1;
	}

	//PRIMARY COLOR TEXT TEST COMMANDS
	if (strcmp(cmd, "/maincols", true) == 0) {
		new tmp[128];
		tmp = strtok(cmdtext, idx);

		if(isnull(tmp)) {
			SendClientMessage(playerid, COLOR_INDIANRED, "Missing argument for command /maincols [0-14]");
		}
		else if(strval(tmp) == 0) {
			SendClientMessage(playerid, COLOR_WHITE, "White");
			SendClientMessage(playerid, COLOR_BLACK, "Black");
			SendClientMessage(playerid, COLOR_RED, "Red");
			SendClientMessage(playerid, COLOR_GREEN, "Green");
			SendClientMessage(playerid, COLOR_BLUE, "Blue");
			SendClientMessage(playerid, COLOR_CYAN, "Cyan");
			SendClientMessage(playerid, COLOR_MAGENTA, "Magenta");
			SendClientMessage(playerid, COLOR_YELLOW, "Yellow");
			SendClientMessage(playerid, COLOR_DARKRED, "Dark Red");
			SendClientMessage(playerid, COLOR_DARKGREEN, "Dark Green");
		}
		else if (strval(tmp) == 1) {
			SendClientMessage(playerid, COLOR_DARKBLUE, "Dark Blue");
			SendClientMessage(playerid, COLOR_DARKCYAN, "Dark Cyan");
			SendClientMessage(playerid, COLOR_DARKMAGENTA, "Dark Magenta");
			SendClientMessage(playerid, COLOR_DARKYELLOW, "Dark Yellow");
			SendClientMessage(playerid, COLOR_LIGHTRED, "Light Red");
			SendClientMessage(playerid, COLOR_LIGHTGREEN, "Light Green");
			SendClientMessage(playerid, COLOR_LIGHTBLUE, "Light Blue");
			SendClientMessage(playerid, COLOR_LIGHTCYAN, "Light Cyan");
			SendClientMessage(playerid, COLOR_LIGHTMAGENTA, "Light Magenta");
			SendClientMessage(playerid, COLOR_LIGHTYELLOW, "Light Yellow");
		}
		else if (strval(tmp) == 2) {
			SendClientMessage(playerid, COLOR_ALICEBLUE, "Alice Blue");
			SendClientMessage(playerid, COLOR_ANTIQUEWHITE, "Antique White");
			SendClientMessage(playerid, COLOR_AQUA, "Aqua");
			SendClientMessage(playerid, COLOR_AQUAMARINE, "Aquamarine");
			SendClientMessage(playerid, COLOR_AZURE, "Azure");
			SendClientMessage(playerid, COLOR_BEIGE, "Beige");
			SendClientMessage(playerid, COLOR_BLANCHEDALMOND, "Blanched Almond");
			SendClientMessage(playerid, COLOR_BLUEVIOLET, "Blue Violet");
			SendClientMessage(playerid, COLOR_BROWN, "Brown");
			SendClientMessage(playerid, COLOR_BURLYWOOD, "Burlywood");
		}
		else if (strval(tmp) == 3) {
			SendClientMessage(playerid, COLOR_CADETBLUE, "Cadet Blue");
			SendClientMessage(playerid, COLOR_CHARTEREUSE, "Chartereuse");
			SendClientMessage(playerid, COLOR_CHOCOLATE, "Chocolate");
			SendClientMessage(playerid, COLOR_CORAL, "Coral");
			SendClientMessage(playerid, COLOR_CORNFLOWERBLUE, "Cornflower Blue");
			SendClientMessage(playerid, COLOR_CORNSILK, "Cornsilk");
			SendClientMessage(playerid, COLOR_CRIMSON, "Crimson");
			SendClientMessage(playerid, COLOR_DARKGOLDENROD, "Dark Golden Rod");
			SendClientMessage(playerid, COLOR_DARKGRAY, "Dark Gray");
			SendClientMessage(playerid, COLOR_DARKKHAKI, "Dark Khaki");
		}
		else if (strval(tmp) == 4) {
			SendClientMessage(playerid, COLOR_DARKOLIVEGREEN, "Dark Olive Green");
			SendClientMessage(playerid, COLOR_DARKORANGE, "Dark Orange");
			SendClientMessage(playerid, COLOR_DARKORCHID, "Dark Orchid");
			SendClientMessage(playerid, COLOR_DARKSALMON, "Dark Salmon");
			SendClientMessage(playerid, COLOR_DARKSEAGREEN, "Dark Sea Green");
			SendClientMessage(playerid, COLOR_DARKSLATEBLUE, "Dark Slate Blue");
			SendClientMessage(playerid, COLOR_DARKSLATEGRAY, "Dark Slate Gray");
			SendClientMessage(playerid, COLOR_DARKTURQUOISE, "Dark Turquoise");
			SendClientMessage(playerid, COLOR_DARKVIOLET, "Dark Violet");
			SendClientMessage(playerid, COLOR_DEEPPINK, "Deep Pink");
		}
		else if (strval(tmp) == 5) {
			SendClientMessage(playerid, COLOR_DEEPSKYBLUE, "Deep Sky Blue");
			SendClientMessage(playerid, COLOR_DIMGRAY, "Dim Gray");
			SendClientMessage(playerid, COLOR_DODGERBLUE, "Dodger Blue");
			SendClientMessage(playerid, COLOR_FIREBRICK, "Firebrick");
			SendClientMessage(playerid, COLOR_FLORALWHITE, "Floral White");
			SendClientMessage(playerid, COLOR_FORESTGREEN, "Forest Green");
			SendClientMessage(playerid, COLOR_GAINSBORO, "Gainsboro");
			SendClientMessage(playerid, COLOR_GHOSTWHITE, "Ghost White");
			SendClientMessage(playerid, COLOR_GOLD, "Gold");
			SendClientMessage(playerid, COLOR_GOLDENROD, "Golden Rod");
		}
		else if (strval(tmp) == 6) {
			SendClientMessage(playerid, COLOR_DARKERGREEN, "Darker Green");
			SendClientMessage(playerid, COLOR_GREENYELLOW, "Green Yellow");
			SendClientMessage(playerid, COLOR_HONEYDEW, "Honeydew");
			SendClientMessage(playerid, COLOR_HOTPINK, "Hot Pink");
			SendClientMessage(playerid, COLOR_INDIANRED, "Indian Red");
			SendClientMessage(playerid, COLOR_INDIGO, "Indigo");
			SendClientMessage(playerid, COLOR_IVORY, "Ivory");
			SendClientMessage(playerid, COLOR_KHAKI, "Khaki");
			SendClientMessage(playerid, COLOR_LAVENDER, "Lavender");
			SendClientMessage(playerid, COLOR_LAVENDERBLUSH, "Lavender Blush");
		}
		else if (strval(tmp) == 7) {
			SendClientMessage(playerid, COLOR_LAWNGREEN, "Lawn Green");
			SendClientMessage(playerid, COLOR_LEMONCHIFFON, "Lemon Chiffon");
			SendClientMessage(playerid, COLOR_LIGHTCORAL, "Light Coral");
			SendClientMessage(playerid, COLOR_LIGHTGOLDENRODYELLOW, "Light Golden Rod Yellow");
			SendClientMessage(playerid, COLOR_LIGHTGRAY, "Light Gray");
			SendClientMessage(playerid, COLOR_LIGHTPINK, "Light Pink");
			SendClientMessage(playerid, COLOR_LIGHTSALMON, "Light Salmon");
			SendClientMessage(playerid, COLOR_LIGHTSEAGREEN, "Light Sea Green");
			SendClientMessage(playerid, COLOR_LIGHTSKYBLUE, "Light Sky Blue");
			SendClientMessage(playerid, COLOR_LIGHTSLATEGRAY, "Light Slate Gray");
		}
		else if (strval(tmp) == 8) {
			SendClientMessage(playerid, COLOR_LIGHTSTEELBLUE, "Light Steel Blue");
			SendClientMessage(playerid, COLOR_LIME, "Lime");
			SendClientMessage(playerid, COLOR_LIMEGREEN, "Lime Green");
			SendClientMessage(playerid, COLOR_LINEN, "Linen");
			SendClientMessage(playerid, COLOR_MAROON, "Maroon");
			SendClientMessage(playerid, COLOR_MEDIUMAQUAMARINE, "Medium Aquamarine");
			SendClientMessage(playerid, COLOR_MEDIUMBLUE, "Mediu mBlue");
			SendClientMessage(playerid, COLOR_MEDIUMORCHID, "Medium Orchid");
			SendClientMessage(playerid, COLOR_MEDIUMPURPLE, "Medium Purple");
			SendClientMessage(playerid, COLOR_MEDIUMSEAGREEN, "Medium Sea Green");
		}
		else if (strval(tmp) == 9) {
			SendClientMessage(playerid, COLOR_MEDIUMSLATEBLUE, "Medium Slate Blue");
			SendClientMessage(playerid, COLOR_MEDIUMSPRINGGREEN, "Medium Spring Green");
			SendClientMessage(playerid, COLOR_MEDIUMTURQUOISE, "Medium Turquoise");
			SendClientMessage(playerid, COLOR_MEDIUMVIOLETRED, "Medium Violet Red");
			SendClientMessage(playerid, COLOR_MIDNIGHTBLUE, "Midnight Blue");
			SendClientMessage(playerid, COLOR_MINTCREAM, "Mint Cream");
			SendClientMessage(playerid, COLOR_MISTYROSE, "Misty Rose");
			SendClientMessage(playerid, COLOR_MOCCASIN, "Moccasin");
			SendClientMessage(playerid, COLOR_NAVAJOWHITE, "Navajo White");
			SendClientMessage(playerid, COLOR_NAVY, "Navy");
		}
		else if (strval(tmp) == 10) {
			SendClientMessage(playerid, COLOR_OLDLACE, "Oldlace");
			SendClientMessage(playerid, COLOR_OLIVE, "Olive");
			SendClientMessage(playerid, COLOR_OLIVEDRAB, "Olive Drab");
			SendClientMessage(playerid, COLOR_ORANGE, "Orange");
			SendClientMessage(playerid, COLOR_ORANGERED, "Orange Red");
			SendClientMessage(playerid, COLOR_ORCHID, "Orchid");
			SendClientMessage(playerid, COLOR_PALEGOLDENROD, "Pale Golden Rod");
			SendClientMessage(playerid, COLOR_PALEGREEN, "Pale Green");
			SendClientMessage(playerid, COLOR_PALETURQUOISE, "Pale Turquoise");
			SendClientMessage(playerid, COLOR_PALEVIOLETRED, "Pale Violet Red");
		}
		else if (strval(tmp) == 11) {
			SendClientMessage(playerid, COLOR_PAPAYAWHIP, "Papaya Whip");
			SendClientMessage(playerid, COLOR_PEACHPUFF, "Peach Puff");
			SendClientMessage(playerid, COLOR_PERU, "Peru");
			SendClientMessage(playerid, COLOR_PINK, "Pink");
			SendClientMessage(playerid, COLOR_PLUM, "Plum");
			SendClientMessage(playerid, COLOR_POWDERBLUE, "Powder Blue");
			SendClientMessage(playerid, COLOR_PURPLE, "Purple");
			SendClientMessage(playerid, COLOR_REBECCAPURPLE, "Rebecca Purple");
			SendClientMessage(playerid, COLOR_ROSYBROWN, "Rosy Brown");
			SendClientMessage(playerid, COLOR_ROYALBLUE, "Royal Blue");
		}
		else if (strval(tmp) == 12) {
			SendClientMessage(playerid, COLOR_SADDLEBROWN, "Saddle Brown");
			SendClientMessage(playerid, COLOR_SALMON, "Salmon");
			SendClientMessage(playerid, COLOR_SANDYBROWN, "Sandy Brown");
			SendClientMessage(playerid, COLOR_SEAGREEN, "Sea Green");
			SendClientMessage(playerid, COLOR_SEASHELL, "Sea Shell");
			SendClientMessage(playerid, COLOR_SIENNA, "Sienna");
			SendClientMessage(playerid, COLOR_SILVER, "Silver");
			SendClientMessage(playerid, COLOR_SKYBLUE, "Sky Blue");
			SendClientMessage(playerid, COLOR_SLATEBLUE, "Slate Blue");
			SendClientMessage(playerid, COLOR_SLATEGRAY, "Slate Gray");
		}
		else if (strval(tmp) == 13) {
			SendClientMessage(playerid, COLOR_SNOW, "Snow");
			SendClientMessage(playerid, COLOR_SPRINGGREEN, "Spring Green");
			SendClientMessage(playerid, COLOR_STEELBLUE, "Steel Blue");
			SendClientMessage(playerid, COLOR_TAN, "Tan");
			SendClientMessage(playerid, COLOR_TEAL, "Teal");
			SendClientMessage(playerid, COLOR_THISTLE, "Thistle");
			SendClientMessage(playerid, COLOR_TOMATO, "Tomato");
			SendClientMessage(playerid, COLOR_TURQUOISE, "Turquoise");
			SendClientMessage(playerid, COLOR_VIOLET, "Violet");
			SendClientMessage(playerid, COLOR_WHEAT, "Wheat");
		}
		else if (strval(tmp) == 14) {
			SendClientMessage(playerid, COLOR_WHITESMOKE, "White Smoke");
			SendClientMessage(playerid, COLOR_YELLOWGREEN, "Yellow Green");
		}
		else {
			SendClientMessage(playerid, COLOR_INDIANRED, "Undefined argument for command /maincols [0-14]");
		}

		return 1;
	}

	//STRING COLOR TEXT TEST COMMANDS
	if (strcmp("/stringcols", cmdtext, true, 15) == 0) {
		SendClientMessage(playerid, COLOR_WHITE, ""SCOL_BLACK"X"SCOL_WHITE"X"SCOL_RED"X"SCOL_GREEN"X"SCOL_BLUE"X"SCOL_CYAN"X"SCOL_MAGENTA"X"SCOL_YELLOW"X"SCOL_DARKRED"X"SCOL_DARKGREEN"X"SCOL_DARKBLUE"X"SCOL_DARKCYAN"X"SCOL_DARKMAGENTA"X"SCOL_DARKYELLOW"X"SCOL_LIGHTRED"X"SCOL_LIGHTGREEN"X");
		SendClientMessage(playerid, COLOR_WHITE, ""SCOL_LIGHTBLUE"X"SCOL_LIGHTCYAN"X"SCOL_LIGHTMAGENTA"X"SCOL_LIGHTYELLOW"X"SCOL_ALICEBLUE"X"SCOL_ANTIQUEWHITE"X"SCOL_AQUA"X"SCOL_AQUAMARINE"X"SCOL_AZURE"X"SCOL_BEIGE"X"SCOL_BISQUE"X"SCOL_BLANCHEDALMOND"X"SCOL_BLUEVIOLET"X"SCOL_BROWN"X"SCOL_BURLYWOOD"X"SCOL_CADETBLUE"X");
		SendClientMessage(playerid, COLOR_WHITE, ""SCOL_CHARTEREUSE"X"SCOL_CHOCOLATE"X"SCOL_CORAL"X"SCOL_CORNFLOWERBLUE"X"SCOL_CORNSILK"X"SCOL_CRIMSON"X"SCOL_DARKGOLDENROD"X"SCOL_DARKGRAY"X"SCOL_DARKKHAKI"X"SCOL_DARKOLIVEGREEN"X"SCOL_DARKORANGE"X"SCOL_DARKORCHID"X"SCOL_DARKSALMON"X"SCOL_DARKSEAGREEN"X"SCOL_DARKSLATEBLUE"X"SCOL_DARKSLATEGRAY"X");
		SendClientMessage(playerid, COLOR_WHITE, ""SCOL_DARKTURQUOISE"X"SCOL_DARKVIOLET"X"SCOL_DEEPPINK"X"SCOL_DEEPSKYBLUE"X"SCOL_DIMGRAY"X"SCOL_DODGERBLUE"X"SCOL_FIREBRICK"X"SCOL_FLORALWHITE"X"SCOL_FORESTGREEN"X"SCOL_GAINSBORO"X"SCOL_GHOSTWHITE"X"SCOL_GOLD"X"SCOL_GOLDENROD"X"SCOL_DARKERGREEN"X"SCOL_GREENYELLOW"X"SCOL_HONEYDEW"X");
		SendClientMessage(playerid, COLOR_WHITE, ""SCOL_HOTPINK"X"SCOL_INDIANRED"X"SCOL_INDIGO"X"SCOL_IVORY"X"SCOL_KHAKI"X"SCOL_LAVENDER"X"SCOL_LAVENDERBLUSH"X"SCOL_LAWNGREEN"X"SCOL_LEMONCHIFFON"X"SCOL_LIGHTCORAL"X"SCOL_LIGHTGOLDENRODYELLOW"X"SCOL_LIGHTGRAY"X"SCOL_LIGHTPINK"X"SCOL_LIGHTSALMON"X"SCOL_LIGHTSEAGREEN"X"SCOL_LIGHTSKYBLUE"X");
		SendClientMessage(playerid, COLOR_WHITE, ""SCOL_LIGHTSLATEGRAY"X"SCOL_LIGHTSTEELBLUE"X"SCOL_LIME"X"SCOL_LIMEGREEN"X"SCOL_LINEN"X"SCOL_MAROON"X"SCOL_MEDIUMAQUAMARINE"X"SCOL_MEDIUMBLUE"X"SCOL_MEDIUMORCHID"X"SCOL_MEDIUMPURPLE"X"SCOL_MEDIUMSEAGREEN"X"SCOL_MEDIUMSLATEBLUE"X"SCOL_MEDIUMSPRINGGREEN"X"SCOL_MEDIUMTURQUOISE"X"SCOL_MEDIUMVIOLETRED"X"SCOL_MIDNIGHTBLUE"X");
		SendClientMessage(playerid, COLOR_WHITE, ""SCOL_MINTCREAM"X"SCOL_MISTYROSE"X"SCOL_MOCCASIN"X"SCOL_NAVAJOWHITE"X"SCOL_NAVY"X"SCOL_OLDLACE"X"SCOL_OLIVE"X"SCOL_OLIVEDRAB"X"SCOL_ORANGE"X"SCOL_ORANGERED"X"SCOL_ORCHID"X"SCOL_PALEGOLDENROD"X"SCOL_PALEGREEN"X"SCOL_PALETURQUOISE"X"SCOL_PALEVIOLETRED"X"SCOL_PAPAYAWHIP"X");
		SendClientMessage(playerid, COLOR_WHITE, ""SCOL_PEACHPUFF"X"SCOL_PERU"X"SCOL_PINK"X"SCOL_PLUM"X"SCOL_POWDERBLUE"X"SCOL_PURPLE"X"SCOL_REBECCAPURPLE"X"SCOL_ROSYBROWN"X"SCOL_ROYALBLUE"X"SCOL_SADDLEBROWN"X"SCOL_SALMON"X"SCOL_SANDYBROWN"X"SCOL_SEAGREEN"X"SCOL_SEASHELL"X"SCOL_SIENNA"X"SCOL_SILVER"X");
		SendClientMessage(playerid, COLOR_WHITE, ""SCOL_SKYBLUE"X"SCOL_SLATEBLUE"X"SCOL_SLATEGRAY"X"SCOL_SNOW"X"SCOL_SPRINGGREEN"X"SCOL_STEELBLUE"X"SCOL_TAN"X"SCOL_TEAL"X"SCOL_THISTLE"X"SCOL_TOMATO"X"SCOL_TURQUOISE"X"SCOL_VIOLET"X"SCOL_WHEAT"X"SCOL_WHITESMOKE"X"SCOL_YELLOWGREEN"X");
		return 1;
	}

	//PLAY CRIME REPORT COMMAND
	if (strcmp(cmd, "/crime", true) == 0) {
		new tmp[128];
		tmp = strtok(cmdtext, idx);

		if(isnull(tmp)) {
			SendClientMessage(playerid, COLOR_INDIANRED, "Missing argument for command /crime [3-19, 21, 22]");
		}
		else if(strval(tmp) == 3) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_71);
		}
		else if(strval(tmp) == 4) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_37_1);
		}
		else if(strval(tmp) == 5) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_81_1);
		}
		else if(strval(tmp) == 6) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_24);
		}
		else if(strval(tmp) == 7) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_21_1);
		}
		else if(strval(tmp) == 8) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_21_2);
		}
		else if(strval(tmp) == 9) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_21_3);
		}
		else if(strval(tmp) == 10) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_17);
		}
		else if(strval(tmp) == 11) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_81_2);
		}
		else if(strval(tmp) == 12) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_91_1);
		}
		else if(strval(tmp) == 13) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_28_1);
		}
		else if(strval(tmp) == 14) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_81_3);
		}
		else if(strval(tmp) == 15) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_28_2);
		}
		else if(strval(tmp) == 16) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_91_2);
		}
		else if(strval(tmp) == 17) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_34);
		}
		else if(strval(tmp) == 18) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_37_2);
		}
		else if(strval(tmp) == 19) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_81_4);
		}
		else if(strval(tmp) == 21) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_7_1);
		}
		else if(strval(tmp) == 22) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_7_2);
		}
		else {
			SendClientMessage(playerid, COLOR_INDIANRED, "Undefined argument for command /crime [3-19, 21, 22]");
		}

		return 1;
	}

	//TEST EXPLOSIONS COMMAND
	if (strcmp(cmd, "/explosion", true) == 0) {
		new tmp[128];
		tmp = strtok(cmdtext, idx);

		if (isnull(tmp)) {
			SendClientMessage(playerid, COLOR_INDIANRED, "Missing argument for command /explosion [ID]. Type /help explosion for ID list.");
		}
		else if (strcmp(tmp, "small1") == 0) {
			CreateExplosion(cpos_explosion_x, cpos_explosion_y, cpos_explosion_z, EXPLOSION_SMALL_1, 10.0);
		}
		else if (strcmp(tmp, "medium") == 0) {
			CreateExplosion(cpos_explosion_x, cpos_explosion_y, cpos_explosion_z, EXPLOSION_MEDIUM, 10.0);
		}
		else if (strcmp(tmp, "small2") == 0) {
			CreateExplosion(cpos_explosion_x, cpos_explosion_y, cpos_explosion_z, EXPLOSION_SMALL_2, 10.0);
		}
		else if (strcmp(tmp, "small3") == 0) {
			CreateExplosion(cpos_explosion_x, cpos_explosion_y, cpos_explosion_z, EXPLOSION_SMALL_3, 10.0);
		}
		else if (strcmp(tmp, "chem1") == 0) {
			CreateExplosion(cpos_explosion_x, cpos_explosion_y, cpos_explosion_z, EXPLOSION_CHEMICAL_1, 10.0);
		}
		else if (strcmp(tmp, "chem2") == 0) {
			CreateExplosion(cpos_explosion_x, cpos_explosion_y, cpos_explosion_z, EXPLOSION_CHEMICAL_2, 10.0);
		}
		else if (strcmp(tmp, "large1") == 0) {
			CreateExplosion(cpos_explosion_x, cpos_explosion_y, cpos_explosion_z, EXPLOSION_LARGE_1, 10.0);
		}
		else if (strcmp(tmp, "large2") == 0) {
			CreateExplosion(cpos_explosion_x, cpos_explosion_y, cpos_explosion_z, EXPLOSION_LARGE_2, 10.0);
		}
		else if (strcmp(tmp, "invis1") == 0) {
			CreateExplosion(cpos_explosion_x, cpos_explosion_y, cpos_explosion_z, EXPLOSION_INVISIBLE_1, 10.0);
		}
		else if (strcmp(tmp, "invis2") == 0) {
			CreateExplosion(cpos_explosion_x, cpos_explosion_y, cpos_explosion_z, EXPLOSION_INVISIBLE_2, 10.0);
		}
		else if (strcmp(tmp, "large3") == 0) {
			CreateExplosion(cpos_explosion_x, cpos_explosion_y, cpos_explosion_z, EXPLOSION_LARGE_3, 10.0);
		}
		else if (strcmp(tmp, "small4") == 0) {
			CreateExplosion(cpos_explosion_x, cpos_explosion_y, cpos_explosion_z, EXPLOSION_SMALL_4, 10.0);
		}
		else if (strcmp(tmp, "rctiger") == 0) {
			CreateExplosion(cpos_explosion_x, cpos_explosion_y, cpos_explosion_z, EXPLOSION_RCTIGER, 10.0);
		}
		else if (strcmp(tmp, "invis3") == 0) {
			CreateExplosion(cpos_explosion_x, cpos_explosion_y, cpos_explosion_z, EXPLOSION_INVISIBLE_3, 10.0);
		}
		else {
			SendClientMessage(playerid, COLOR_INDIANRED, "Undefined argument for command /explosion [ID]. Type /help explosion for ID list.");
		}

		return 1;
	}

	//GAME TEXT TEST COMMANDS
	if (strcmp(cmd, "/gametext", true) == 0) {
		new tmp[128];
		tmp = strtok(cmdtext, idx);

		if (isnull(tmp)) {
			SendClientMessage(playerid, COLOR_INDIANRED, "Missing argument for command /gametext [ID]. Type /help gametext for ID list.");
		}
		else if (strcmp(tmp, "pricedown") == 0) {
			GameTextForPlayer(playerid, "GMTEXT_STYLE_PRICEDOWN", 2000, GMTEXT_STYLE_PRICEDOWN);
		}
		else if (strcmp(tmp, "rpricedown") == 0) {
			GameTextForPlayer(playerid, "GMTEXT_STYLE_RPRICEDOWN", 2000, GMTEXT_STYLE_RPRICEDOWN);
		}
		else if (strcmp(tmp, "sa") == 0) {
			GameTextForPlayer(playerid, "GMTEXT_STYLE_SA", 2000, GMTEXT_STYLE_SA);
		}
		else if (strcmp(tmp, "slim1") == 0) {
			GameTextForPlayer(playerid, "GMTEXT_STYLE_SLIM1", 2000, GMTEXT_STYLE_SLIM1);
		}
		else if (strcmp(tmp, "slim2") == 0) {
			GameTextForPlayer(playerid, "GMTEXT_STYLE_SLIM2", 2000, GMTEXT_STYLE_SLIM2);
		}
		else if (strcmp(tmp, "slimw") == 0) {
			GameTextForPlayer(playerid, "GMTEXT_STYLE_SLIMW", 2000, GMTEXT_STYLE_SLIMW);
		}
		else if (strcmp(tmp, "bpricedown") == 0) {
			GameTextForPlayer(playerid, "GMTEXT_STYLE_BPRICEDOWN", 2000, GMTEXT_STYLE_BPRICEDOWN);
		}
		else if (strcmp(tmp, "vehname") == 0) {
			GameTextForPlayer(playerid, "GMTEXT_STYLE_VEHNAME", 2000, GMTEXT_STYLE_VEHNAME);
		}
		else if (strcmp(tmp, "location") == 0) {
			GameTextForPlayer(playerid, "GMTEXT_STYLE_LOCATION", 2000, GMTEXT_STYLE_LOCATION);
		}
		else if (strcmp(tmp, "radio") == 0) {
			GameTextForPlayer(playerid, "GMTEXT_STYLE_RADIO", 2000, GMTEXT_STYLE_RADIO);
		}
		else if (strcmp(tmp, "radiow") == 0) {
			GameTextForPlayer(playerid, "GMTEXT_STYLE_RADIOW", 2000, GMTEXT_STYLE_RADIOW);
		}
		else if (strcmp(tmp, "pmoney") == 0) {
			GameTextForPlayer(playerid, "GMTEXT_STYLE_PMONEY", 2000, GMTEXT_STYLE_PMONEY);
		}
		else if (strcmp(tmp, "nmoney") == 0) {
			GameTextForPlayer(playerid, "GMTEXT_STYLE_NMONEY", 2000, GMTEXT_STYLE_NMONEY);
		}
		else if (strcmp(tmp, "stunt") == 0) {
			GameTextForPlayer(playerid, "GMTEXT_STYLE_STUNT", 2000, GMTEXT_STYLE_STUNT);
		}
		else if (strcmp(tmp, "clock") == 0) {
			GameTextForPlayer(playerid, "GMTEXT_STYLE_CLOCK", 2000, GMTEXT_STYLE_CLOCK);
		}
		else if (strcmp(tmp, "notification") == 0) {
			GameTextForPlayer(playerid, "GMTEXT_STYLE_NOTIFICATION", 2000, GMTEXT_STYLE_NOTIFICATION);
		}
		else {
			SendClientMessage(playerid, COLOR_INDIANRED, "Undefined argument for command /gametext [ID]. Type /help gametext for ID list.");
		}

		return 1;
	}


	//WEATHER COMMANDS
	if (strcmp("/w extrasunnyla", cmdtext, true, 10) == 0) {
		SetWeather(WEATHER_EXSUNNY_LA);
		return 1;
	}
	
	if (strcmp("/w sunnyla", cmdtext, true, 10) == 0) {
		SetWeather(WEATHER_SUNNY_LA);
		return 1;
	}
	
	if (strcmp("/w extrasunnysmogla", cmdtext, true, 10) == 0) {
		SetWeather(WEATHER_EXSUNNY_SMOG_LA);
		return 1;
	}
	
	if (strcmp("/w sunnysmogla", cmdtext, true, 10) == 0) {
		SetWeather(WEATHER_SUNNY_SMOG_LA);
		return 1;
	}
	
	if (strcmp("/w cloudyla", cmdtext, true, 10) == 0) {
		SetWeather(WEATHER_CLOUDY_LA);
		return 1;
	}
	
	if (strcmp("/w sunnysf", cmdtext, true, 10) == 0) {
		SetWeather(WEATHER_SUNNY_SF);
		return 1;
	}
	
	if (strcmp("/w extrasunnysf", cmdtext, true, 10) == 0) {
		SetWeather(WEATHER_EXSUNNY_SF);
		return 1;
	}
	
	if (strcmp("/w cloudysf", cmdtext, true, 10) == 0) {
		SetWeather(WEATHER_CLOUDY_SF);
		return 1;
	}
	
	if (strcmp("/w rainysf", cmdtext, true, 10) == 0) {
		SetWeather(WEATHER_RAINY_SF);
		return 1;
	}
	
	if (strcmp("/w foggysf", cmdtext, true, 10) == 0) {
		SetWeather(WEATHER_FOGGY_SF);
		return 1;
	}
	
	if (strcmp("/w sunnyvegas", cmdtext, true, 10) == 0) {
		SetWeather(WEATHER_SUNNY_VEGAS);
		return 1;
	}
	
	if (strcmp("/w extrasunnyvegas", cmdtext, true, 10) == 0) {
		SetWeather(WEATHER_EXSUNNY_VEGAS);
		return 1;
	}
	
	if (strcmp("/w cloudyvegas", cmdtext, true, 10) == 0) {
		SetWeather(WEATHER_CLOUDY_VEGAS);
		return 1;
	}
	
	if (strcmp("/w extrasunnycountry", cmdtext, true, 10) == 0) {
		SetWeather(WEATHER_EXSUNNY_CTRYSIDE);
		return 1;
	}
	
	if (strcmp("/w sunnycountry", cmdtext, true, 10) == 0) {
		SetWeather(WEATHER_SUNNY_CTRYSIDE);
		return 1;
	}
	
	if (strcmp("/w cloudycountry", cmdtext, true, 10) == 0) {
		SetWeather(WEATHER_CLOUDY_CTRYSIDE);
		return 1;
	}
	
	if (strcmp("/w rainycountry", cmdtext, true, 10) == 0) {
		SetWeather(WEATHER_RAINY_CTRYSIDE);
		return 1;
	}
	
	if (strcmp("/w extrasunnydesert", cmdtext, true, 10) == 0) {
		SetWeather(WEATHER_EXSUNNY_DESERT);
		return 1;
	}
	
	if (strcmp("/w sunnydesert", cmdtext, true, 10) == 0) {
		SetWeather(WEATHER_SUNNY_DESERT);
		return 1;
	}
	
	if (strcmp("/w sandstorm", cmdtext, true, 10) == 0) {
		SetWeather(WEATHER_SANDSTORM_DESERT);
		return 1;
	}
	
	if (strcmp("/w underwater", cmdtext, true, 10) == 0) {
		SetWeather(WEATHER_UNDERWATER);
		return 1;
	}

	//TELEPORT COMMANDS
	if (strcmp("/tp warehouse2", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_WAREHOUSE2, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp transfenders", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_TRANSFENDER, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp worldofcoq", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_WORLDOFCOQ, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp ammunation2", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_AMMUNATION2, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp suburban", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_SUBURBAN, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp denise", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_DENISEBEDROOM, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp sfgarage", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_SFGARAGE, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp ovalstadium", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_OVALSTADIUM, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp libertycity", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_LIBERTYCITY, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp sweet", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_SWEETSHOUSE, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp caligulas", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_CALIGULAS, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp wuzimu", cmdtext, true, 20) == 0) {
 		MppTeleportEx(playerid, LOC_WUZIMU, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp jet", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_JET, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp welcomepump", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_WELCOMEPUMP, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp burgh3", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BURGH3, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp abattoir", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_ABATTOIR, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp shcameltoe", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_SHCAMELTOE, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp caligroof", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_CALIGROOF, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp bduppalace", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BDUPPALACE, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp pigpen", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_THEPIGPEN, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp ryder", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_RYDERSHOUSE, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp katiesnest", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_KATIESNEST, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp reece", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_REECES, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp aptrailer", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_APTRAILER, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp crackpalace", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BSCRACKPALACE, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp burgh2", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BURGH2, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp pairburgh", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_PAIRBURGH, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp caligoffice", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_CALIGOFFICE, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp stripcasino", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_STRIPCASINO, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp locolowco", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_LOCOLOWCO, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp brothel1", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BROTHEL1, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp brothel2", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BROTHEL2, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp insidetrack", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_ITBETTING, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp bfrecords", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BFRECORDS, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp bsranch", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BSRANCH, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp bdupapt", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BDUPAPT, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp wheelarch", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_WARCHANGELS, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp oglochouse", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_OGLOCHOUSE, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp barbershop", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BARBERSHOP, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp planningdpt", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_PLANNINGDPT, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp lvpdhq", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_LVPDHQ, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp prolaps", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_PROLAPS, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp sexshop", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_SEXSHOP, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp lvtattoo", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_LVTATTOO, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp helenasbarn", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_HELENASBARN, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp johnsonhouse", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_JOHNSONHOUSE, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp pleasuredomes", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_PLEASUREDOMES, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp burgh1", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BURGH1, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp bikeschool", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BIKESCHOOL, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp drivingschool", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_DRIVESCHOOL, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp burgh12", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BURGH12, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp ammunation3", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_AMMUNATION3, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp jaysdinner", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_JAYSDINER, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp 247v5", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_247V5, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp michelle", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_MICHELLESNEST, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp burgh13", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BURGH13, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp dirtbike", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_DIRTBIKE, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp burgh15", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BURGH15, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp gantongym", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_GANTONGYM, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp diner1", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_DINER1, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp pizzastack", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_PIZZASTACK, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp victim", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_VICTIM, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp barbara", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BARBARASNEST, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp madddogg", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_MADDDOGGMANSION, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp burningdesire", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BURNINGDESIREB, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp safehouse1", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_SAFEHOUSE1, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp burgh4", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BURGH4, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp crackden", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_CRACKDEN, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp burgh11", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BURGH11, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp burgh16", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BURGH16, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp burgh17", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BURGH17, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp safehouse2", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_SAFEHOUSE2, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp millie", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_MILLIESROOM, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp cobragym", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_COBRAGYM, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp lspdhq", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_LSPDHQ, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp burgh18", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BURGH18, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp burgh19", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BURGH19, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp zerorc", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_ZERORCSHOP, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp ammunation4", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_AMMUNATION4, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp ammunation5", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_AMMUNATION5, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp 247v6", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_247V6, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp valleydiner", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_VALLEYDINER, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp whorehouse", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_WHOREHOUSE, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp ammunation", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_AMMUNATION, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp belowbeltgym", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BBELTGYM, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp 8track", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_8TSTADIUM, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp colonels", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_COLONELS, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp verdantbluffs", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_SHVBLUFFS, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp burgh21", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BURGH21, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp safehouse3", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_SAFEHOUSE3, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp cbell", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_CBELL, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp andromada", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_ANDROMADA, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp burgh22", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BURGH22, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp burgh23", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BURGH23, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp sfpdhq", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_SFPDHQ, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp 247v2", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_247V2, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp fourdragons", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_FOURDRAGONS, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp rcbattlefield", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_RCBATTLEFIELD, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp burgershot", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BURGERSHOT, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp actower", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_ACTOWER, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp safehouse4", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_SAFEHOUSE4, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp burgh14", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BURGH14, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp cfdjanitor", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_CFDJANITOR, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp cfdsuite", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_CFDSUITE, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp bar", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BAR, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp shwfield", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_SHWFIELD, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp casino", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_CASINO, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp budgetmotel", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BUDGETMOTEL, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp usafehouse", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_USAFEHOUSE, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp barber2", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BARBERSHOP2, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp wardrobe", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_WARDROBE, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp didersachs", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_DIDERSACHS, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp kickstartstadium", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_KICKSTADIUM, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp lsairport", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_LSAIRPORT, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp francisintl", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_FRANCISINTL, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp jeffersonmotel", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_JEFFERSONM, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp binco", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BINCO, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp 4burgh", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_4BURGH, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp bloodbowl", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BLOODBOWL, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp burgh20", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BURGH20, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp lstattoo", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_LSTATTOO, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp 247v4", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_247V4, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp vicestadium", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_VICESTADIUM, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp lsftattoo", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_LSFTATTOO, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp 247v1", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_247V1, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp donutshop", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_RUSTYBDONUTS, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp club", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_CLUB, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp shermandam", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_SHERMANDAM, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp warehouse1", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_WAREHOUSE1, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp 247v3", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_247V3, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp zip", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_ZIP, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp atrium", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_ATRIUM, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp lilprobeinn", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_LILPROBEINN, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp palobank", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_PALOBANK, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp palodiner", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_PALODINER, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp dilligast", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_DILLIGASST, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp ranch", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_TORRENOR, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp zombotech", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_ZOMBOTECH, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp cemetery", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_LSCEMETC, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp liqorstore", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BLUEBLIQ, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp warehouse3", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_WAREHOUSE3, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp militarydepo", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_MILITARYDEPO, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp area69", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_AREA69, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp bikesch", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_BIKESCH, COLOR_LIMEGREEN);
		return 1;
	}

	if (strcmp("/tp ottoautos", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_OTTOAUTOS, COLOR_LIMEGREEN);
		return 1;
	}
	
	if (strcmp("/tp wangcars", cmdtext, true, 20) == 0) {
		MppTeleportEx(playerid, LOC_WANGCARS, COLOR_LIMEGREEN);
		return 1;
	}

	//TELEPORT TO COORDINATES
	if (strcmp("/tpcoord", cmdtext, true, 20) == 0) {
		//Teleport to end of runway
		MppTeleportToCoords(playerid, 49.4172, 2512.4282, 16.4844, 0, 272);
		return 1;
	}

	//SET VEHICLE HEALTH
	if (strcmp("/setvehiclehealth full", cmdtext, true, 35) == 0) {
		new vehicleid = GetPlayerVehicleID(playerid);
		SetVehicleHealth(vehicleid, VEH_HEALTH_FULL);
		return 1;
	}
	
	if (strcmp("/setvehiclehealth fulllow", cmdtext, true, 35) == 0) {
		new vehicleid = GetPlayerVehicleID(playerid);
		SetVehicleHealth(vehicleid, VEH_HEALTH_FULL_LOW);
		return 1;
	}
	
	if (strcmp("/setvehiclehealth whitesmoke", cmdtext, true, 35) == 0) {
		new vehicleid = GetPlayerVehicleID(playerid);
		SetVehicleHealth(vehicleid, VEH_HEALTH_WHITESMOKE);
		return 1;
	}
	
	if (strcmp("/setvehiclehealth whitesmokelow", cmdtext, true, 35) == 0) {
		new vehicleid = GetPlayerVehicleID(playerid);
		SetVehicleHealth(vehicleid, VEH_HEALTH_WHITESMOKE_LOW);
		return 1;
	}
	
	if (strcmp("/setvehiclehealth greysmoke", cmdtext, true, 35) == 0) {
		new vehicleid = GetPlayerVehicleID(playerid);
		SetVehicleHealth(vehicleid, VEH_HEALTH_GREYSMOKE);
		return 1;
	}

	if (strcmp("/setvehiclehealth greysmokelow", cmdtext, true, 35) == 0) {
		new vehicleid = GetPlayerVehicleID(playerid);
		SetVehicleHealth(vehicleid, VEH_HEALTH_GREYSMOKE_LOW);
		return 1;
	}
	
	if (strcmp("/setvehiclehealth blacksmoke", cmdtext, true, 35) == 0) {
		new vehicleid = GetPlayerVehicleID(playerid);
		SetVehicleHealth(vehicleid, VEH_HEALTH_BLACKSMOKE);
		return 1;
	}

	if (strcmp("/setvehiclehealth blacksmokelow", cmdtext, true, 35) == 0) {
		new vehicleid = GetPlayerVehicleID(playerid);
		SetVehicleHealth(vehicleid, VEH_HEALTH_BLACKSMOKE_LOW);
		return 1;
	}
	
	if (strcmp("/setvehiclehealth onfire", cmdtext, true, 35) == 0) {
		new vehicleid = GetPlayerVehicleID(playerid);
		SetVehicleHealth(vehicleid, VEH_HEALTH_ONFIRE);
		return 1;
	}


	//SHOW PLAYER POSITION COORDINATES
	if (strcmp("/showplayerpos", cmdtext, true, 15) == 0) {
		MppShowPlayerPosition(playerid, COLOR_LIGHTRED);
		return 1;
	}


	//SHOW VEHICLE INFORMATION
	if (strcmp("/showvehicleinfo", cmdtext, true, 15) == 0) {
		MppShowVehicleInfo(playerid, VehicleModelID, COLOR_LIGHTRED);
		return 1;
	}


	//SHOW PLAYER CAMERA MODE
	if (strcmp("/cameramode", cmdtext, true, 15) == 0) {
		new szMessage[128]; new sCammode[128];

		switch(GetPlayerCameraMode(playerid)) {
			case CAMMODE_FOLLOWPED: sCammode = "CAMMODE_FOLLOWPED";
			case CAMMODE_SNIPER: sCammode = "CAMMODE_SNIPER";
			case CAMMODE_ROCKETAIM: sCammode = "CAMMODE_ROCKETAIM";
			case CAMMODE_FIXED: sCammode = "CAMMODE_FIXED";
			case CAMMODE_VEHICLEFRONT: sCammode = "CAMMODE_VEHICLEFRONT";
			case CAMMODE_VEHICLEDEFAULT: sCammode = "CAMMODE_VEHICLEDEFAULT";
			case CAMMODE_BOATDEFAULT: sCammode = "CAMMODE_BOATDEFAULT";
			case CAMMODE_ROCKETAIM2: sCammode = "CAMMODE_ROCKETAIM2";
			case CAMMODE_WEAPONAIM2: sCammode = "CAMMODE_WEAPONAIM2";
			case CAMMODE_VEHICLEPASSENGER: sCammode = "CAMMODE_VEHICLEPASSENGER";
			case CAMMODE_HELICHASE: sCammode = "CAMMODE_HELICHASE";
			case CAMMODE_GROUNDCHASE: sCammode = "CAMMODE_GROUNDCHASE";
			case CAMMODE_FLYBYCHASE: sCammode = "CAMMODE_FLYBYCHASE";
			case CAMMODE_GROUNDCHASE2: sCammode = "CAMMODE_GROUNDCHASE2";
			case CAMMODE_FLYBYCHASE2: sCammode = "CAMMODE_FLYBYCHASE2";
			case CAMMODE_FLYBYCHASE3: sCammode = "CAMMODE_FLYBYCHASE3";
			case CAMMODE_PILOTCHASE: sCammode = "CAMMODE_PILOTCHASE";
			default: sCammode = "Unknown Camera Mode";
		}

		format(szMessage, sizeof(szMessage), "Camera mode: %d %s", GetPlayerCameraMode(playerid), sCammode);
		SendClientMessage(playerid, COLOR_LIGHTBLUE, szMessage);
		return 1;
	}

	//CHANGE PLAYER CLASS/PLAYER SKIN
	if (strcmp("/changeskin", cmdtext, true, 15) == 0) {
		SetPlayerFacingAngle(playerid, 270);
		ForceClassSelection(playerid);
		TogglePlayerSpectating(playerid, true);
		TogglePlayerSpectating(playerid, false);
		return 1;
	}

	//SHOW PLAYER NAME
	if(strcmp(cmdtext, "/myname", true) == 0) {
		new sMsg[256];
		format(sMsg, sizeof(sMsg), "Your name is %s", MppGetPlayerName(playerid));
		SendClientMessage(playerid, COLOR_LIGHTBLUE, sMsg);
		return 1;
	}


	return 0;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	VehicleModelID = GetVehicleModel(vehicleid);

	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	VehicleModelID = 0;

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
	else if(pickupid == pickupArmor) {
		SetPlayerArmour(playerid, 100);
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

public OnPlayerGiveDamageActor(playerid, damaged_actorid, Float: amount, weaponid, bodypart)
{
	new string[128], attacker[MAX_PLAYER_NAME], sbodypart[128];
	new weaponname[24];
	GetPlayerName(playerid, attacker, sizeof (attacker));
	GetWeaponName(weaponid, weaponname, sizeof (weaponname));

	switch(bodypart) {
		case BODYPART_TORSO: sbodypart = "torso";
		case BODYPART_GROIN: sbodypart = "groin";
		case BODYPART_LEFTARM: sbodypart = "left arm";
		case BODYPART_RIGHTARM: sbodypart = "right arm";
		case BODYPART_LEFTLEG: sbodypart = "left leg";
		case BODYPART_RIGHTLEG: sbodypart = "right leg";
		case BODYPART_HEAD: sbodypart = "head";
		default: sbodypart = "undefined";
	}

	format(string, sizeof(string), "%s has made %.0f damage to actor id %d, weapon: %s, sbodypart: %s", attacker, amount, damaged_actorid, weaponname, sbodypart);
	SendClientMessageToAll(COLOR_WHITE, string);

	return 1;
}
