/*
 * This file is part of Includes for San Andreas Multiplayer+
 * as its sandbox game mode for San Andreas Multiplayer Mod (SA-MP)
 * 2018 - 2025, Ivan Kmeto
 *
 * CC0 1.0 Universal (CC0 1.0) Public Domain Dedication
 * https://creativecommons.org/publicdomain/zero/1.0/
 */


#include <a_samp>
#include <i_sampp>


main()
{
	print("----------------------------");
	printf("ISAMPP %s Sandbox GameMode", ISAMPP_VERSION);
	print("----------------------------\n");
	print_isampp_version();
	print_pawncc_version();
}


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
new pickupWeapPhone;
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
new pickupMoney;
new pickupHealth;
new pickupArmor;
new pickupBeerBottle1;
new pickupBeerBottle2;
new pickupBribe;
new pickupTiki;

//Get and Store Vehicle Model
new VehicleModelID = 0;

//Create Actor Dummy
new gActorDummy;


public OnGameModeInit()
{
	SetWorldTime(12);
	SetGameModeText("ISAMPP 2.0 Sandbox GameMode");

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
	pickupWeapRdildo = CreatePickup(PICKUP_WEAP_RDILDO, PICKUP_TYPE_RESPAWN_30S, 425.5590, 2480.2830, 16.4844, -1);
	pickupWeapWdildo = CreatePickup(PICKUP_WEAP_WDILDO, PICKUP_TYPE_RESPAWN_30S, 420.5590, 2480.2830, 16.4844, -1);
	pickupWeapVibrator = CreatePickup(PICKUP_WEAP_VIBRATOR, PICKUP_TYPE_RESPAWN_30S, 415.5590, 2480.2830, 16.4844, -1);
	pickupWeapVibrator2 = CreatePickup(PICKUP_WEAP_VIBRATOR2, PICKUP_TYPE_RESPAWN_30S, 410.5590, 2480.2830, 16.4844, -1);
	pickupWeapFlowers = CreatePickup(PICKUP_WEAP_FLOWERS, PICKUP_TYPE_RESPAWN_30S, 405.5590, 2480.2830, 16.4844, -1);
	pickupWeapCane = CreatePickup(PICKUP_WEAP_CANE, PICKUP_TYPE_RESPAWN_30S, 400.5590, 2480.2830, 16.4844, -1);
	pickupWeapPhone = CreatePickup(PICKUP_WEAP_PHONE, PICKUP_TYPE_RESPAWN_30S, 395.5590, 2480.2830, 16.4844, -1);
	pickupWeapBrassKnuckles = CreatePickup(PICKUP_WEAP_BRASSKNUCKLES, PICKUP_TYPE_RESPAWN_30S, 390.5590, 2480.2830, 16.4844, -1);
	pickupWeapGolfClub = CreatePickup(PICKUP_WEAP_GOLFCLUB, PICKUP_TYPE_RESPAWN_30S, 385.5590, 2480.2830, 16.4844, -1);
	pickupWeapNightStick = CreatePickup(PICKUP_WEAP_NIGHTSTICK, PICKUP_TYPE_RESPAWN_30S, 380.5590, 2480.2830, 16.4844, -1);
	pickupWeapKnife = CreatePickup(PICKUP_WEAP_KNIFE, PICKUP_TYPE_RESPAWN_30S, 375.5590, 2480.2830, 16.4844, -1);
	pickupWeapBaseballBat = CreatePickup(PICKUP_WEAP_BASEBALLBAT, PICKUP_TYPE_RESPAWN_30S, 370.5590, 2480.2830, 16.4844, -1);
	pickupWeapShovel = CreatePickup(PICKUP_WEAP_SHOVEL, PICKUP_TYPE_RESPAWN_30S, 365.5590, 2480.2830, 16.4844, -1);
	pickupWeapPoolCue = CreatePickup(PICKUP_WEAP_POOLCUE, PICKUP_TYPE_RESPAWN_30S, 360.5590, 2480.2830, 16.4844, -1);
	pickupWeapKatana = CreatePickup(PICKUP_WEAP_KATANA, PICKUP_TYPE_RESPAWN_30S, 355.5590, 2480.2830, 16.4844, -1);
	pickupWeapChainsaw = CreatePickup(PICKUP_WEAP_CHAINSAW, PICKUP_TYPE_RESPAWN_30S, 350.5590, 2480.2830, 16.4844, -1);
	pickupWeapGrenade = CreatePickup(PICKUP_WEAP_GRENADE, PICKUP_TYPE_RESPAWN_30S, 345.5590, 2480.2830, 16.4844, -1);
	pickupWeapTeargas = CreatePickup(PICKUP_WEAP_TEARGAS, PICKUP_TYPE_RESPAWN_30S, 340.5590, 2480.2830, 16.4844, -1);
	pickupWeapMolotov = CreatePickup(PICKUP_WEAP_MOLOTOV, PICKUP_TYPE_RESPAWN_30S, 335.5590, 2480.2830, 16.4844, -1);
	pickupWeapPistol = CreatePickup(PICKUP_WEAP_PISTOL, PICKUP_TYPE_RESPAWN_30S, 330.5590, 2480.2830, 16.4844, -1);
	pickupWeapSilencedPistol = CreatePickup(PICKUP_WEAP_SILENCEDPISTOL, PICKUP_TYPE_RESPAWN_30S, 325.5590, 2480.2830, 16.4844, -1);
	pickupWeapDeagle = CreatePickup(PICKUP_WEAP_DEAGLE, PICKUP_TYPE_RESPAWN_30S, 320.5590, 2480.2830, 16.4844, -1);
	pickupWeapShotgun = CreatePickup(PICKUP_WEAP_SHOTGUN, PICKUP_TYPE_RESPAWN_30S, 315.5590, 2480.2830, 16.4844, -1);
	pickupWeapSawedoff = CreatePickup(PICKUP_WEAP_SAWNOFF, PICKUP_TYPE_RESPAWN_30S, 310.5590, 2480.2830, 16.4844, -1);
	pickupWeapAutoshotgun = CreatePickup(PICKUP_WEAP_AUTOSHOTGUN, PICKUP_TYPE_RESPAWN_30S, 305.5590, 2480.2830, 16.4844, -1);
	pickupWeapMicroUzi = CreatePickup(PICKUP_WEAP_MICROUZI, PICKUP_TYPE_RESPAWN_30S, 300.5590, 2480.2830, 16.4844, -1);
	pickupWeapMP5 = CreatePickup(PICKUP_WEAP_MP5, PICKUP_TYPE_RESPAWN_30S, 295.5590, 2480.2830, 16.4844, -1);
	CreatePickup(PICKUP_WEAP_HYDRAFLARE, PICKUP_TYPE_SCRIPTED, 290.5590, 2480.2830, 16.4844, -1);
	pickupWeapAK47 = CreatePickup(PICKUP_WEAP_AK47, PICKUP_TYPE_RESPAWN_30S, 285.5590, 2480.2830, 16.4844, -1);
	pickupWeapM4 = CreatePickup(PICKUP_WEAP_M4, PICKUP_TYPE_RESPAWN_30S, 280.5590, 2480.2830, 16.4844, -1);
	pickupWeapRifle = CreatePickup(PICKUP_WEAP_RIFLE, PICKUP_TYPE_RESPAWN_30S, 275.5590, 2480.2830, 16.4844, -1);
	pickupWeapSniperRifle = CreatePickup(PICKUP_WEAP_SNIPERRIFLE, PICKUP_TYPE_RESPAWN_30S, 270.5590, 2480.2830, 16.4844, -1);
	pickupWeapRPG = CreatePickup(PICKUP_WEAP_RPG, PICKUP_TYPE_RESPAWN_30S, 265.5590, 2480.2830, 16.4844, -1);
	pickupWeapHeatRPG = CreatePickup(PICKUP_WEAP_HEATRPG, PICKUP_TYPE_RESPAWN_30S, 260.5590, 2480.2830, 16.4844, -1);
	pickupWeapFlamethrower = CreatePickup(PICKUP_WEAP_FLAMETHROWER, PICKUP_TYPE_RESPAWN_30S, 255.5590, 2480.2830, 16.4844, -1);
	pickupWeapMinigun = CreatePickup(PICKUP_WEAP_MINIGUN, PICKUP_TYPE_RESPAWN_30S, 250.5590, 2480.2830, 16.4844, -1);
	pickupWeapSatchel = CreatePickup(PICKUP_WEAP_SATCHEL, PICKUP_TYPE_RESPAWN_30S, 245.5590, 2480.2830, 16.4844, -1);
	pickupWeapDetonator = CreatePickup(PICKUP_WEAP_DETONATOR, PICKUP_TYPE_RESPAWN_30S, 240.5590, 2480.2830, 16.4844, -1);
	pickupWeapSpray = CreatePickup(PICKUP_WEAP_SPRAY, PICKUP_TYPE_RESPAWN_30S, 235.5590, 2480.2830, 16.4844, -1);
	pickupWeapExtinguisher = CreatePickup(PICKUP_WEAP_EXTINGUISHER, PICKUP_TYPE_RESPAWN_30S, 230.5590, 2480.2830, 16.4844, -1);
	pickupWeapCamera = CreatePickup(PICKUP_WEAP_CAMERA, PICKUP_TYPE_RESPAWN_30S, 225.5590, 2480.2830, 16.4844, -1);
	pickupWeapNGoggles = CreatePickup(PICKUP_WEAP_NGOGGLES, PICKUP_TYPE_RESPAWN_30S, 220.5590, 2480.2830, 16.4844, -1);
	pickupWeapTGoggles = CreatePickup(PICKUP_WEAP_TGOGGLES, PICKUP_TYPE_RESPAWN_30S, 215.5590, 2480.2830, 16.4844, -1);
	CreatePickup(PICKUP_WEAP_JETPACK, PICKUP_TYPE_SCRIPTED, 210.5590, 2480.2830, 16.4844, -1);
	pickupWeapParachute = CreatePickup(PICKUP_WEAP_PARACHUTE, PICKUP_TYPE_RESPAWN_30S, 205.5590, 2480.2830, 16.4844, -1);
	pickupWeapTec9 = CreatePickup(PICKUP_WEAP_TEC9, PICKUP_TYPE_RESPAWN_30S, 200.5590, 2480.2830, 16.4844, -1);

	//PICKUPS - ROW 2
	CreatePickup(PICKUP_BRIEFCASE, PICKUP_TYPE_SCRIPTED, 425.5590, 2486.2830, 16.4844, -1);
	pickupMoney = CreatePickup(PICKUP_MONEY, PICKUP_TYPE_MONEY, 420.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_INFO, PICKUP_TYPE_SCRIPTED, 415.5590, 2486.2830, 16.4844, -1);
	pickupHealth = CreatePickup(PICKUP_HEALTH, PICKUP_TYPE_RESPAWN_30S, 410.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_ADRENALINE, PICKUP_TYPE_SCRIPTED, 405.5590, 2486.2830, 16.4844, -1);
	pickupArmor = CreatePickup(PICKUP_BODYARMOUR, PICKUP_TYPE_RESPAWN_30S, 400.5590, 2486.2830, 16.4844, -1);
	pickupBribe = CreatePickup(PICKUP_BRIBE, PICKUP_TYPE_RESPAWN_12M, 395.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_BONUS, PICKUP_TYPE_SCRIPTED, 390.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_BARRELEXPLOSIVE, PICKUP_TYPE_SCRIPTED, 385.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_PHOTOOP, PICKUP_TYPE_SNAPSHOT, 380.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_KILLFRENZY, PICKUP_TYPE_SCRIPTED, 375.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_KILLFRENZY2, PICKUP_TYPE_SCRIPTED, 370.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_PROPERTY_LOCKED, PICKUP_TYPE_SCRIPTED, 365.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_PROPERTY_FSALE, PICKUP_TYPE_SCRIPTED, 360.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_BIGDOLLAR, PICKUP_TYPE_SCRIPTED, 355.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_CLOTHES, PICKUP_TYPE_SCRIPTED, 350.5590, 2486.2830, 16.4844, -1);
	pickupTiki = CreatePickup(PICKUP_TIKI, PICKUP_TYPE_ONCE, 290.81, 2535.687, 25.50665, -1);
	CreatePickup(PICKUP_SAVE, PICKUP_TYPE_SCRIPTED, 345.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_CRAIGPACKAGE, PICKUP_TYPE_SCRIPTED, 340.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_TWOPLAYER, PICKUP_TYPE_SCRIPTED, 335.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_CORONA, PICKUP_TYPE_SCRIPTED, 330.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_CHECKPOINT, PICKUP_TYPE_SCRIPTED, 325.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_WHITEARROW, PICKUP_TYPE_SCRIPTED, 320.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_YELLOWARROW, PICKUP_TYPE_SCRIPTED, 315.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_PIZZABOX, PICKUP_TYPE_SCRIPTED, 310.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_RHYMEBOOK, PICKUP_TYPE_SCRIPTED, 305.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_CJAMMOBOX, PICKUP_TYPE_SCRIPTED, 300.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_CJSAWNOFF, PICKUP_TYPE_SCRIPTED, 295.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_CJSAWNOFF2, PICKUP_TYPE_SCRIPTED, 290.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_CJMP5, PICKUP_TYPE_SCRIPTED, 285.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_LOTION, PICKUP_TYPE_SCRIPTED, 280.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_PAINKILLER, PICKUP_TYPE_SCRIPTED, 275.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_WATCH, PICKUP_TYPE_SCRIPTED, 270.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_MINE, PICKUP_TYPE_SCRIPTED, 265.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_LANDMINE1, PICKUP_TYPE_SCRIPTED, 260.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_NOMODELFILE, PICKUP_TYPE_SCRIPTED, 255.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_MEDCASE, PICKUP_TYPE_SCRIPTED, 250.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_DYNAMITE, PICKUP_TYPE_SCRIPTED, 245.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_AIDKIT, PICKUP_TYPE_SCRIPTED, 240.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_AMMOBOX, PICKUP_TYPE_SCRIPTED, 235.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_PETROLCAN, PICKUP_TYPE_SCRIPTED, 230.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_GUNBOXSMALL, PICKUP_TYPE_SCRIPTED, 225.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_GUNBOXBIG, PICKUP_TYPE_SCRIPTED, 220.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_BEERBOTTLE1, PICKUP_TYPE_SCRIPTED, 215.5590, 2486.2830, 16.4844, -1);
	pickupBeerBottle1 = CreatePickup(PICKUP_BEERBOTTLE2, PICKUP_TYPE_RESPAWN_30S, 210.5590, 2486.2830, 16.4844, -1);
	pickupBeerBottle2 = CreatePickup(PICKUP_BEERBOTTLE3, PICKUP_TYPE_RESPAWN_30S, 205.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_NAVALMINE, PICKUP_TYPE_SCRIPTED, 200.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_DONUTS, PICKUP_TYPE_SCRIPTED, 195.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_NITRO1, PICKUP_TYPE_SCRIPTED, 190.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_NITRO2, PICKUP_TYPE_SCRIPTED, 185.5590, 2486.2830, 16.4844, -1);
	CreatePickup(PICKUP_NITRO3, PICKUP_TYPE_SCRIPTED, 180.5590, 2486.2830, 16.4844, -1);

	//PICKUPS - ROW 3
	CreatePickup(PICKUP_WDRUGS, PICKUP_TYPE_SCRIPTED, 425.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_ODRUGS, PICKUP_TYPE_SCRIPTED, 420.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_YDRUGS, PICKUP_TYPE_SCRIPTED, 415.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_GDRUGS, PICKUP_TYPE_SCRIPTED, 410.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_BDRUGS, PICKUP_TYPE_SCRIPTED, 405.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_RDRUGS, PICKUP_TYPE_SCRIPTED, 400.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_TWOROUNDS, PICKUP_TYPE_SCRIPTED, 395.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_PROPERTYRED, PICKUP_TYPE_SCRIPTED, 390.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_PROPERTYORANGE, PICKUP_TYPE_SCRIPTED, 385.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_PROPERTYYELLOW, PICKUP_TYPE_SCRIPTED, 380.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_ARROWTYPE1, PICKUP_TYPE_SCRIPTED, 375.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_ARROWTYPE2, PICKUP_TYPE_SCRIPTED, 370.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_ARROWTYPE3, PICKUP_TYPE_SCRIPTED, 365.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_ARROWTYPE5, PICKUP_TYPE_SCRIPTED, 360.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_RCBOMB, PICKUP_TYPE_SCRIPTED, 355.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_ENEXMARKER1, PICKUP_TYPE_SCRIPTED, 350.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_CJBBATNAILS, PICKUP_TYPE_SCRIPTED, 345.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_KEYCARD, PICKUP_TYPE_SCRIPTED, 340.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_HORSESHOE, PICKUP_TYPE_SCRIPTED, 335.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_EXTINGUISHER, PICKUP_TYPE_SCRIPTED, 330.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_FLAMETINS, PICKUP_TYPE_SCRIPTED, 325.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_ARROWTYPE4, PICKUP_TYPE_SCRIPTED, 320.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_CJM16, PICKUP_TYPE_SCRIPTED, 315.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_SCATTEREDPAPERS, PICKUP_TYPE_SCRIPTED, 310.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_ALTPARACHUTE, PICKUP_TYPE_SCRIPTED, 305.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_MONEYBAG, PICKUP_TYPE_SCRIPTED, 300.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_CJSHOVEL, PICKUP_TYPE_SCRIPTED, 295.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_PAPERTARGETS, PICKUP_TYPE_SCRIPTED, 290.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_CJPSG1, PICKUP_TYPE_SCRIPTED, 285.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_CJSHOVEL2, PICKUP_TYPE_SCRIPTED, 280.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_SANDBAG, PICKUP_TYPE_SCRIPTED, 275.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_ENEXMARKER2, PICKUP_TYPE_SCRIPTED, 270.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_ENEXMARKER3, PICKUP_TYPE_SCRIPTED, 265.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_XMASBOX1, PICKUP_TYPE_SCRIPTED, 260.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_XMASBOX2, PICKUP_TYPE_SCRIPTED, 255.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_XMASBOX3, PICKUP_TYPE_SCRIPTED, 250.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_XMASBOX4, PICKUP_TYPE_SCRIPTED, 245.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_XMASBOX5, PICKUP_TYPE_SCRIPTED, 240.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_ENEXMARKERRED, PICKUP_TYPE_SCRIPTED, 235.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_ENEXMARKERGREEN, PICKUP_TYPE_SCRIPTED, 230.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_ENEXMARKERBLUE, PICKUP_TYPE_SCRIPTED, 225.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_CJFIELDGUN, PICKUP_TYPE_SCRIPTED, 220.5590, 2492.2830, 16.4844, -1);
	CreatePickup(PICKUP_PUMPKIN, PICKUP_TYPE_SCRIPTED, 215.5590, 2492.2830, 16.4844, -1);

	//Add Static Vehicles
	AddStaticVehicle(VEH_BUFFALO, 425.7991, 2523.3472, 16.5794, 180, CARCOL_SAMP_OBSIDIANSHARD, 0);
	AddStaticVehicle(VEH_PHOENIX, 420.7991, 2523.3472, 16.5764, 180, CARCOL_YELLOW, CARCOL_BLACK);
	AddStaticVehicle(VEH_INFERNUS, 415.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_BRONZE, 0);
	AddStaticVehicle(VEH_BANSHEE, 410.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_WILLOW, CARCOL_SAMP_WILLOW);
	AddStaticVehicle(VEH_SULTAN, 405.7991, 2523.3472, 16.5764, 180, CARCOL_SAMP_ROYALNIGHT, 0);
	AddStaticVehicle(VEH_RHINO, 271.9779, 2543.9709, 16.8211, 180, CARCOL_WHITE, 0);
	AddStaticVehicle(VEH_PACKER, 340.328, 2539.0764, 17.4211, 180, CARCOL_DARKGREY, 0);
	AddStaticVehicle(VEH_MONSTER, 393.1121, 2544.254, 16.909, 146.201, CARCOL_SAMP_BLACKBERRY, CARCOL_SAMP_BLACKBERRY);
	AddStaticVehicle(VEH_QUAD, 414.1307, 2531.9279, 16, 188, CARCOL_SAMP_SHUTTERGREY, CARCOL_SAMP_SHUTTERGREY);
	AddStaticVehicle(VEH_CAMPER, 260.754821, 2547.231689, 16.710, 180, CARCOL_DARKBLUE2, CARCOL_DARKBLUE2);
	AddStaticVehicle(VEH_PCJ600, 256.02768, 2543.71899, 16.31631, 97.62, CARCOL_PURPLERED, 0);
	AddStaticVehicle(VEH_TOWTRUCK, 384.848663, 2545.4951, 16.42258, 180, CARCOL_WHITE, CARCOL_DEEPBLUE);
	AddStaticVehicle(VEH_DUNE, 406.6405, 2542.84, 17.167, 155, CARCOL_SAMP_SEAFANTASY, CARCOL_YELLOW);
	AddStaticVehicle(VEH_SANCHEZ, 419.03, 2531.628, 16.2715, 220, CARCOL_YELLOW, 0);
	AddStaticVehicle(VEH_BMX, 431.3886, 2538.52, 15.7283, 97.74, CARCOL_RED, 0);
	AddStaticVehicle(VEH_NRG500, 424.045, 2539.555, 16.0524, 272, CARCOL_SAMP_GULABBROWN, CARCOL_SAMP_SOLIDGREEN);
	AddStaticVehicle(VEH_BF400, 421.9557, 2531.4655, 16.1991, 220, CARCOL_SAMP_FALURED, 0);
	AddStaticVehicle(VEH_RUSTLER, 350.9618, 2539.02, 17.445, 212.4, CARCOL_SAMP_AIRCRAFTGREEN, 0);
	AddStaticVehicle(VEH_SPARROW, 377.1873, 2537.1892, 16.5636, 180, CARCOL_WHITE, 0);
	AddStaticVehicle(VEH_MAVERICK, 365.3827, 2537.2888, 16.84, 180, CARCOL_SAMP_RIVIERASEA, CARCOL_WHITE);
	AddStaticVehicle(VEH_HYDRA, 325.321166, 2539.4291, 17.53047, 180, CARCOL_WHITE, 0);
	AddStaticVehicle(VEH_STUNTPLANE, 290.21, 2541.555, 17.5304, 180, CARCOL_RED, CARCOL_BLACK);

	//Create Objects
	CreateObject(OBJ_LANDJUMP2, 242.32, 2535.7839, 16.8, 0.0, 0.0, 272.0);

	//Create Actor Dummy
	gActorDummy = CreateActor(SKIN_BMYST, 428.687, 2531.6868, 16.5926, 180);
	SetActorInvulnerable(gActorDummy, false);


	return 1;
}

public OnGameModeExit()
{
	//Destroy Active Pickups
	DestroyPickup(pickupWeapBrassKnuckles);
	DestroyPickup(pickupWeapGolfClub);
	DestroyPickup(pickupWeapKnife);
	DestroyPickup(pickupWeapBaseballBat);
	DestroyPickup(pickupWeapNightStick);
	DestroyPickup(pickupWeapShovel);
	DestroyPickup(pickupWeapPoolCue);
	DestroyPickup(pickupWeapKatana);
	DestroyPickup(pickupWeapChainsaw);
	DestroyPickup(pickupWeapRdildo);
	DestroyPickup(pickupWeapWdildo);
	DestroyPickup(pickupWeapVibrator);
	DestroyPickup(pickupWeapVibrator2);
	DestroyPickup(pickupWeapFlowers);
	DestroyPickup(pickupWeapCane);
	DestroyPickup(pickupWeapPhone);
	DestroyPickup(pickupWeapGrenade);
	DestroyPickup(pickupWeapTeargas);
	DestroyPickup(pickupWeapMolotov);
	DestroyPickup(pickupWeapSatchel);
	DestroyPickup(pickupWeapPistol);
	DestroyPickup(pickupWeapSilencedPistol);
	DestroyPickup(pickupWeapDeagle);
	DestroyPickup(pickupWeapShotgun);
	DestroyPickup(pickupWeapSawedoff);
	DestroyPickup(pickupWeapAutoshotgun);
	DestroyPickup(pickupWeapMicroUzi);
	DestroyPickup(pickupWeapMP5);
	DestroyPickup(pickupWeapTec9);
	DestroyPickup(pickupWeapAK47);
	DestroyPickup(pickupWeapM4);
	DestroyPickup(pickupWeapRifle);
	DestroyPickup(pickupWeapSniperRifle);
	DestroyPickup(pickupWeapRPG);
	DestroyPickup(pickupWeapHeatRPG);
	DestroyPickup(pickupWeapFlamethrower);
	DestroyPickup(pickupWeapMinigun);
	DestroyPickup(pickupWeapDetonator);
	DestroyPickup(pickupWeapSpray);
	DestroyPickup(pickupWeapExtinguisher);
	DestroyPickup(pickupWeapCamera);
	DestroyPickup(pickupWeapNGoggles);
	DestroyPickup(pickupWeapTGoggles);
	DestroyPickup(pickupWeapParachute);
	DestroyPickup(pickupMoney);
	DestroyPickup(pickupHealth);
	DestroyPickup(pickupArmor);
	DestroyPickup(pickupBeerBottle1);
	DestroyPickup(pickupBeerBottle2);
	DestroyPickup(pickupBribe);
	DestroyPickup(pickupTiki);

	//Destroy Actor Dummy
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
		case 202218: SendClientMessage(playerid, COLOR_MAGENTA, "ISAMPP 1.8");
		case 202219: SendClientMessage(playerid, COLOR_MAGENTA, "ISAMPP 1.9");
		case 202320: SendClientMessage(playerid, COLOR_MAGENTA, "ISAMPP 2.0");
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

	//Client Command: Output List of Available Client Commands
	if (strcmp(cmd, "/help", true) == 0) {
		new tmp[128];
		tmp = strtok(cmdtext, idx);

		if (isnull(tmp)) {
			SendClientMessage(playerid, COLOR_ORANGE, "/maincols [0-14]; /stringcols");
			SendClientMessage(playerid, COLOR_ORANGE, "/crime [3-19, 21, 22]; /wantedlevel [0-6]");
			SendClientMessage(playerid, COLOR_ORANGE, "/explosion [ID] (type /help explosion for ID list)");
			SendClientMessage(playerid, COLOR_ORANGE, "/gametext [ID] (type /help gametext for ID list)");
			SendClientMessage(playerid, COLOR_ORANGE, "/setvehiclehealth [ID] (type /help setvehiclehealth for ID list)");
			SendClientMessage(playerid, COLOR_ORANGE, "/showvehicleinfo; /lightson; /lightsoff; /fixtires; /poptires");
			SendClientMessage(playerid, COLOR_ORANGE, "/weather [ID] (type /help weather for weather ID list)");
			SendClientMessage(playerid, COLOR_ORANGE, "/showplayerpos; /cameramode; /changeskin; /myname; /kill; /time [0-23]");
			SendClientMessage(playerid, COLOR_ORANGE, "/cancelaction; /tp [ID]; /tpcoord");
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
		else if (strcmp(tmp, "weather") == 0) {
			SendClientMessage(playerid, COLOR_MAGENTA, "/weather [ID]");
			SendClientMessage(playerid, COLOR_MAGENTA, "ID: extrasunnyla, sunnyla, extrasunnysmogla, sunnysmogla, cloudyla");
			SendClientMessage(playerid, COLOR_MAGENTA, "sunnysf, extrasunnysf, cloudysf, rainysf, foggysf");
			SendClientMessage(playerid, COLOR_MAGENTA, "sunnyvegas, extrasunnyvegas, cloudyvegas");
			SendClientMessage(playerid, COLOR_MAGENTA, "extrasunnycountry, sunnycountry, cloudycountry, rainycountry");
			SendClientMessage(playerid, COLOR_MAGENTA, "extrasunnydesert, sunnydesert, sandstorm, underwater, interior1, interior2");
		}
		else {
			SendClientMessage(playerid, COLOR_INDIANRED, "Use command /help for list of available commands");
		}

		return 1;
	}

	//Client Command: Primary/Main Color Test Output
	if (strcmp(cmd, "/maincols", true) == 0) {
		new tmp[128];
		tmp = strtok(cmdtext, idx);

		if (isnull(tmp)) {
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
			SendClientMessage(playerid, COLOR_MEDIUMBLUE, "Medium Blue");
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

	//Client Command: Secondary/String Color Test Output
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

	//Client Command: Play Crime Report for Player
	if (strcmp(cmd, "/crime", true) == 0) {
		new tmp[128];
		tmp = strtok(cmdtext, idx);

		if (isnull(tmp)) {
			SendClientMessage(playerid, COLOR_INDIANRED, "Missing argument for command /crime [3-19, 21, 22]");
		}
		else if (strval(tmp) == 3) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_71);
		}
		else if (strval(tmp) == 4) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_37_1);
		}
		else if (strval(tmp) == 5) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_81_1);
		}
		else if (strval(tmp) == 6) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_24);
		}
		else if (strval(tmp) == 7) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_21_1);
		}
		else if (strval(tmp) == 8) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_21_2);
		}
		else if (strval(tmp) == 9) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_21_3);
		}
		else if (strval(tmp) == 10) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_17);
		}
		else if (strval(tmp) == 11) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_81_2);
		}
		else if (strval(tmp) == 12) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_91_1);
		}
		else if (strval(tmp) == 13) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_28_1);
		}
		else if (strval(tmp) == 14) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_81_3);
		}
		else if (strval(tmp) == 15) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_28_2);
		}
		else if (strval(tmp) == 16) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_91_2);
		}
		else if (strval(tmp) == 17) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_34);
		}
		else if (strval(tmp) == 18) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_37_2);
		}
		else if (strval(tmp) == 19) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_81_4);
		}
		else if (strval(tmp) == 21) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_7_1);
		}
		else if (strval(tmp) == 22) {
			PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_7_2);
		}
		else {
			SendClientMessage(playerid, COLOR_INDIANRED, "Undefined argument for command /crime [3-19, 21, 22]");
		}

		return 1;
	}

	//Client Command: Create Explosions on Given Coordinates
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

	//Client Command: Game Text Test Draw
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

	//Client Command: Set Current Vehicle Health
	if (strcmp(cmd, "/setvehiclehealth", true) == 0) {
		new tmp[128];
		tmp = strtok(cmdtext, idx);

		if (isnull(tmp)) {
			SendClientMessage(playerid, COLOR_INDIANRED, "Missing argument for command /setvehiclehealth [ID]. Type /help setvehiclehealth for ID list.");
		}
		else if (strcmp(tmp, "full") == 0) {
			SetVehicleHealth(GetPlayerVehicleID(playerid), VEH_HEALTH_FULL);
		}
		else if (strcmp(tmp, "fulllow") == 0) {
			SetVehicleHealth(GetPlayerVehicleID(playerid), VEH_HEALTH_FULL_LOW);
		}
		else if (strcmp(tmp, "whitesmoke") == 0) {
			SetVehicleHealth(GetPlayerVehicleID(playerid), VEH_HEALTH_WHITESMOKE);
		}
		else if (strcmp(tmp, "whitesmokelow") == 0) {
			SetVehicleHealth(GetPlayerVehicleID(playerid), VEH_HEALTH_WHITESMOKE_LOW);
		}
		else if (strcmp(tmp, "greysmoke") == 0) {
			SetVehicleHealth(GetPlayerVehicleID(playerid), VEH_HEALTH_GREYSMOKE);
		}
		else if (strcmp(tmp, "greysmokelow") == 0) {
			SetVehicleHealth(GetPlayerVehicleID(playerid), VEH_HEALTH_GREYSMOKE_LOW);
		}
		else if (strcmp(tmp, "blacksmoke") == 0) {
			SetVehicleHealth(GetPlayerVehicleID(playerid), VEH_HEALTH_BLACKSMOKE);
		}
		else if (strcmp(tmp, "blacksmokelow") == 0) {
			SetVehicleHealth(GetPlayerVehicleID(playerid), VEH_HEALTH_BLACKSMOKE_LOW);
		}
		else if (strcmp(tmp, "onfire") == 0) {
			SetVehicleHealth(GetPlayerVehicleID(playerid), VEH_HEALTH_ONFIRE);
		}
		else {
			SendClientMessage(playerid, COLOR_INDIANRED, "Undefined argument for command /setvehiclehealth [ID]. Type /help setvehiclehealth for ID list.");
		}

		return 1;
	}

	//Client Command: Change Weather
	if (strcmp(cmd, "/weather", true) == 0) {
		new tmp[128];
		tmp = strtok(cmdtext, idx);

		if (isnull(tmp)) {
			SendClientMessage(playerid, COLOR_INDIANRED, "Missing argument for command /weather [ID]. Type /help weather for ID list.");
		}
		else if (strcmp(tmp, "extrasunnyla") == 0) {
			SetWeather(WEATHER_EXSUNNY_LA);
		}
		else if (strcmp(tmp, "sunnyla") == 0) {
			SetWeather(WEATHER_SUNNY_LA);
		}
		else if (strcmp(tmp, "extrasunnysmogla") == 0) {
			SetWeather(WEATHER_EXSUNNY_SMOG_LA);
		}
		else if (strcmp(tmp, "sunnysmogla") == 0) {
			SetWeather(WEATHER_SUNNY_SMOG_LA);
		}
		else if (strcmp(tmp, "cloudyla") == 0) {
			SetWeather(WEATHER_CLOUDY_LA);
		}
		else if (strcmp(tmp, "sunnysf") == 0) {
			SetWeather(WEATHER_SUNNY_SF);
		}
		else if (strcmp(tmp, "extrasunnysf") == 0) {
			SetWeather(WEATHER_EXSUNNY_SF);
		}
		else if (strcmp(tmp, "cloudysf") == 0) {
			SetWeather(WEATHER_CLOUDY_SF);
		}
		else if (strcmp(tmp, "rainysf") == 0) {
			SetWeather(WEATHER_RAINY_SF);
		}
		else if (strcmp(tmp, "foggysf") == 0) {
			SetWeather(WEATHER_FOGGY_SF);
		}
		else if (strcmp(tmp, "sunnyvegas") == 0) {
			SetWeather(WEATHER_SUNNY_VEGAS);
		}
		else if (strcmp(tmp, "extrasunnyvegas") == 0) {
			SetWeather(WEATHER_EXSUNNY_VEGAS);
		}
		else if (strcmp(tmp, "cloudyvegas") == 0) {
			SetWeather(WEATHER_CLOUDY_VEGAS);
		}
		else if (strcmp(tmp, "extrasunnycountry") == 0) {
			SetWeather(WEATHER_EXSUNNY_CTRYSIDE);
		}
		else if (strcmp(tmp, "sunnycountry") == 0) {
			SetWeather(WEATHER_SUNNY_CTRYSIDE);
		}
		else if (strcmp(tmp, "cloudycountry") == 0) {
			SetWeather(WEATHER_CLOUDY_CTRYSIDE);
		}
		else if (strcmp(tmp, "rainycountry") == 0) {
			SetWeather(WEATHER_RAINY_CTRYSIDE);
		}
		else if (strcmp(tmp, "extrasunnydesert") == 0) {
			SetWeather(WEATHER_EXSUNNY_DESERT);
		}
		else if (strcmp(tmp, "sunnydesert") == 0) {
			SetWeather(WEATHER_SUNNY_DESERT);
		}
		else if (strcmp(tmp, "sandstorm") == 0) {
			SetWeather(WEATHER_SANDSTORM_DESERT);
		}
		else if (strcmp(tmp, "underwater") == 0) {
			SetWeather(WEATHER_UNDERWATER);
		}
		else if (strcmp(tmp, "interior1") == 0) {
			SetWeather(WEATHER_INTERIOR1);
		}
		else if (strcmp(tmp, "interior2") == 0) {
			SetWeather(WEATHER_INTERIOR2);
		}
		else {
			SendClientMessage(playerid, COLOR_INDIANRED, "Undefined argument for command /weather [ID]. Type /help weather for ID list.");
		}

		return 1;
	}

	//Client Command: Teleport Player to Given Locations
	if (strcmp(cmd, "/tp", true) == 0) {
		new tmp[128];
		tmp = strtok(cmdtext, idx);

		if (isnull(tmp)) {
			SendClientMessage(playerid, COLOR_INDIANRED, "Missing argument for command /tp [ID]");
		}
		else if (strcmp(tmp, "warehouse2") == 0) {
			MppTeleportEx(playerid, LOC_WAREHOUSE2, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "transfender") == 0) {
			MppTeleportEx(playerid, LOC_TRANSFENDER, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "worldofcoq") == 0) {
			MppTeleportEx(playerid, LOC_WORLDOFCOQ, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "ammunation2") == 0) {
			MppTeleportEx(playerid, LOC_AMMUNATION2, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "suburban") == 0) {
			MppTeleportEx(playerid, LOC_SUBURBAN, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "denise") == 0) {
			MppTeleportEx(playerid, LOC_DENISEBEDROOM, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "sfgarage") == 0) {
			MppTeleportEx(playerid, LOC_SFGARAGE, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "ovalstadium") == 0) {
			MppTeleportEx(playerid, LOC_OVALSTADIUM, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "libertycity") == 0) {
			MppTeleportEx(playerid, LOC_LIBERTYCITY, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "sweet") == 0) {
			MppTeleportEx(playerid, LOC_SWEETSHOUSE, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "caligulas") == 0) {
			MppTeleportEx(playerid, LOC_CALIGULAS, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "wuzimu") == 0) {
			MppTeleportEx(playerid, LOC_WUZIMU, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "jet") == 0) {
			MppTeleportEx(playerid, LOC_JET, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "welcomepump") == 0) {
			MppTeleportEx(playerid, LOC_WELCOMEPUMP, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "burgh3") == 0) {
			MppTeleportEx(playerid, LOC_BURGH3, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "abattoir") == 0) {
			MppTeleportEx(playerid, LOC_ABATTOIR, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "shcameltoe") == 0) {
			MppTeleportEx(playerid, LOC_SHCAMELTOE, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "caligroof") == 0) {
			MppTeleportEx(playerid, LOC_CALIGROOF, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "bduppalace") == 0) {
			MppTeleportEx(playerid, LOC_BDUPPALACE, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "pigpen") == 0) {
			MppTeleportEx(playerid, LOC_THEPIGPEN, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "ryder") == 0) {
			MppTeleportEx(playerid, LOC_RYDERSHOUSE, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "katiesnest") == 0) {
			MppTeleportEx(playerid, LOC_KATIESNEST, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "reece") == 0) {
			MppTeleportEx(playerid, LOC_REECES, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "aptrailer") == 0) {
			MppTeleportEx(playerid, LOC_APTRAILER, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "crackpalace") == 0) {
			MppTeleportEx(playerid, LOC_BSCRACKPALACE, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "burgh2") == 0) {
			MppTeleportEx(playerid, LOC_BURGH2, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "pairburgh") == 0) {
			MppTeleportEx(playerid, LOC_PAIRBURGH, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "caligoffice") == 0) {
			MppTeleportEx(playerid, LOC_CALIGOFFICE, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "shstripcasino") == 0) {
			MppTeleportEx(playerid, LOC_STRIPCASINO, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "locolowco") == 0) {
			MppTeleportEx(playerid, LOC_LOCOLOWCO, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "brothel1") == 0) {
			MppTeleportEx(playerid, LOC_BROTHEL1, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "brothel2") == 0) {
			MppTeleportEx(playerid, LOC_BROTHEL2, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "insidetrack") == 0) {
			MppTeleportEx(playerid, LOC_ITBETTING, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "bfrecords") == 0) {
			MppTeleportEx(playerid, LOC_BFRECORDS, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "bsranch") == 0) {
			MppTeleportEx(playerid, LOC_BSRANCH, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "bdupapt") == 0) {
			MppTeleportEx(playerid, LOC_BDUPAPT, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "wheelarch") == 0) {
			MppTeleportEx(playerid, LOC_WARCHANGELS, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "oglochouse") == 0) {
			MppTeleportEx(playerid, LOC_OGLOCHOUSE, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "barbershop") == 0) {
			MppTeleportEx(playerid, LOC_BARBERSHOP, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "planningdpt") == 0) {
			MppTeleportEx(playerid, LOC_PLANNINGDPT, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "lvpdhq") == 0) {
			MppTeleportEx(playerid, LOC_LVPDHQ, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "prolaps") == 0) {
			MppTeleportEx(playerid, LOC_PROLAPS, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "sexshop") == 0) {
			MppTeleportEx(playerid, LOC_SEXSHOP, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "lvtattoo") == 0) {
			MppTeleportEx(playerid, LOC_LVTATTOO, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "helenasbarn") == 0) {
			MppTeleportEx(playerid, LOC_HELENASBARN, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "johnsonhouse") == 0) {
			MppTeleportEx(playerid, LOC_JOHNSONHOUSE, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "pleasuredomes") == 0) {
			MppTeleportEx(playerid, LOC_PLEASUREDOMES, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "burgh1") == 0) {
			MppTeleportEx(playerid, LOC_BURGH1, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "bikeschool") == 0) {
			MppTeleportEx(playerid, LOC_BIKESCHOOL, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "drivingschool") == 0) {
			MppTeleportEx(playerid, LOC_DRIVESCHOOL, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "burgh12") == 0) {
			MppTeleportEx(playerid, LOC_BURGH12, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "ammunation3") == 0) {
			MppTeleportEx(playerid, LOC_AMMUNATION3, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "jaysdiner") == 0) {
			MppTeleportEx(playerid, LOC_JAYSDINER, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "247v5") == 0) {
			MppTeleportEx(playerid, LOC_247V5, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "michelle") == 0) {
			MppTeleportEx(playerid, LOC_MICHELLESNEST, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "burgh13") == 0) {
			MppTeleportEx(playerid, LOC_BURGH13, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "dirtbike") == 0) {
			MppTeleportEx(playerid, LOC_DIRTBIKE, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "burgh15") == 0) {
			MppTeleportEx(playerid, LOC_BURGH15, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "gantongym") == 0) {
			MppTeleportEx(playerid, LOC_GANTONGYM, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "diner1") == 0) {
			MppTeleportEx(playerid, LOC_DINER1, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "pizzastack") == 0) {
			MppTeleportEx(playerid, LOC_PIZZASTACK, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "victim") == 0) {
			MppTeleportEx(playerid, LOC_VICTIM, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "barbara") == 0) {
			MppTeleportEx(playerid, LOC_BARBARASNEST, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "madddogg") == 0) {
			MppTeleportEx(playerid, LOC_MADDDOGGMANSION, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "burningdesire") == 0) {
			MppTeleportEx(playerid, LOC_BURNINGDESIREB, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "safehouse1") == 0) {
			MppTeleportEx(playerid, LOC_SAFEHOUSE1, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "burgh4") == 0) {
			MppTeleportEx(playerid, LOC_BURGH4, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "crackden") == 0) {
			MppTeleportEx(playerid, LOC_CRACKDEN, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "burgh11") == 0) {
			MppTeleportEx(playerid, LOC_BURGH11, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "burgh16") == 0) {
			MppTeleportEx(playerid, LOC_BURGH16, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "burgh17") == 0) {
			MppTeleportEx(playerid, LOC_BURGH17, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "safehouse2") == 0) {
			MppTeleportEx(playerid, LOC_SAFEHOUSE2, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "millie") == 0) {
			MppTeleportEx(playerid, LOC_MILLIESROOM, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "cobragym") == 0) {
			MppTeleportEx(playerid, LOC_COBRAGYM, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "lspdhq") == 0) {
			MppTeleportEx(playerid, LOC_LSPDHQ, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "burgh18") == 0) {
			MppTeleportEx(playerid, LOC_BURGH18, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "burgh19") == 0) {
			MppTeleportEx(playerid, LOC_BURGH19, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "zerorc") == 0) {
			MppTeleportEx(playerid, LOC_ZERORCSHOP, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "ammunation4") == 0) {
			MppTeleportEx(playerid, LOC_AMMUNATION4, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "ammunation5") == 0) {
			MppTeleportEx(playerid, LOC_AMMUNATION5, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "247v6") == 0) {
			MppTeleportEx(playerid, LOC_247V6, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "valleydiner") == 0) {
			MppTeleportEx(playerid, LOC_VALLEYDINER, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "whorehouse") == 0) {
			MppTeleportEx(playerid, LOC_WHOREHOUSE, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "ammunation") == 0) {
			MppTeleportEx(playerid, LOC_AMMUNATION, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "belowbeltgym") == 0) {
			MppTeleportEx(playerid, LOC_BBELTGYM, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "8track") == 0) {
			MppTeleportEx(playerid, LOC_8TSTADIUM, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "colonels") == 0) {
			MppTeleportEx(playerid, LOC_COLONELS, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "shverdantbluffs") == 0) {
			MppTeleportEx(playerid, LOC_SHVBLUFFS, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "burgh21") == 0) {
			MppTeleportEx(playerid, LOC_BURGH21, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "safehouse3") == 0) {
			MppTeleportEx(playerid, LOC_SAFEHOUSE3, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "cbell") == 0) {
			MppTeleportEx(playerid, LOC_CBELL, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "andromada") == 0) {
			MppTeleportEx(playerid, LOC_ANDROMADA, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "burgh22") == 0) {
			MppTeleportEx(playerid, LOC_BURGH22, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "burgh23") == 0) {
			MppTeleportEx(playerid, LOC_BURGH23, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "sfpdhq") == 0) {
			MppTeleportEx(playerid, LOC_SFPDHQ, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "247v2") == 0) {
			MppTeleportEx(playerid, LOC_247V2, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "fourdragons") == 0) {
			MppTeleportEx(playerid, LOC_FOURDRAGONS, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "rcbattlefield") == 0) {
			MppTeleportEx(playerid, LOC_RCBATTLEFIELD, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "burgershot") == 0) {
			MppTeleportEx(playerid, LOC_BURGERSHOT, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "actower") == 0) {
			MppTeleportEx(playerid, LOC_ACTOWER, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "safehouse4") == 0) {
			MppTeleportEx(playerid, LOC_SAFEHOUSE4, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "burgh14") == 0) {
			MppTeleportEx(playerid, LOC_BURGH14, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "cfdjanitor") == 0) {
			MppTeleportEx(playerid, LOC_CFDJANITOR, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "cfdsuite") == 0) {
			MppTeleportEx(playerid, LOC_CFDSUITE, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "bar") == 0) {
			MppTeleportEx(playerid, LOC_BAR, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "shwfield") == 0) {
			MppTeleportEx(playerid, LOC_SHWFIELD, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "casino") == 0) {
			MppTeleportEx(playerid, LOC_CASINO, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "budgetmotel") == 0) {
			MppTeleportEx(playerid, LOC_BUDGETMOTEL, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "usafehouse") == 0) {
			MppTeleportEx(playerid, LOC_USAFEHOUSE, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "barbershop2") == 0) {
			MppTeleportEx(playerid, LOC_BARBERSHOP2, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "wardrobe") == 0) {
			MppTeleportEx(playerid, LOC_WARDROBE, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "didersachs") == 0) {
			MppTeleportEx(playerid, LOC_DIDERSACHS, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "kickstartstadium") == 0) {
			MppTeleportEx(playerid, LOC_KICKSTADIUM, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "lsairport") == 0) {
			MppTeleportEx(playerid, LOC_LSAIRPORT, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "francisintl") == 0) {
			MppTeleportEx(playerid, LOC_FRANCISINTL, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "jeffersonmotel") == 0) {
			MppTeleportEx(playerid, LOC_JEFFERSONM, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "binco") == 0) {
			MppTeleportEx(playerid, LOC_BINCO, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "4burgh") == 0) {
			MppTeleportEx(playerid, LOC_4BURGH, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "bloodbowl") == 0) {
			MppTeleportEx(playerid, LOC_BLOODBOWL, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "burgh20") == 0) {
			MppTeleportEx(playerid, LOC_BURGH20, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "lstattoo") == 0) {
			MppTeleportEx(playerid, LOC_LSTATTOO, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "247v4") == 0) {
			MppTeleportEx(playerid, LOC_247V4, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "vicestadium") == 0) {
			MppTeleportEx(playerid, LOC_VICESTADIUM, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "lsftattoo") == 0) {
			MppTeleportEx(playerid, LOC_LSFTATTOO, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "247v1") == 0) {
			MppTeleportEx(playerid, LOC_247V1, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "donutshop") == 0) {
			MppTeleportEx(playerid, LOC_RUSTYBDONUTS, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "club") == 0) {
			MppTeleportEx(playerid, LOC_CLUB, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "shermandam") == 0) {
			MppTeleportEx(playerid, LOC_SHERMANDAM, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "warehouse1") == 0) {
			MppTeleportEx(playerid, LOC_WAREHOUSE1, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "247v3") == 0) {
			MppTeleportEx(playerid, LOC_247V3, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "zip") == 0) {
			MppTeleportEx(playerid, LOC_ZIP, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "atrium") == 0) {
			MppTeleportEx(playerid, LOC_ATRIUM, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "lilprobeinn") == 0) {
			MppTeleportEx(playerid, LOC_LILPROBEINN, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "palobank") == 0) {
			MppTeleportEx(playerid, LOC_PALOBANK, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "palodiner") == 0) {
			MppTeleportEx(playerid, LOC_PALODINER, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "dilligasst") == 0) {
			MppTeleportEx(playerid, LOC_DILLIGASST, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "ranch") == 0) {
			MppTeleportEx(playerid, LOC_TORENOSRANCH, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "zombotech") == 0) {
			MppTeleportEx(playerid, LOC_ZOMBOTECH, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "cemetery") == 0) {
			MppTeleportEx(playerid, LOC_LSCEMETC, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "liqorstore") == 0) {
			MppTeleportEx(playerid, LOC_BLUEBLIQ, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "warehouse3") == 0) {
			MppTeleportEx(playerid, LOC_WAREHOUSE3, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "militarydepo") == 0) {
			MppTeleportEx(playerid, LOC_MILITARYDEPO, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "area69") == 0) {
			MppTeleportEx(playerid, LOC_AREA69, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "bikeschoollv") == 0) {
			MppTeleportEx(playerid, LOC_BIKESCHOOLLV, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "ottoautos") == 0) {
			MppTeleportEx(playerid, LOC_OTTOAUTOS, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "wangcars") == 0) {
			MppTeleportEx(playerid, LOC_WANGCARS, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "ganton") == 0) {
			MppTeleportEx(playerid, LOC_GANTON, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "glenpark") == 0) {
			MppTeleportEx(playerid, LOC_GLENPARK, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "observatory") == 0) {
			MppTeleportEx(playerid, LOC_LSOBSERVATORY, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "santamaria") == 0) {
			MppTeleportEx(playerid, LOC_SANTAMARIA, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "truthsfarm") == 0) {
			MppTeleportEx(playerid, LOC_TRUTHSFARM, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "mtchiliad") == 0) {
			MppTeleportEx(playerid, LOC_MTCHILIAD, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "san") == 0) {
			MppTeleportEx(playerid, LOC_SAN, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "batterypoint") == 0) {
			MppTeleportEx(playerid, LOC_BATTERYPOINT, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "boatschool") == 0) {
			MppTeleportEx(playerid, LOC_BOATSCHOOL, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "lasbrujas") == 0) {
			MppTeleportEx(playerid, LOC_LASBRUJAS, COLOR_LIMEGREEN);
		}
		else if (strcmp(tmp, "bigear") == 0) {
			MppTeleportEx(playerid, LOC_BIGEAR, COLOR_LIMEGREEN);
		}
		else {
			SendClientMessage(playerid, COLOR_INDIANRED, "Undefined argument for command /tp [ID]");
		}

		return 1;
	}

	//Client Command: Teleport Player to Given Coordinates
	if (strcmp("/tpcoord", cmdtext, true, 20) == 0) {
		MppTeleportToCoords(playerid, 279.0683, 2520.010253, 16.692205, 0, 12);
		return 1;
	}

	//Client Command: Output Current Player Position
	if (strcmp("/showplayerpos", cmdtext, true, 15) == 0) {
		MppShowPlayerPosition(playerid, COLOR_LIGHTRED);
		return 1;
	}

	//Client Command: Output Current Vehicle Information
	if (strcmp("/showvehicleinfo", cmdtext, true) == 0) {
		MppShowVehicleInfo(playerid, VehicleModelID, COLOR_LIGHTRED);
		return 1;
	}

	//Client Command: Enable All Vehicle Lights
	if (strcmp(cmdtext, "/lightson", true) == 0) {
		MppEnableVehicleLights(GetPlayerVehicleID(playerid), LIGHT_ALL);
		return 1;
	}

	//Client Command: Disable All Vehicle Lights
	if (strcmp(cmdtext, "/lightsoff", true) == 0) {
		MppDisableVehicleLights(GetPlayerVehicleID(playerid), LIGHT_ALL);
		return 1;
	}

	//Client Command: Fix All Vehicle Tires
	if (strcmp(cmdtext, "/fixtires", true) == 0) {
		MppFixVehicleTires(GetPlayerVehicleID(playerid), TIRE4W_ALL);
		return 1;
	}

	//Client Command: Pop All Vehicle Tires
	if (strcmp(cmdtext, "/poptires", true) == 0) {
		MppPopVehicleTires(GetPlayerVehicleID(playerid), TIRE4W_ALL);
		return 1;
	}

	//Client Command: Output Set Camera Mode
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

	//Client Command: Change Player Class/Skin
	if (strcmp("/changeskin", cmdtext, true, 15) == 0) {
		SetPlayerFacingAngle(playerid, 270);
		ForceClassSelection(playerid);
		TogglePlayerSpectating(playerid, true);
		TogglePlayerSpectating(playerid, false);
		return 1;
	}

	//Client Command: Output Player Name
	if (strcmp(cmdtext, "/myname", true) == 0) {
		SendClientMessage(playerid, COLOR_LIGHTBLUE, MppGetPlayerName(playerid));
		return 1;
	}

	//Client Command: Kill Player
	if (strcmp(cmdtext, "/kill", true) == 0) {
		SetPlayerHealth(playerid, 0.0);
		return 1;
	}

	//Client Command: Set World Time
	if (strcmp(cmd, "/time", true) == 0) {
		new tmp[128];
		tmp = strtok(cmdtext, idx);

		if (isnull(tmp)) {
			SendClientMessage(playerid, COLOR_INDIANRED, "Missing argument for command /time [0-23]");
		}
		else if (strval(tmp) < 0 || strval(tmp) > 23) {
			SendClientMessage(playerid, COLOR_INDIANRED, "Undefined argument for command /time [0-23]");
		}
		else {
			SetWorldTime(strval(tmp));
		}

		return 1;
	}

	//Client Command: Cancel Special Action
	if (strcmp(cmdtext, "/cancelaction", true) == 0) {
		SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
		return 1;
	}

	//Client Command: Set Wanted Level for Player
	if (strcmp(cmd, "/wantedlevel", true) == 0) {
		new tmp[128];
		tmp = strtok(cmdtext, idx);

		if (isnull(tmp)) {
			SendClientMessage(playerid, COLOR_INDIANRED, "Missing argument for command /wantedlevel [0-6]");
		}
		else if (strval(tmp) < 0 || strval(tmp) > 6) {
			SendClientMessage(playerid, COLOR_INDIANRED, "Undefined argument for command /wantedlevel [0-6]");
		}
		else {
			SetPlayerWantedLevel(playerid, strval(tmp));
		}

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
	if (pickupid == pickupWeapRdildo) {
		GivePlayerWeapon(playerid, WEAP_RDILDO, 1);
	}
	else if (pickupid == pickupWeapWdildo) {
		GivePlayerWeapon(playerid, WEAP_WDILDO, 1);
	}
	else if (pickupid == pickupWeapVibrator) {
		GivePlayerWeapon(playerid, WEAP_VIBRATOR, 1);
	}
	else if (pickupid == pickupWeapVibrator2) {
		GivePlayerWeapon(playerid, WEAP_VIBRATOR2, 1);
	}
	else if (pickupid == pickupWeapFlowers) {
		GivePlayerWeapon(playerid, WEAP_FLOWERS, 1);
	}
	else if (pickupid == pickupWeapCane) {
		GivePlayerWeapon(playerid, WEAP_CANE, 1);
	}
	else if (pickupid == pickupWeapPhone) {
		SetPlayerSpecialAction(playerid, SPECIAL_ACTION_USECELLPHONE);
	}
	else if (pickupid == pickupWeapBrassKnuckles) {
		GivePlayerWeapon(playerid, WEAP_BRASSKNUCKLES, 1);
	}
	else if (pickupid == pickupWeapGolfClub) {
		GivePlayerWeapon(playerid, WEAP_GOLFCLUB, 1);
	}
	else if (pickupid == pickupWeapNightStick) {
		GivePlayerWeapon(playerid, WEAP_NIGHTSTICK, 1);
	}
	else if (pickupid == pickupWeapKnife) {
		GivePlayerWeapon(playerid, WEAP_KNIFE, 1);
	}
	else if (pickupid == pickupWeapBaseballBat) {
		GivePlayerWeapon(playerid, WEAP_BASEBALLBAT, 1);
	}
	else if (pickupid == pickupWeapShovel) {
		GivePlayerWeapon(playerid, WEAP_SHOVEL, 1);
	}
	else if (pickupid == pickupWeapPoolCue) {
		GivePlayerWeapon(playerid, WEAP_POOLCUE, 1);
	}
	else if (pickupid == pickupWeapKatana) {
		GivePlayerWeapon(playerid, WEAP_KATANA, 1);
	}
	else if (pickupid == pickupWeapChainsaw) {
		GivePlayerWeapon(playerid, WEAP_CHAINSAW, 1);
	}
	else if (pickupid == pickupWeapGrenade) {
		GivePlayerWeapon(playerid, WEAP_GRENADE, 10);
	}
	else if (pickupid == pickupWeapTeargas) {
		GivePlayerWeapon(playerid, WEAP_TEARGAS, 10);
	}
	else if (pickupid == pickupWeapMolotov) {
		GivePlayerWeapon(playerid, WEAP_MOLOTOV, 10);
	}
	else if (pickupid == pickupWeapPistol) {
		GivePlayerWeapon(playerid, WEAP_PISTOL, 100);
	}
	else if (pickupid == pickupWeapSilencedPistol) {
		GivePlayerWeapon(playerid, WEAP_SILENCEDPISTOL, 100);
	}
	else if (pickupid == pickupWeapDeagle) {
		GivePlayerWeapon(playerid, WEAP_DEAGLE, 100);
	}
	else if (pickupid == pickupWeapShotgun) {
		GivePlayerWeapon(playerid, WEAP_SHOTGUN, 50);
	}
	else if (pickupid == pickupWeapSawedoff) {
		GivePlayerWeapon(playerid, WEAP_SAWEDOFF, 50);
	}
	else if (pickupid == pickupWeapAutoshotgun) {
		GivePlayerWeapon(playerid, WEAP_AUTOSHOTGUN, 50);
	}
	else if (pickupid == pickupWeapMicroUzi) {
		GivePlayerWeapon(playerid, WEAP_MICROUZI, 100);
	}
	else if (pickupid == pickupWeapMP5) {
		GivePlayerWeapon(playerid, WEAP_MP5, 100);
	}
	else if (pickupid == pickupWeapAK47) {
		GivePlayerWeapon(playerid, WEAP_AK47, 100);
	}
	else if (pickupid == pickupWeapM4) {
		GivePlayerWeapon(playerid, WEAP_M4, 100);
	}
	else if (pickupid == pickupWeapRifle) {
		GivePlayerWeapon(playerid, WEAP_RIFLE, 25);
	}
	else if (pickupid == pickupWeapSniperRifle) {
		GivePlayerWeapon(playerid, WEAP_SNIPERRIFLE, 25);
	}
	else if (pickupid == pickupWeapRPG) {
		GivePlayerWeapon(playerid, WEAP_RPG, 10);
	}
	else if (pickupid == pickupWeapHeatRPG) {
		GivePlayerWeapon(playerid, WEAP_HEATRPG, 10);
	}
	else if (pickupid == pickupWeapFlamethrower) {
		GivePlayerWeapon(playerid, WEAP_FLAMETHROWER, 200);
	}
	else if (pickupid == pickupWeapMinigun) {
		GivePlayerWeapon(playerid, WEAP_MINIGUN, 500);
	}
	else if (pickupid == pickupWeapSatchel) {
		GivePlayerWeapon(playerid, WEAP_SATCHEL, 10);
	}
	else if (pickupid == pickupWeapDetonator) {
		GivePlayerWeapon(playerid, WEAP_DETONATOR, 1);
	}
	else if (pickupid == pickupWeapSpray) {
		GivePlayerWeapon(playerid, WEAP_SPRAY, 100);
 	}
 	else if (pickupid == pickupWeapExtinguisher) {
		GivePlayerWeapon(playerid, WEAP_EXTINGUISHER, 100);
	}
	else if (pickupid == pickupWeapCamera) {
		GivePlayerWeapon(playerid, WEAP_CAMERA, 25);
	}
	else if (pickupid == pickupWeapNGoggles) {
		GivePlayerWeapon(playerid, WEAP_NGOGGLES, 1);
	}
	else if (pickupid == pickupWeapTGoggles) {
		GivePlayerWeapon(playerid, WEAP_TGOGGLES, 1);
	}
	else if (pickupid == pickupWeapParachute) {
		GivePlayerWeapon(playerid, WEAP_PARACHUTE, 1);
	}
	else if (pickupid == pickupWeapTec9) {
		GivePlayerWeapon(playerid, WEAP_TEC9, 100);
	}
	else if (pickupid == pickupMoney) {
		GivePlayerMoney(playerid, 500);
	}
	else if (pickupid == pickupHealth) {
		SetPlayerHealth(playerid, 100);
	}
	else if (pickupid == pickupArmor) {
		SetPlayerArmour(playerid, 100);
	}
	else if (pickupid == pickupBeerBottle1) {
		SetPlayerSpecialAction(playerid, SPECIAL_ACTION_DRINK_WINE);
	}
	else if (pickupid == pickupBeerBottle2) {
		SetPlayerSpecialAction(playerid, SPECIAL_ACTION_DRINK_BEER);
	}
	else if (pickupid == pickupBribe) {
		if (GetPlayerWantedLevel(playerid) > 0) {
			SetPlayerWantedLevel(playerid, (GetPlayerWantedLevel(playerid)-1));
		}
	}
	else if (pickupid == pickupTiki) {
		GivePlayerMoney(playerid, 100);
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

public OnPlayerGiveDamageActor(playerid, damaged_actorid, Float:amount, weaponid, bodypart)
{
	new string[128], attacker[MAX_PLAYER_NAME], sbodypart[128];
	new weaponname[24];
	GetPlayerName(playerid, attacker, sizeof(attacker));
	GetWeaponName(weaponid, weaponname, sizeof(weaponname));

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
	SendClientMessage(playerid, COLOR_WHITE, string);

	return 1;
}
