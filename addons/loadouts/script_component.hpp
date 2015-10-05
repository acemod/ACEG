#define COMPONENT loadouts
#include "\z\ace\addons\main\script_mod.hpp"

//#undef PREFIX
//#define PREFIX aceg

#ifdef DEBUG_ENABLED_LOADOUTS
    #define DEBUG_MODE_FULL
#endif

#ifdef DEBUG_ENABLED_LOADOUTS
    #define DEBUG_SETTINGS DEBUG_ENABLED_LOADOUTS
#endif

#include "\z\ace\addons\main\script_macros.hpp"

#define ISRIFLE(item) getNumber (configFile >> "CfgWeapons" >> item >> "type") == 1
#define ISLAUNCHER(item) getNumber (configFile >> "CfgWeapons" >> item >> "type") == 4
#define ISHANDGUN(item) getNumber (configFile >> "CfgWeapons" >> item >> "type") == 2
#define ISBINOCULAR(item) getNumber (configFile >> "CfgWeapons" >> item >> "type") == 4096
#define ISMAG(item) isClass (configFile >> "CfgMagazines" >> item)
#define ISGOGGLES(item) isClass (configFile >> "CfgGlasses" >> item)

#define NAMES_HEADGEAR ["helmet", "headgear"]
#define NAMES_GOGGLES ["goggles", "glasses"]
#define NAMES_UNIFORM ["uniform"]
#define NAMES_VEST ["vest"]
#define NAMES_BACKPACK ["backpack"]
#define NAMES_WEAPON ["weapon"]
#define NAMES_RIFLE ["primary", "rifle"]
#define NAMES_LAUNCHER ["secondary", "launcher"]
#define NAMES_HANDGUN ["handgun", "pistol", "sidearm"]
#define NAMES_ITEMS ["item", "items", "assigneditem", "assigneditems", "hmd", "nvg", "nvgoggles"]
#define NAMES_BINOCULAR ["binocular", "binoculars", "rangefinder"]

#define INDEX_HEADGEAR 0
#define INDEX_GOGGLES 1
#define INDEX_UNIFORM 2
#define INDEX_UNIFORMITEMS 3
#define INDEX_VEST 4
#define INDEX_VESTITEMS 5
#define INDEX_BACKPACK 6
#define INDEX_BACKPACKITEMS 7
#define INDEX_RIFLE 8
#define INDEX_RIFLEITEMS 9
#define INDEX_RIFLEMAGS 10
#define INDEX_LAUNCHER 11
#define INDEX_LAUNCHERITEMS 12
#define INDEX_LAUNCHERMAGS 13
#define INDEX_HANDGUN 14
#define INDEX_HANDGUNITEMS 15
#define INDEX_HANDGUNMAGS 16
#define INDEX_ITEMS 17
#define INDEX_BINOCULAR 18
#define INDEX_BINOCULARMAG 19
