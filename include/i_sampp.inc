/*
 * SA-MP Includes Library+
 * Copyright (c) 2018 - 2020 Ivan Kmeťo
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
#include <i_sampp/i_vehhealth>
#include <i_sampp/i_carcols>
#include <i_sampp/i_weaponids>
#include <i_sampp/i_weatherids>

new ISAMPP_VERSION = 202012;


stock ISAMPP_TELEPORT(playerid, locationid) {
	SetPlayerPos(playerid, locCoords[locationid][0], locCoords[locationid][1], locCoords[locationid][2]);
	SetPlayerFacingAngle(playerid, locCoords[locationid][3]);
	SetPlayerInterior(playerid, locID[locationid][0]);
}

stock ISAMPP_TELEPORTEX(playerid, locationid) {
	SetPlayerPos(playerid, locCoords[locationid][0], locCoords[locationid][1], locCoords[locationid][2]);
	SetPlayerFacingAngle(playerid, locCoords[locationid][3]);
	SetPlayerInterior(playerid, locID[locationid][0]);
	SendClientMessage(playerid, COLOR_ORANGE, locName[locationid]);
}

stock ISAMPP_SHOWPLAYERPOSITION(playerid) {
	new Float:x, Float:y, Float:z;
	GetPlayerPos(playerid, x, y, z);

	new pos[128];
	format(pos, sizeof(pos), "Your Coordinates are [X]: %f [Y]: %f [Z]: %f [Interior ID]:  %i", x, y, z, GetPlayerInterior(playerid));

	SendClientMessage(playerid, COLOR_LIGHTRED, pos);
}
