#include <a_samp>
#include <i_sampp\i_colorlist>
#include <i_sampp\i_pickupids>

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

public OnGameModeInit()
{
	SetWorldTime(12);
	// Don't use these lines if it's a filterscript
	SetGameModeText("SA-MP Includes Library+ Test GameMode");
	AddPlayerClass(0, 441.7056,2500.1367,17.7823,276.6780, 0, 0, 0, 0, 0, 0);
	
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
	
	CreatePickup(PICKUP_WEAP_RDILDO, 1, 425.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_WDILDO, 1, 420.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_VIBRATOR, 1, 415.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_VIBRATOR2, 1, 410.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_FLOWERS, 1, 405.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_CANE, 1, 400.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_PHONE, 1, 395.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_BRASSKNUCKLES, 1, 390.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_GOLFCLUB, 1, 385.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_NIGHTSTICK, 1, 380.5590,2480.2830,16.4844, -1);
    CreatePickup(PICKUP_WEAP_KNIFE, 1, 375.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_BASEBALLBAT, 1, 370.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_SHOVEL, 1, 365.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_POOLCUE, 1, 360.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_KATANA, 1, 355.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_CHAINSAW, 1, 350.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_GRENADE, 1, 345.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_TEARGAS, 1, 340.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_MOLOTOV, 1, 335.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_PISTOL, 1, 330.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_SILENCEDPISTOL, 1, 325.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_DEAGLE, 1, 320.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_SHOTGUN, 1, 315.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_SAWNOFF, 1, 310.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_AUTOSHOTGUN, 1, 305.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_MICROUZI, 1, 300.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_MP5, 1, 295.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_HYDRAFLARE, 1, 290.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_AK47, 1, 285.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_M4, 1, 280.5590,2480.2830,16.4844, -1);
    CreatePickup(PICKUP_WEAP_RIFLE, 1, 275.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_SNIPERRIFLE, 1, 270.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_RPG, 1, 265.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_HEATSEEKRPG, 1, 260.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_FLAMETHROWER, 1, 255.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_MINIGUN, 1, 250.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_SATCHEL, 1, 245.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_DETONATOR, 1, 240.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_SPRAY, 1, 235.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_EXTINGUISHER, 1, 230.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_CAMERA, 1, 225.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_NGOGGLES, 1, 220.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_IGOGGLES, 1, 215.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_JETPACK, 1, 210.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_PARACHUTE, 1, 205.5590,2480.2830,16.4844, -1);
	CreatePickup(PICKUP_WEAP_TEC9, 1, 200.5590,2480.2830,16.4844, -1);
	
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
