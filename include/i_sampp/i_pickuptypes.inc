/*
 * Includes for San Andreas Multiplayer+
 * 2018 - 2023, Ivan Kmeťo
 *
 * CC0 1.0 Universal (CC0 1.0) Public Domain Dedication
 * https://creativecommons.org/publicdomain/zero/1.0/
 */


#define PICKUP_TYPE_DISABLED      0    //Cannot be picked up
#define PICKUP_TYPE_SCRIPTED      1    //Disables pickup scripts to allow for scripted actions only
#define PICKUP_TYPE_RESPAWN_30S   2    //Disappears after pickup, respawns after 30 seconds
#define PICKUP_TYPE_ONCE          3    //Disappears after pickup
#define PICKUP_TYPE_TEMP20        4    //Disappears after 20 seconds
#define PICKUP_TYPE_TEMP120       5    //Disappears after 120 seconds
#define PICKUP_TYPE_ONCE_SILENT   8    //Disappears after pickup, but has no effect
#define PICKUP_TYPE_LANDMINE_T    9    //Explodes on contact with any ground vehicle in 10 seconds after creation
#define PICKUP_TYPE_LANDMINE      10   //Explodes on contact with any ground vehicle
#define PICKUP_TYPE_SEAMINE_T     11   //Explodes on contact with any vessel in 10 seconds after creation
#define PICKUP_TYPE_SEAMINE       12   //Explodes on contact with any vessel
#define PICKUP_TYPE_INVISIBLE     13   //Triggers checkpoint sound when picked up with a vehicle
#define PICKUP_TYPE_VEHICLE       14   //Can only be picked up with a vehicle
#define PICKUP_TYPE_RESPAWN_12M   15   //Pickup will respawn after 12 minutes, if ID is Bribe then 5 minutes
#define PICKUP_TYPE_PROPERTY      18   //Disappears after pressing TAB key (used for buying properties)
#define PICKUP_TYPE_MONEY         19   //Disappears after pickup, doesn't respawn, makes "cash pickup" sound
#define PICKUP_TYPE_SNAPSHOT      20   //Disappears after taking a snapshot (used for camera pickups)
#define PICKUP_TYPE_MISSION       22   //Disappears after pickup (used for mission markers)
