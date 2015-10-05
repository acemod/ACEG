/*
 * Author: commy2
 * Adds a weapon to a loadout.
 *
 * Arguments:
 * 0: loadout <ARRAY>
 * 1: weapon <STRING>
 * 2: attched items [array of attachments, false: no attachments, true: default attachments of class] (default: true) <ARRAY, BOOL>
 * 3: loaded magazines [array of magazines, false: weapon not loaded, true: weapon loaded with basic magazine] (default: true) <ARRAY, BOOL>
 *
 * Return Value:
 * Successful? <BOOL>
 *
 * Public: Yes
 */
#include "script_component.hpp"

params [
    "_loadout",
    "_weapon",
    ["_items", true, [[], false]],
    ["_magazines", true, [[], false]]
];

// default no items
if (typeName _items == "BOOL") then {
    if (_items) then {
        _items = [_weapon] call FUNC(getAttachments);
    } else {
        _items = [];
    };
};

// process boolean. true: add ammo, false: don't add ammo
if (typeName _magazines == "BOOL") then {
    if (_magazines) then {
        _magazines = [_weapon] call FUNC(getFirstMagazines);
    } else {
        _magazines = [];
    };
};

local _result = true;

call {
    local _type = getNumber (configFile >> "CfgWeapons" >> _weapon >> "type");

    if (_type == 1) exitWith {
        _loadout set [INDEX_RIFLE, _weapon];
        _loadout set [INDEX_RIFLEITEMS, _items];
        _loadout set [INDEX_RIFLEMAGS, _magazines];
    };
    if (_type == 4) exitWith {
        _loadout set [INDEX_LAUNCHER, _weapon];
        _loadout set [INDEX_LAUNCHERITEMS, _items];
        _loadout set [INDEX_LAUNCHERMAGS, _magazines];
    };
    if (_type == 2) exitWith {
        _loadout set [INDEX_HANDGUN, _weapon];
        _loadout set [INDEX_HANDGUNITEMS, _items];
        _loadout set [INDEX_HANDGUNMAGS, _magazines];
    };
    if (_type == 4096) exitWith {
        _loadout set [INDEX_BINOCULAR, _weapon];
        _loadout set [INDEX_BINOCULARMAG, [_magazines select 0, ""] select (_magazines isEqualTo [])];
    };
    _result = false;
};

_result
