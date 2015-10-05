// by commy2
#include "script_component.hpp"

params ["_weapon"];

local _return = configProperties [configfile >> "CfgWeapons" >> _weapon >> "LinkedItems"];

{
    _return set [_forEachIndex, getText (_x >> "item")];
} forEach _return;

_return
