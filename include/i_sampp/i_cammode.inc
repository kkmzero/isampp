/*
 * Includes for San Andreas Multiplayer+
 * 2018 - 2021, Ivan Kmeťo
 *
 * CC0 1.0 Universal (CC0 1.0) Public Domain Dedication
 * https://creativecommons.org/publicdomain/zero/1.0/
 */


#define CAMMODE_TRAIN              3    //Train/tram camera
#define CAMMODE_FOLLOWPED          4    //Follow ped (normal behind player camera)
#define CAMMODE_SNIPER             7    //Sniper rifle aiming
#define CAMMODE_ROCKETAIM          8    //Rocket Launcher aiming
#define CAMMODE_FIXED              15   //Fixed camera (non-moving) - used for Pay 'n' Spray, chase camera, tune shops, entering buildings, buying food etc.
#define CAMMODE_VEHICLEFRONT       16   //Vehicle front camera, bike side camera
#define CAMMODE_VEHICLEDEFAULT     18   //Normal car (+skimmer+helicopter+airplane), several variable distances
#define CAMMODE_BOATDEFAULT        22   //Normal boat camera
#define CAMMODE_WEAPONAIM          46   //Camera weapon aiming
#define CAMMODE_ROCKETAIM2         51   //Heat-seeking Rocket Launcher aiming
#define CAMMODE_WEAPONAIM2         53   //Aiming any other weapon
#define CAMMODE_VEHICLEPASSENGER   55   //Vehicle passenger drive-by camera
#define CAMMODE_HELICHASE          56   //Chase camera: helicopter/bird view
#define CAMMODE_GROUNDCHASE        57   //Chase camera: ground camera, zooms in very quickly (similar to CAMMODE_HELICHASE, but on the ground)
#define CAMMODE_FLYBYCHASE         58   //Chase camera: horizontal flyby past vehicle
#define CAMMODE_GROUNDCHASE2       59   //Chase camera (for air vehicles only): ground camera, looking up to the air vehicle
#define CAMMODE_FLYBYCHASE2        62   //Chase camera (for air vehicles only): vertical flyby past air vehicle
#define CAMMODE_FLYBYCHASE3        63   //Chase camera (for air vehicles only): horizontal flyby past air vehicle (similar to CAMMODE_FLYBYCHASE and CAMMODE_FLYBYCHASE2)
#define CAMMODE_PILOTCHASE         64   //Chase camera (for air vehicles only): camera focused on pilot, similar to pressing LOOK_BEHIND key on foot, but in air vehicle
