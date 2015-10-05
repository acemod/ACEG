/*
 * Author: commy2
 * Parser mission config on mission start.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Public: No
 */
#include "script_component.hpp"

{
    local _config = _x;

    local _loadout = call FUNC(create);

    // misc items
    [_loadout, "headgear", getText (_x >> "headgear")] call FUNC(add);
    [_loadout, "goggles",  getText (_x >> "goggles")]  call FUNC(add);
    [_loadout, "items",    getArray (_x >> "items")]   call FUNC(add);
    [_loadout, getText (_x >> "binocular"), false, true] call FUNC(addWeapon);

    // weapons
    {
        local _itemConfig = _config >> _x;
        local _weapon = getText (_itemConfig >> "name");

        if (call ([{ISRIFLE(_weapon)}, {ISHANDGUN(_weapon)}, {ISLAUNCHER(_weapon)}] select _forEachIndex)) then {
            local _itemConfig = _config >> _x;

            if (isClass _itemConfig) then {
                private ["_items", "_magazines"];

                _items = true;

                if (isArray (_itemConfig >> "items")) then {
                    _items = getArray (_itemConfig >> "items");
                };

                _magazines = true;

                if (isArray (_itemConfig >> "magazines")) then {
                    _items = getArray (_itemConfig >> "magazines");
                };

                [_loadout, _weapon, _items, _magazines] call FUNC(addWeapon);
            };
        };
    } forEach ["rifle", "handgun", "launcher"];

    // clothing
    {
        local _itemConfig = _config >> _x;

        if (isClass _itemConfig) then {
            [_loadout, _x, getText (_itemConfig >> "name")] call FUNC(add);
            [_loadout, _x, getArray (_itemConfig >> "items")] call FUNC(addItems);
        };
        false
    } count ["uniform", "vest", "backpack"];

    [configName _x, _loadout] call FUNC(assign);
    false
} count configProperties [missionConfigFile >> "ACEG_Loadouts"];

nil
