/*
 * Includes for San Andreas Multiplayer+
 * 2018 - 2021, Ivan Kmeťo
 *
 * CC0 1.0 Universal (CC0 1.0) Public Domain Dedication
 * https://creativecommons.org/publicdomain/zero/1.0/
 */


#if defined _I_SAMPP
    #endinput
#endif

#define _I_SAMPP
#include <i_sampp/i_bodyparts>
#include <i_sampp/i_boneids>
#include <i_sampp/i_cammode>
#include <i_sampp/i_carcols>
#include <i_sampp/i_carmods>
#include <i_sampp/i_colorlist>
#include <i_sampp/i_crimes>
#include <i_sampp/i_explosions>
#include <i_sampp/i_funcl>
#include <i_sampp/i_iconids>
#include <i_sampp/i_locationids>
#include <i_sampp/i_objects>
#include <i_sampp/i_paintjob>
#include <i_sampp/i_pickupids>
#include <i_sampp/i_pickuptypes>
#include <i_sampp/i_skinids>
#include <i_sampp/i_textstyle>
#include <i_sampp/i_vehhealth>
#include <i_sampp/i_vehids>
#include <i_sampp/i_weaponids>
#include <i_sampp/i_weatherids>

new ISAMPP_VERSION[5] = "v1.8";
new ISAMPP_VERID = 202118;


stock isampp_console_printversion() {
	printf("ISAMPP %s (%i)", ISAMPP_VERSION, ISAMPP_VERID);
	return 1;
}


stock MppTeleport(playerid, locationid) {
	SetPlayerPos(playerid, locCoords[locationid][0], locCoords[locationid][1], locCoords[locationid][2]);
	SetPlayerFacingAngle(playerid, locCoords[locationid][3]);
	SetPlayerInterior(playerid, locID[locationid][0]);

	return 1;
}

stock MppTeleportEx(playerid, locationid, pstringcolor) {
	SetPlayerPos(playerid, locCoords[locationid][0], locCoords[locationid][1], locCoords[locationid][2]);
	SetPlayerFacingAngle(playerid, locCoords[locationid][3]);
	SetPlayerInterior(playerid, locID[locationid][0]);
	SendClientMessage(playerid, pstringcolor, locName[locationid]);

	return 1;
}

stock MppTeleportToCoords(playerid, Float:x, Float:y, Float:z, interiorid, Float:facingangle) {
	SetPlayerPos(playerid, x, y, z);
	SetPlayerFacingAngle(playerid, facingangle);
	SetPlayerInterior(playerid, interiorid);

	return 1;
}

stock MppShowPlayerPosition(playerid, pstringcolor) {
	new Float:x, Float:y, Float:z, Float:rotation;
	new Float:camx, Float:camy, Float:camz;

	GetPlayerPos(playerid, x, y, z);
	GetPlayerFacingAngle(playerid, rotation);

	GetPlayerCameraPos(playerid, camx, camy, camz);

	new splayerpos[256];
	new scampos[256];
	format(splayerpos, sizeof(splayerpos), "Position [X]: %f [Y]: %f [Z]: %f [Interior ID]:  %i | Facing Angle: %0.2f", x, y, z, GetPlayerInterior(playerid), rotation);
	format(scampos, sizeof(scampos), "Camera Position [X] %f [Y]: %f [Z]: %f", camx, camy, camz);

	SendClientMessage(playerid, pstringcolor, splayerpos);
	SendClientMessage(playerid, pstringcolor, scampos);

	return 1;
}

stock MppShowVehicleInfo(playerid, vehicleid, pstringcolor) {
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

	return 1;
}

stock MppGetPlayerName(playerid) {
	new playername[MAX_PLAYER_NAME];
	GetPlayerName(playerid, playername, MAX_PLAYER_NAME);
	return playername;
}
