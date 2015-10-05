// by commy2
#include "script_component.hpp"

params ["_weapon"];

private ["_return", "_config"];

_return = [_weapon] call ace_common_fnc_getWeaponMuzzles;

_config = configFile >> "CfgWeapons" >> _weapon;

{
    if (_x == _weapon) then {
        _return set [_forEachIndex, getArray (_config >> "magazines") select 0];
    } else {
        _return set [_forEachIndex, getArray (_config >> _x >> "magazines") select 0];
    };
} forEach _return;

// fix for binocs
if (isNil {_return select 0}) then {
    _return = [];
};

_return
