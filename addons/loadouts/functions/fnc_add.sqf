// by commy2
#include "script_component.hpp"

params ["_loadout", "_slot", "_item"];

_slot = toLower _slot;

local _result = true;

call {
    if (_slot in NAMES_HEADGEAR) exitWith {
        _loadout set [INDEX_HEADGEAR, _item];
    };
    if (_slot in NAMES_GOGGLES) exitWith {
        if (ISGOGGLES(_item)) exitWith {
            _loadout set [INDEX_GOGGLES, _item];
        };
        _result = false;
    };
    if (_slot in NAMES_UNIFORM) exitWith {
        _loadout set [INDEX_UNIFORM, _item];
    };
    if (_slot in NAMES_VEST) exitWith {
        _loadout set [INDEX_VEST, _item];
    };
    if (_slot in NAMES_BACKPACK) exitWith {
        _loadout set [INDEX_BACKPACK, _item];
    };
    if (_slot in NAMES_WEAPON) exitWith {
        local _type = getNumber (configFile >> "CfgWeapons" >> _item >> "type");
        _result = [_loadout, _item, true, true] call FUNC(addWeapon);
    };
    if (_slot in NAMES_RIFLE) exitWith {
        if (ISRIFLE(_item)) exitWith {
            _loadout set [INDEX_RIFLE, _item];
        };
        _result = false;
    };
    if (_slot in NAMES_LAUNCHER) exitWith {
        if (ISLAUNCHER(_item)) exitWith {
            _loadout set [INDEX_LAUNCHER, _item];
        };
        _result = false;
    };
    if (_slot in NAMES_HANDGUN) exitWith {
        if (ISHANDGUN(_item)) exitWith {
            _loadout set [INDEX_HANDGUN, _item];
        };
        _result = false;
    };
    if (_slot in NAMES_ITEMS) exitWith {
        if (typeName _item == "ARRAY") then {
            (_loadout select INDEX_ITEMS) append _item;
        } else {
            (_loadout select INDEX_ITEMS) pushBack _item;
        };
    };
    if (_slot in NAMES_BINOCULAR) exitWith {
        if (ISBINOCULAR(_item)) exitWith {
            _loadout set [INDEX_BINOCULAR, _item];
        };
        _result = false;
    };
    _result = false;
};

_result
