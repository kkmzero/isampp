# Introduction
Includes for San Andreas Multiplayer Plus (ISAMPP) is library of include files for San Andreas Multiplayer Mod (SA-MP). SA-MP uses in most cases counterintuitive numeric identifiers as input values which can be very hard to remember and without enough experience you have to rely on external sources, such as mirrors of SA-MP wiki with incomplete or outdated information. ISAMPP seeks to make development of SA-MP gamemodes easier by re-defining these numeric identifiers and by providing collection of useful custom scripting functions.

Additionally, ISAMPP provides other libraries - such as list of location coordinates and their names in game, lists of objects, sounds and vehicle names, various functions for string manipulation and much more. ISAMPP also has its own sandbox-styled gamemode in which you can test everything.

*ISAMPP is not part of San Andreas Multiplayer mod (SA-MP) and it is not affiliated with Rockstar Games, Rockstar North or Take-Two Interactive Software, Inc. Grand Theft Auto and Grand Theft Auto: San Andreas are registered trademarks of Take-Two Interactive Software, Inc.*

*ISAMPP versions 1.3 or newer should be considered public domain.*
</br>*https://creativecommons.org/publicdomain/zero/1.0/*

<img src="logo/isampp_logo_250px.png" width="100">
</br></br>


# Library

Every ISAMPP include file starts with prefix *i\_*. Please keep in mind that ISAMPP may not be the only set of include files using this prefix.

*bodyparts* - List of available player/npc body parts
</br>*boneids* - List of player bone identifiers
</br>*cammode* - List of known camera modes
</br>*carcols* - List of definitions for all available vehicle colors
</br>*carmods* - List of all available components for vehicle customization
</br>*colorlist* - List of color definitions for strings
</br>*crimes* - List of crime reports
</br>*explosions* - List of available types of explosions
</br>*funcl* - Legacy functions
</br>*iconids* - List of HUD map icons
</br>*locationids* - List of location coordinates, interior identifiers and names
</br>*objects* - List of game objects/models
</br>*paintjob* - List of all available vehicle paintjobs
</br>*pickupids* - List of definitions for pickup identifiers
</br>*pickuptypes* - List of definitions for pickup types
</br>*skinids* - List of character skins/models
</br>*soundids* - List of game sounds
</br>*textstyle* - List of definitions for GameText styles
</br>*vehcomponents* - List of default vehicle components
</br>*vehhealth* - List of vehicle health configurations
</br>*vehids* - List of all available vehicles and their names
</br>*weaponids* - List of weapons sorted by weapon slot IDs
</br>*weatherids* - List of definitions for weather identifiers
</br></br>


# Installation
Copy contents of *include* folder to *"[SA-MP Server folder]/include"* and also to *"include"* folder for Pawno (by default *"[SA-MP Server folder]/pawno/include"*).

In your gamemode file you can include ISAMPP header for all its contents:
```pawn
#include <i_sampp>
```

or you can include each file separately:

```pawn
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
#include <i_sampp/i_soundids>
#include <i_sampp/i_textstyle>
#include <i_sampp/i_vehcomponents>
#include <i_sampp/i_vehhealth>
#include <i_sampp/i_vehids>
#include <i_sampp/i_weaponids>
#include <i_sampp/i_weatherids>
```

If you wish to run included sandbox gamemode, you have to add file testmpp.pwn to your *"gamemodes"* folder and compile it. Alternatively, you can use pre-compiled file testmpp.amx.
</br></br>


# Includes

## Body Parts
```
Prefix: BODYPART_
File:   i_bodyparts.inc
```

Body parts can be used as parameters in functions *OnPlayerGiveDamage*, *OnPlayerTakeDamage* or *OnPlayerGiveDamageActor*. It is unknown if IDs 0, 1 and 2 have any use. You can test this feature in sandbox gamemode by shooting Actor NPC.
</br></br>

| Identifier         | Value | Body Part |
| ------------------ | ----- | --------- |
| BODYPART_TORSO     | 3     | Torso     |
| BODYPART_GROIN     | 4     | Groin     |
| BODYPART_LEFTARM   | 5     | Left Arm  |
| BODYPART_RIGHTARM  | 6     | Right Arm |
| BODYPART_LEFTLEG   | 7     | Left Leg  |
| BODYPART_RIGHTLEG  | 8     | Right Leg |
| BODYPART_HEAD      | 9     | Head      |

Resources: https://open.mp/docs/scripting/resources/bodyparts
</br></br>


## Bone Identifiers
```
Prefix: BONE_
File:   i_boneids.inc
```

Bone identifiers can be used as parameters for attaching objects to specific parts of player model/skin with function *SetPlayerAttachedObject*.
</br></br>

| Identifier         | Value | Bone                      |
| ------------------ | ----- | ------------------------- |
| BONE_SPINE         | 1     | Spine                     |
| BONE_HEAD          | 2     | Head                      |
| BONE_LEFTUPPERARM  | 3     | Left Upper Arm            |
| BONE_RIGHTUPPERARM | 4     | Right Upper Arm           |
| BONE_LEFTHAND      | 5     | Left Hand                 |
| BONE_RIGHTHAND     | 6     | Right Hand                |
| BONE_LEFTTHIGH     | 7     | Left Thigh                |
| BONE_RIGHTTHIGH    | 8     | Right Thigh               |
| BONE_LEFTFOOT      | 9     | Left Foot                 |
| BONE_RIGHTFOOT     | 10    | Right Foot                |
| BONE_RIGHTCALF     | 11    | Right Calf                |
| BONE_LEFTCALF      | 12    | Left Calf                 |
| BONE_LEFTFOREARM   | 13    | Left Forearm              |
| BONE_RIGHTFOREARM  | 14    | Right Forearm             |
| BONE_LEFTSHOULDER  | 15    | Left Clavicle (shoulder)  |
| BONE_RIGHTSHOULDER | 16    | Right Clavicle (shoulder) |
| BONE_NECK          | 17    | Neck                      |
| BONE_JAW           | 18    | Jaw                       |

</br>**Example of implementation:**
```pawn
public OnPlayerSpawn(playerid)
{
    //Give player green hat on spawn
    SetPlayerAttachedObject(playerid, BONE_LEFTUPPERARM, 19487, 2, 0.101, 
    -0.0, 0.0, 5.50, 84.60, 83.7, 1.0, 1.0, 1.0, 0xFF00FF00);

    return 1;
}
```

Resources: https://open.mp/docs/scripting/resources/boneid
</br></br>


## Camera Modes
```
Prefix: CAMMODE_
File:   i_cammode.inc
```

List of known camera modes used as returned value of function *GetPlayerCameraMode*. In ISAMPP sandbox gamemode you can output more information about active camera mode with command **/cameramode**
</br></br>

| Identifier               | Value | Description                                          |
| ------------------------ | ----- | ---------------------------------------------------- |
| CAMMODE_TRAIN            | 3     | Train/tram camera                                    |
| CAMMODE_FOLLOWPED        | 4     | Follow player camera                                 |
| CAMMODE_SNIPER           | 7     | Sniper rifle aiming                                  |
| CAMMODE_ROCKETAIM        | 8     | Rocket launcher aiming                               |
| CAMMODE_FIXED            | 15    | Fixed camera (non-moving)                            |
| CAMMODE_VEHICLEFRONT     | 16    | Vehicle front camera, bike side camera               |
| CAMMODE_VEHICLEDEFAULT   | 18    | Normal vehicle camera, several variable distances    |
| CAMMODE_BOATDEFAULT      | 22    | Normal boat camera                                   |
| CAMMODE_WEAPONAIM        | 46    | Weapon aiming camera                                 |
| CAMMODE_ROCKETAIM2       | 51    | Heat-seeking Rocket Launcher aiming camera           |
| CAMMODE_WEAPONAIM2       | 53    | Aiming any other weapon                              |
| CAMMODE_VEHICLEPASSENGER | 55    | Vehicle passenger drive-by camera                    |
| CAMMODE_HELICHASE        | 56    | Chase camera: helicopter/bird view                   |
| CAMMODE_GROUNDCHASE      | 57    | Chase camera: ground camera, zooms in very quickly   |
| CAMMODE_FLYBYCHASE       | 58    | Chase camera: horizontal flyby past vehicle          |
| CAMMODE_GROUNDCHASE2     | 59    | Chase camera (air vehicles): looking up              |
| CAMMODE_FLYBYCHASE2      | 62    | Chase camera (air vehicles): vertical flyby          |
| CAMMODE_FLYBYCHASE3      | 63    | Chase camera (air vehicles): horizontal flyby        |
| CAMMODE_PILOTCHASE       | 64    | Chase camera (air vehicles): camera focused on pilot |

Resources: https://open.mp/docs/scripting/resources/cameramodes
</br></br>


## Color List
```
Prefix: COLOR_, SCOL_
File:   i_colorlist.inc
```

Color List contains definitions of some frequently used colors in two formats. Primary or Main color definitions have prefix *COLOR* and are defined in 0xRRGGBBAA format. Secondary or String color definitions with prefix *SCOL* are defined in more common hex format "\{RRGGBB\}" without the alpha color transparency values. Secondary or String colors can be used directly in strings while Primary/Main colors would be used mainly as separate parameters in SA-MP functions.

To see how every color looks in game, use in included sandbox gamemode command **/maincols [0-14]** or **/stringcols**. Screenshot of color strings printed out in client message box is located in *docs/images/colorlist.png*.

</br>**Example of implementation:**
```pawn
//Main color value used as separate input parameter, outputs Hello World in red color
SendClientMessage(playerid, COLOR_RED, "Hello World");

//Secondary color value inserted to string, now the word World is blue
SendClientMessage(playerid, COLOR_RED, "Hello "SCOL_BLUE"World");
```

Resources: https://open.mp/docs/scripting/resources/colorslist
</br></br>


## Crime Reports
```
Prefix: CRIME_
File:   i_crimes.inc
```

List of crime report identifiers starting with prefix *CRIME* followed by ten-code. These macros can be used as input parameters in function *PlayCrimeReportForPlayer(playerid, suspectid, **crimeid**)*. You can try this in sandbox gamemode with command **/crime [3-19, 21, 22]**.
</br></br>

| Identifier    | Value | Description                            |
| ------------- | ----- | -------------------------------------- |
| CRIME_10_71   | 3     | 10-71 Advise nature of fire            |
| CRIME_10_37_1 | 4     | 10-37 Investigate suspicious vehicle   |
| CRIME_10_81_1 | 5     | 10-81 Breathalyzer Report              |
| CRIME_10_24   | 6     | 10-24 Assignment Completed             |
| CRIME_10_21_1 | 7     | 10-21 Call () by phone                 |
| CRIME_10_21_2 | 8     | 10-21 Call () by phone                 |
| CRIME_10_21_3 | 9     | 10-21 Call () by phone                 |
| CRIME_10_17   | 10    | 10-17 Meet Complainant                 |
| CRIME_10_81_2 | 11    | 10-81 Breathalyzer Report              |
| CRIME_10_91_1 | 12    | 10-91 Pick up prisoner/subject         |
| CRIME_10_28_1 | 13    | 10-28 Vehicle registration information |
| CRIME_10_81_3 | 14    | 10-81 Breathalyzer Report              |
| CRIME_10_28_2 | 15    | 10-28 Vehicle registration information |
| CRIME_10_91_2 | 16    | 10-91 Pick up prisoner/subject         |
| CRIME_10_34   | 17    | 10-34 Riot                             |
| CRIME_10_37_2 | 18    | 10-37 Investigate suspicious vehicle   |
| CRIME_10_81_4 | 19    | 10-81 Breathalyzer Report              |
| CRIME_10_7_1  | 21    | 10-7 Out of service                    |
| CRIME_10_7_2  | 22    | 10-7 Out of service                    |

</br>**Example of implementation:**
```pawn
public OnPlayerCommandText(playerid, cmdtext[])
{
    if (strcmp("/crime", cmdtext, true, 20) == 0) {
        PlayCrimeReportForPlayer(playerid, playerid, CRIME_10_71);
        return 1;
    }

    return 0;
}
```

Resources: https://open.mp/docs/scripting/resources/crimelist
</br></br>


## Explosions
```
Prefix: EXPLOSION_
File:   i_explosions.inc
```

There are 14 types of available explosions and you can test every explosion in sandbox gamemode with in-game command **/explosion [ID]**. These identifiers can be used with both functions *CreateExplosion* or *CreateExplosionForPlayer*.
</br></br>

| Identifier            | Value | Description                                        |
| --------------------- | ----- | -------------------------------------------------- |
| EXPLOSION_SMALL_1     | 0     | Visible + Audible                                  |
| EXPLOSION_MEDIUM      | 1     | Visible + Audible, No Physical Blast, Creates Fire |
| EXPLOSION_SMALL_2     | 2     | Visible + Audible, Creates Fire                    |
| EXPLOSION_SMALL_3     | 3     | Visible + Audible, Sometimes Creates Fire          |
| EXPLOSION_CHEMICAL_1  | 4     | Visible, Silent                                    |
| EXPLOSION_CHEMICAL_2  | 5     | Visible, Silent                                    |
| EXPLOSION_LARGE_1     | 6     | Visible + Audible                                  |
| EXPLOSION_LARGE_2     | 7     | Visible + Audible                                  |
| EXPLOSION_INVISIBLE_1 | 8     | Audible                                            |
| EXPLOSION_INVISIBLE_2 | 9     | Creates Fire + Audible                             |
| EXPLOSION_LARGE_3     | 10    | Visible + Audible                                  |
| EXPLOSION_SMALL_4     | 11    | Visible + Audible                                  |
| EXPLOSION_RCTIGER     | 12    | Visible + Audible                                  |
| EXPLOSION_INVISIBLE_3 | 13    | No Physical Blast, Silent                          |

Resources: https://open.mp/docs/scripting/resources/explosionlist
</br></br>


## GameText Styles
```
Prefix: GMTEXT_STYLE_
File:   i_textstyle.inc
```

List of definitions for SA-MP function *GameTextForPlayer(playerid, const string[], time, **style**)*. Some styles might not work properly or could crash the game.
</br></br>

| Identifier                | Value | Description                                  |
| ------------------------- | ----- | -------------------------------------------- |
| GMTEXT_STYLE_PRICEDOWN    | 0     | Appears for 9 seconds                        |
| GMTEXT_STYLE_RPRICEDOWN   | 1     | Fades out after 8 seconds                    |
| GMTEXT_STYLE_SA           | 2     | Does not disappear until player respawns     |
| GMTEXT_STYLE_SLIM1        | 3     | San Andreas specific font                    |
| GMTEXT_STYLE_SLIM2        | 4     | San Andreas specific font                    |
| GMTEXT_STYLE_SLIMW        | 5     | Displays for 3 seconds                       |
| GMTEXT_STYLE_BPRICEDOWN   | 6     | Blue Pricedown font in middle of screen      |
| GMTEXT_STYLE_VEHNAME      | 7     | SA vehicle names (fixes.inc)                 |
| GMTEXT_STYLE_LOCATION     | 8     | SA location names (fixes.inc)                |
| GMTEXT_STYLE_RADIO        | 9     | SA selected radio station names (fixes.inc)  |
| GMTEXT_STYLE_RADIOW       | 10    | SA switching radio station names (fixes.inc) |
| GMTEXT_STYLE_PMONEY       | 11    | SA positive money (fixes.inc)                |
| GMTEXT_STYLE_NMONEY       | 12    | SA negative money (fixes.inc)                |
| GMTEXT_STYLE_STUNT        | 13    | SA stunt bonuses (fixes.inc)                 |
| GMTEXT_STYLE_CLOCK        | 14    | SA in-game clock (fixes.inc)                 |
| GMTEXT_STYLE_NOTIFICATION | 15    | SA notification popup (fixes.inc)            |

fixes.inc: https://github.com/pawn-lang/sa-mp-fixes
</br>Resources: https://open.mp/docs/scripting/resources/gametextstyles
</br></br>


## Locations
```
Prefix: LOC_
File:   i_locationids.inc
```

Definitions for in-game locations, interiors or exteriors, set as macros for numeric identifiers and three arrays. Array **locCoords** is storing float values of XYZ position on the map and float value of PlayerFacingAngle. By default, your PlayerInterior value is set to 0 whenever you are "outside" on the map. When player enters the interior, in order to load the interior you have to change PlayerInterior value accordingly. This is what array **locID** includes. Third array, **locName**, has defined strings of names of particular locations so this information can be displayed to player if needed. You can test teleporting to all locations in sandbox gamemode with in-game command **/tp [ID]**.

*Note: If you wish to add new location to this list, you have to do it in correct order. Not every location has proper collision boxes because it was used only in cutscene, so in certain interiors you may fall through ground.*

Resources: https://open.mp/docs/scripting/resources/interiorids
</br></br>


## Map Icons
```
Prefix: ICON_
File:   i_iconids.inc
```

There are in total 64 map icons included as macro defines with prefix *ICON*.

Resources: https://open.mp/docs/scripting/resources/mapicons
</br></br>


## Objects
```
Prefix: OBJ_
File:   i_objects.inc
```

Available game objects are ordered by IDE file and ID number. Every game object is listed with prefix *OBJ* followed by its name of DFF file. Every dash in DFF filename is replaced with underscore.

Resources: https://open.mp/docs/scripting/resources/samp_objects
</br></br>


## Pickups
```
Prefix: PICKUP_, PICKUP_WEAP_
File:   i_pickupids.inc
```

Pickup identifiers are included as macro defines with prefix *PICKUP*. Every pickup defined in ISAMPP is placed on map in ISAMPP sandbox gamemode. Weapon pickups use extended prefix *PICKUP_WEAP* for easier use.

Resources: https://open.mp/docs/scripting/resources/pickupids
</br></br>


## Pickup Types
```
Prefix: PICKUP_TYPE_
File:   i_pickuptypes.inc
```

Pickup types specify behavior of created pickups in gamemodes.
</br></br>

| Identifier              | Value | Description                                                              |
| ----------------------- | ----- | ------------------------------------------------------------------------ |
| PICKUP_TYPE_DISABLED    | 0     | Cannot be picked up                                                      |
| PICKUP_TYPE_SCRIPTED    | 1     | Disables pickup scripts to allow for scripted actions only               |
| PICKUP_TYPE_RESPAWN_30S | 2     | Disappears after pickup, respawns after 30 seconds                       |
| PICKUP_TYPE_ONCE        | 3     | Disappears after pickup                                                  |
| PICKUP_TYPE_TEMP20      | 4     | Disappears after 20 seconds                                              |
| PICKUP_TYPE_TEMP120     | 5     | Disappears after 120 seconds                                             |
| PICKUP_TYPE_ONCE_SILENT | 8     | Disappears after pickup, but has no effect                               |
| PICKUP_TYPE_LANDMINE_T  | 9     | Explodes on contact with any ground vehicle in 10 seconds after creation |
| PICKUP_TYPE_LANDMINE    | 10    | Explodes on contact with any ground vehicle                              |
| PICKUP_TYPE_SEAMINE_T   | 11    | Explodes on contact with any vessel in 10 seconds after creation         |
| PICKUP_TYPE_SEAMINE     | 12    | Explodes on contact with any vessel                                      |
| PICKUP_TYPE_INVISIBLE   | 13    | Triggers checkpoint sound when picked up with a vehicle                  |
| PICKUP_TYPE_VEHICLE     | 14    | Can only be picked up with a vehicle                                     |
| PICKUP_TYPE_RESPAWN_12M | 15    | Pickup will respawn after 12 minutes, if ID is Bribe then 5 minutes      |
| PICKUP_TYPE_PROPERTY    | 18    | Disappears after pressing TAB key (used for buying properties)           |
| PICKUP_TYPE_MONEY       | 19    | Disappears after pickup, doesn't respawn, makes "cash pickup" sound      |
| PICKUP_TYPE_SNAPSHOT    | 20    | Disappears after taking a snapshot (used for camera pickups)             |
| PICKUP_TYPE_MISSION     | 22    | Disappears after pickup (used for mission markers)                       |

Resources: https://open.mp/docs/scripting/resources/pickuptypes
</br></br>


## Skins/Playermodels
```
Prefix: SKIN_
File:   i_skinids.inc
```

Skins are included as macro defines with prefix *SKIN* followed by name of model in game. With exception of few character models *(mainly main story characters and other special characters)* where the name of model is obvious *(f.e. emmet = Emmet, etc.)*, character models are named in this or similar format: prefix *(f.e. if is located only in certain area)*, race, gender, age, suffix. In this context BMYRI = **B**lack, **M**ale, **Y**oung, **RI**ch.

Resources: https://open.mp/docs/scripting/resources/skins
</br></br>


## Sounds
```
Prefix: SND_
File:   i_soundids.inc
```

Sound identifiers which are meant to be used as input parameters in function *PlayerPlaySound*. Please note that this list of available sounds may be incomplete and some sound loops might cause the game client to crash.

Resources: https://open.mp/docs/scripting/resources/sound-ids
</br></br>


## Vehicles
```
Prefix: VEH_
File:   i_vehids.inc
```

Vehicle identifiers are included as macro defines with prefix *VEH* followed by the name of vehicle in game with capital letters *(motorcycles, bicycles, boats, planes, helicopters, trailers, trains, etc. are included in this format as well)*. For better orientation in list, these defines are sorted by vehicle type.

Resources: https://open.mp/docs/scripting/resources/vehicleid
</br></br>


## Default Vehicle Components
```
Prefix: LIGHT_, TIRE4W_, TIRE2W_
File:   i_vehcomponents.inc
```

Tables of default vehicle components. Can be used as paramenters in function *UpdateVehicleDamageStatus* or related custom functions.
</br></br>

### Vehicle Lights

List of all vehicle lights. Can be used as parameters in custom functions *MppEnableVehicleLights(vehicleid, **lights**)* and *MppDisableVehicleLights(vehicleid, **lights**)*. Use bitwise operator OR to create any combination of lights. You can test this in ISAMPP sandbox gamemode with commands **/lightson** and **/lightsoff** while being in any vehicle.

*Note: The lights on vehicles with 2 lights can not be changed and the two back lights of a vehicle can not be changed separately.*
</br></br>

| Identifier | Exact Value | Description       |
| -----------|-------------|-------------------|
| LIGHT_FL   | 0b00000001  | Front-left light  |
| LIGHT_FR   | 0b00000100  | Front-right light |
| LIGHT_BACK | 0b01000000  | Both back lights  |
| LIGHT_ALL  | 0b01000101  | All lights        |

Resources: https://www.open.mp/docs/scripting/resources/lightstates
</br></br>

### Vehicle Tires

List of all vehicle tires. Can be used as parameters in custom functions *MppFixVehicleTires(vehicleid, **tires**)* and *MppPopVehicleTires(vehicleid, **tires**)*. Use bitwise operator OR to create any combination of tires. You can test this in ISAMPP sandbox gamemode with commands **/fixtires** and **/poptires** while being in any vehicle.
</br></br>

| Identifier   | Exact Value | Description                         |
| -------------|-------------|-------------------------------------|
| TIRE4W_FL    | 0b1000      | 4-wheeled vehicle, front-left tire  |
| TIRE4W_BL    | 0b0100      | 4-wheeled vehicle, back-left tire   |
| TIRE4W_FR    | 0b0010      | 4-wheeled vehicle, front-right tire |
| TIRE4W_BR    | 0b0001      | 4-wheeled vehicle, back-right tire  |
| TIRE4W_ALL   | 0b1111      | 4-wheeled vehicle, all tires        |
| TIRE2W_FRONT | 0b10        | 2-wheeled vehicle, front tire       |
| TIRE2W_BACK  | 0b01        | 2-wheeled vehicle, back tire        |
| TIRE2W_ALL   | 0b11        | 2-wheeled vehicle, all tires        |

Resources: https://www.open.mp/docs/scripting/resources/tirestates
</br></br>


## Vehicle Customization Components
```
Prefix: CARMOD_
File:   i_carmods.inc
```

List of all available components for vehicle customization. Can be used with function *AddVehicleComponent(vehicleid, **componentid**)*.

Resources: https://open.mp/docs/scripting/resources/carcomponentid
</br></br>


## Vehicle Colors
```
Prefix: CARCOL_, CARCOL_SAMP_
File:   i_carcols.inc
```

List of all available colors for vehicles in game. Colors from carcols.dat file use prefix *CARCOL* and color names with prefix *CARCOL_SAMP* are supported only in SA-MP version 0.3x or newer.

Resources: https://open.mp/docs/scripting/resources/vehiclecolorid
</br></br>


## Vehicle Paintjobs
```
Prefix: PAINTJOB_
File:   i_paintjob.inc
```

List of all available paintjobs for vehicles in game, starting with prefix *PAINTJOB* followed by vehicle name and name of paintjob. Use *PAINTJOB_REMOVE* to remove applied paintjob.

</br>**Example of implementation:**
```pawn
AddStaticVehicle(VEH_CAMPER, 425.7991, 2493.3472, 16.5794,
                 180, CARCOL_WHITE, CARCOL_WHITE);
ChangeVehiclePaintjob(vehicleid, PAINTJOB_CAMPER_TRUTH);
```

Resources: https://open.mp/docs/scripting/resources/paintjobs
</br></br>


## Vehicle Health
```
Prefix: VEH_HEALTH_
File:   i_vehhealth.inc
```

Vehicle Health configurations are included as macro defines with prefix *VEH_HEALTH* followed by the desired pre-defined identifier. These values are only related to engine condition and do not change visual damage of vehicle model. You can test this in ISAMPP sandbox gamemode with command **/setvehiclehealth [ID]** while being in any vehicle.
</br></br>

| Identifier                | Value | Description                         |
| --------------------------|-------|-------------------------------------|
| VEH_HEALTH_FULL           | 1000  | Full vehicle health                 |
| VEH_HEALTH_FULL_LOW       | 650   | Lowest value for undamaged vehicle  |
| VEH_HEALTH_WHITESMOKE     | 649   | White smoke from engine             |
| VEH_HEALTH_WHITESMOKE_LOW | 550   | Lowest value for white engine smoke |
| VEH_HEALTH_GREYSMOKE      | 549   | Grey smoke from engine              |
| VEH_HEALTH_GREYSMOKE_LOW  | 390   | Lowest value for grey engine smoke  |
| VEH_HEALTH_BLACKSMOKE     | 389   | Black smoke from engine             |
| VEH_HEALTH_BLACKSMOKE_LOW | 250   | Lowest value for black engine smoke |
| VEH_HEALTH_ONFIRE         | 249   | Sets car on fire                    |

Resources: https://open.mp/docs/scripting/resources/vehiclehealth
</br></br>


## Weapons
```
Prefix: WEAP_
File:   i_weaponids.inc
```

Weapon identifiers are included as macro defines with prefix *WEAP*. In ISAMPP sandbox gamemode weapon pickups are fully functional. Every weapon in game can be used only for certain weapon slot and weapon identifiers are ordered by weapon slot number.

Resources: https://open.mp/docs/scripting/resources/weaponids
</br></br>


## Weather Identifiers
```
Prefix: WEATHER_
File:   i_weatherids.inc
```

Weather identifiers are included as macro defines with prefix *WEATHER*. In ISAMPP sandbox gamemode you can test weather settings with command **/weather [ID]**.

Resources: https://open.mp/docs/scripting/resources/weatherid
</br></br>


## Custom Functions
ISAMPP provides various stock scripting functions which may be useful in creating your own gamemodes for SA-MP or simply for debugging purposes. These stock functions are defined in *i_sampp.inc* file.
</br></br>

### print_isampp_version()
Outputs ISAMPP version to server console.

**Example of implementation:**
```pawn
main() {
    print_isampp_version();
}
```
</br>

### print_pawncc_version()
Outputs version of compiler to server console if Pawn Community Compiler (Pawncc) is used.

**Example of implementation:**
```pawn
main() {
    print_pawncc_version();
}
```
</br>

### MppTeleport(playerid, locationid)
Teleports player to desired location passed as parameter 'locationid'.

**Example of implementation:**
```pawn
if (strcmp("/tp barbershop", cmdtext, true, 20) == 0) {
    MppTeleport(playerid, LOC_BARBERSHOP);
    return 1;
}
```
</br>

### MppTeleportEx(playerid, locationid, pstringcolor)
Same as MppTeleport, plus outputs location name to in-game chat window. Parameter 'pstringcolor' must be in hexadecimal format 0xRRGGBBAA.

**Example of implementation:**
```pawn
if (strcmp("/tp barbershop", cmdtext, true, 20) == 0) {
    MppTeleportEx(playerid, LOC_BARBERSHOP, COLOR_LIMEGREEN);
    return 1;
}
```
</br>

### MppTeleportToCoords(playerid, x, y, z, interiorid, facingangle)
Teleports player to specified XYZ coordinates, supplied with interior identifier and player facing angle.

**Example of implementation:**
```pawn
if (strcmp("/tpcoord", cmdtext, true, 20) == 0) {
    MppTeleportToCoords(playerid, 49.4172, 2512.4282, 16.4844, 0, 272);
    return 1;
}
```
</br>

### MppShowPlayerPosition(playerid, pstringcolor)
Outputs current player location coordinates, interior identifier, facing angle and player camera position coordinates to in-game chat window. Parameter 'pstringcolor' must be in hexadecimal format 0xRRGGBBAA. This function might not work properly if player is in a vehicle.

**Example of implementation:**
```pawn
if (strcmp("/showplayerpos", cmdtext, true, 15) == 0) {
    MppShowPlayerPosition(playerid, COLOR_LIGHTRED);
    return 1;
}
```
</br>

### MppShowVehicleInfo(playerid, vehmodelid, pstringcolor)
Outputs ID, model, health, position and rotation of vehicle in which is player currently sitting to in-game chat window. Parameter 'pstringcolor' must be in hexadecimal format 0xRRGGBBAA.

*Note: You must pass vehicleid parameter if you want to get model name otherwise function returns '0 Unknown'.*

**Example of implementation:**
```pawn
new VehicleModelID = 0;

public OnPlayerCommandText(playerid, cmdtext[])
{
    if (strcmp("/showvehicleinfo", cmdtext, true, 15) == 0) {
        MppShowVehicleInfo(playerid, VehicleModelID, COLOR_LIGHTBLUE);
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
```
</br>

### MppGetPlayerName(playerid)

Returns player nick/name from given playerid.

**Example of implementation:**
```pawn
if(strcmp(cmdtext, "/myname", true) == 0) {
    SendClientMessage(playerid, COLOR_LIGHTBLUE, MppGetPlayerName(playerid));
    return 1;
}
```
</br>

### MppEnableVehicleLights(vehicleid, lights)
Turns on (enables) lights of any given vehicle. You can use bitwise operator OR to combine specific lights. 

*Note: Lights can not be turned on during daytime.*

**Example of implementation:**
```pawn
if (strcmp(cmdtext, "/lightson", true) == 0) {
    MppEnableVehicleLights(GetPlayerVehicleID(playerid), LIGHT_ALL);
    return 1;
}
```
</br>

### MppDisableVehicleLights(vehicleid, lights)
Turns off (disables) lights of any given vehicle. You can use bitwise operator OR to combine specific lights.

**Example of implementation:**
```pawn
if (strcmp(cmdtext, "/frontlightsoff", true) == 0) {
    MppDisableVehicleLights(GetPlayerVehicleID(playerid), LIGHT_FL | LIGHT_FR);
    return 1;
}
```
</br>

### MppFixVehicleTires(vehicleid, tires)
Fixes tires of any given vehicle. You can use bitwise operator OR to combine specific tires.

**Example of implementation:**
```pawn
if(strcmp(cmdtext, "/fixtires", true) == 0) {
    MppFixVehicleTires(GetPlayerVehicleID(playerid), TIRE4W_ALL);
    return 1;
}
```
</br>

### MppPopVehicleTires(vehicleid, tires)
Pops tires of any given vehicle. You can use bitwise operator OR to combine specific tires.

**Example of implementation:**
```pawn
if(strcmp(cmdtext, "/popbacktires", true) == 0) {
    MppPopVehicleTires(GetPlayerVehicleID(playerid), TIRE4W_BR | TIRE4W_BL);
    return 1;
}
```
</br>


## Legacy Functions
Legacy functions are implemented in file *i_funcl.inc* for backwards compatibility with really old SA-MP gamemodes which often use them.
</br></br>

### isnull(string)
Checks whether a string is equal to null (empty). More efficient than checking if strlen is equal to 0.

### max(int1, int2)
Returns larger of two given integers.

### min(int1, int2)
Returns smaller of two given integers.

### rot13(string[])
Rotates the alphabet in string by half of its length - 13 characters. It is a symmetric operation: applying it twice on the same string reveals the original.

### strcpy(dest[], const source[], len = sizeof(dest))
Copies the source string to the destination string.

### strclr(string[])
Empties and clears given string.

### strisempty(const string[])
Returns true if the given string is empty, otherwise returns false.

### strrest(const string[], \&index)
Splits string and gives back remaining part of the string divided by space ' ' character as default delimiter.

### strtok(const string[], \&index)
Strtok is used for splitting strings and was used as one of the methods for creating game commands with arguments. Strings are divided by space ' ' character as default delimiter.

### strtolower(string[])
Changes all characters in the string to lowercase.

### strtoupper(string[])
Changes all characters in the string to uppercase.

### swap(int1, int2)
Swaps assigned values of two given integers.
