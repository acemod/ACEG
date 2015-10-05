#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"ace_common"};
        author[] = {"Glowbal", "ACE Team"};
        authorUrl = "http://ace3mod.com";
        VERSION_CONFIG;
    };
};

#include "CfgModuleCategories.hpp"
