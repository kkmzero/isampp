# Includes for San Andreas Multiplayer+
Includes for San Andreas Multiplayer Plus (ISAMPP) is library of include files for San Andreas Multiplayer Mod (SA-MP). SA-MP uses in most cases counterintuitive numeric identifiers as input values which can be very hard to remember and without enough experience you have to rely on external sources, such as mirrors of SA-MP wiki with incomplete or outdated information. ISAMPP seeks to make development of SA-MP gamemodes easier by re-defining these numeric identifiers and by providing collection of useful custom scripting functions.

Additionally, ISAMPP provides other libraries - such as list of location coordinates and their names in game, lists of objects, sounds and vehicle names, various functions for string manipulation and much more. ISAMPP also has its own sandbox-styled gamemode in which you can test everything.

*ISAMPP is not part of San Andreas Multiplayer mod (SA-MP) and it is not affiliated with Rockstar Games, Rockstar North or Take-Two Interactive Software, Inc. Grand Theft Auto and Grand Theft Auto: San Andreas are registered trademarks of Take-Two Interactive Software, Inc.*

*ISAMPP versions 1.3 or newer should be considered [public domain](LICENSE).*

<img src="docs/logo/isampp_logo_250px.png" width="100">

# Installation
Copy contents of include folder to *”[SA-MP Server folder]/include”* and also to *”include”* folder for Pawno *(by default ”[SA-MP Server folder]/pawno/include”)*.

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

If you wish to run included sandbox gamemode, you have to add file ```testmpp.pwn``` to your *”gamemodes”* folder and compile it.
Alternatively, you can use pre-compiled file ```testmpp.amx```.

# Library

Every ISAMPP include file starts with prefix *'i_'*. Please keep in mind that ISAMPP may not be the only set of include files using this prefix.

*bodyparts* - List of available player/npc body parts</br>
*boneids* - List of player bone identifiers</br>
*cammode* - List of known camera modes</br>
*carcols* - List of definitions for all available vehicle colors</br>
*carmods* - List of all available components for vehicle customization</br>
*colorlist* - List of color definitions for strings</br>
*crimes* - List of crime reports</br>
*explosions* - List of available types of explosions</br>
*funcl* - Legacy functions</br>
*iconids* - List of HUD map icons</br>
*locationids* - List of location coordinates, interior identifiers and names</br>
*objects* - List of game objects/models</br>
*paintjob* - List of all available vehicle paintjobs</br>
*pickupids* - List of definitions for pickup identifiers</br>
*pickuptypes* - List of definitions for pickup types</br>
*skinids* - List of character skins/models</br>
*soundids* - List of game sounds</br>
*textstyle* - List of definitions for GameText styles</br>
*vehcomponents* - List of default vehicle components</br>
*vehhealth* - List of vehicle health configurations</br>
*vehids* - List of all available vehicles and their names</br>
*weaponids* - List of weapons sorted by weapon slot IDs</br>
*weatherids* - List of definitions for weather identifiers

# Custom Functions

ISAMPP uses various stock scripting functions which may be useful in creating your custom gamemodes for SA-MP 
or simply for debugging purposes. These stock functions are defined in ```i_sampp.inc``` file.

#### print_isampp_version()
*Outputs ISAMPP version to server console.*

#### print_pawncc_version()
*Outputs version of compiler to server console if Pawn Community Compiler (Pawncc) is used.*

#### MppTeleport(playerid, locationid)
*Teleports player to desired location passed as parameter ’locationid’.*

#### MppTeleportEx(playerid, locationid, pstringcolor)
*Same as MppTeleport, plus outputs location name to in-game chat window.*

#### MppTeleportToCoords(playerid, x, y, z, interiorid, facingangle)
*Teleports player to specified xyz coordinates, supplied with interior identifier and player facing angle.*

#### MppShowPlayerPosition(playerid, pstringcolor)
*Outputs current player location coordinates, interior identifier, facing angle and player camera position coordinates to in-game chat window.*

#### MppShowVehicleInfo(playerid, vehmodelid, pstringcolor)
*Outputs ID, model, health, position and rotation of vehicle in which is player currently sitting to in-game chat window.*

#### MppGetPlayerName(playerid)
*Returns player nick/name from given playerid.*

#### MppEnableVehicleLights(vehicleid, lights)
*Turns on (enables) lights of any given vehicle. You can use bitwise operator OR to combine specific lights.*

#### MppDisableVehicleLights(vehicleid, lights)
*Turns off (disables) lights of any given vehicle. You can use bitwise operator OR to combine specific lights.*

#### MppFixVehicleTires(vehicleid, tires)
*Fixes tires of any given vehicle. You can use bitwise operator OR to combine specific tires.*

#### MppPopVehicleTires(vehicleid, tires)
*Pops tires of any given vehicle. You can use bitwise operator OR to combine specific tires.*
