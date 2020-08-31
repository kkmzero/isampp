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

stock ISAMPP_TELEPORTEX(playerid, locationid, pstringcolor) {
	SetPlayerPos(playerid, locCoords[locationid][0], locCoords[locationid][1], locCoords[locationid][2]);
	SetPlayerFacingAngle(playerid, locCoords[locationid][3]);
	SetPlayerInterior(playerid, locID[locationid][0]);
	SendClientMessage(playerid, pstringcolor, locName[locationid]);
}

stock ISAMPP_SHOWPLAYERPOSITION(playerid, pstringcolor) {
	new Float:x, Float:y, Float:z, Float:rotation;
	GetPlayerPos(playerid, x, y, z);
	GetPlayerFacingAngle(playerid, rotation);

	new splayerpos[256];
	format(splayerpos, sizeof(splayerpos), "Position [X]: %f [Y]: %f [Z]: %f [Interior ID]:  %i | Facing Angle: %0.2f", x, y, z, GetPlayerInterior(playerid), rotation);

	SendClientMessage(playerid, pstringcolor, splayerpos);
}

stock ISAMPP_SHOWVEHICLEINFO(playerid, vehicleid, pstringcolor) {
	new vehicle, getvehiclename, Float:health;
	new Float:vehx, Float:vehy, Float:vehz;
	new Float:rotw, Float:rotx, Float:roty, Float:rotz;

	vehicle = GetPlayerVehicleID(playerid);
	GetVehicleHealth(vehicle, health);

	GetVehiclePos(vehicle, vehx, vehy, vehz);
	GetVehicleRotationQuat(vehicle, rotw, rotx, roty, rotz);
	
	getvehiclename = vehicleid - 399;
	if (getvehiclename < 0 ) getvehiclename = 0;

	new svehinfo[128];
	new svehpos[128];
	new svehrot[128];
	format(svehinfo, sizeof(svehinfo), "ID: %i | Model: %i %s | Health: %0.2f", vehicle, vehicleid, vehicleName[getvehiclename], health);
	format(svehpos, sizeof(svehpos), "Position [X]: %f [Y]: %f [Z]: %f", vehx, vehy, vehz);
	format(svehrot, sizeof(svehrot), "Rotation [W]: %0.3f [X]: %0.3f [Y]: %0.3f [Z]: %0.3f", rotw, rotx, roty, rotz);

	SendClientMessage(playerid, pstringcolor, svehinfo);
	SendClientMessage(playerid, pstringcolor, svehpos);
	SendClientMessage(playerid, pstringcolor, svehrot);
}
