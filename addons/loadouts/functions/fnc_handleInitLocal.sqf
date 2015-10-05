/*
 * Author: commy2
 * Inits loadout of a unit.
 *
 * Arguments:
 * 0: unit <OBJECT>
 *
 * Return Value:
 * None
 *
 * Public: No
 */
#include "script_component.hpp"

params ["_unit"];

local _loadout = missionNamespace getVariable format [QGVAR(loadout_%1), _unit getVariable ["ACEG_customLoadout", typeOf _unit]];

if (isNil "_loadout") exitWith {};

[_unit, _loadout, true, true] call ace_common_fnc_setAllGear;
