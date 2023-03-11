/*
 * Includes for San Andreas Multiplayer+
 * 2018 - 2023, Ivan Kmeťo
 *
 * CC0 1.0 Universal (CC0 1.0) Public Domain Dedication
 * https://creativecommons.org/publicdomain/zero/1.0/
 */


//Vehicle Lights
#define LIGHT_FL                     0b00000001   //Front-left light
#define LIGHT_FR                     0b00000100   //Front-right light
#define LIGHT_BACK                   0b01000000   //Both back lights
#define LIGHT_ALL                    0b01000101   //All lights

//Vehicle Tires
#define TIRE4W_FL                    0b1000   //4-wheeled vehicle, front-left tire
#define TIRE4W_BL                    0b0100   //4-wheeled vehicle, back-left tire
#define TIRE4W_FR                    0b0010   //4-wheeled vehicle, front-right tire
#define TIRE4W_BR                    0b0001   //4-wheeled vehicle, back-right tire
#define TIRE4W_ALL                   0b1111   //4-wheeled vehicle, all tires

#define TIRE2W_FRONT                 0b10     //2-wheeled vehicle, front tire
#define TIRE2W_BACK                  0b01     //2-wheeled vehicle, back tire
#define TIRE2W_ALL                   0b11     //2-wheeled vehicle, all tires
