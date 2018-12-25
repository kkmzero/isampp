/*
 * SA-MP Includes Library+
 * Copyright (c) 2018 Ivan Kmeto
 *
 * Licensed under the MIT License.
 * http://opensource.org/licenses/mit-license
*/

#if defined _I_SAMPP
    #endinput
#endif

#define _I_SAMPP
#include <i_sampp/i_colorlist>
#include <i_sampp/i_iconids>
#include <i_sampp/i_locationids>
#include <i_sampp/i_pickupids>
#include <i_sampp/i_skinids>
#include <i_sampp/i_vehids>
#include <i_sampp/i_weaponids>
#include <i_sampp/i_weatherids>


stock ISAMPP_TELEPORT(playerid, locationID) {
	SetPlayerPos(playerid, locCoords[locationID][0], locCoords[locationID][1], locCoords[locationID][2]);
	SetPlayerFacingAngle(playerid, locCoords[locationID][3]);
	SetPlayerInterior(playerid, locID[locationID][0]);
}

stock ISAMPP_TELEPORTEX(playerid, locationID) {
	SetPlayerPos(playerid, locCoords[locationID][0], locCoords[locationID][1], locCoords[locationID][2]);
	SetPlayerFacingAngle(playerid, locCoords[locationID][3]);
	SetPlayerInterior(playerid, locID[locationID][0]);
	SendClientMessage(playerid,COLOR_ORANGE,locName[locationID]);
}
