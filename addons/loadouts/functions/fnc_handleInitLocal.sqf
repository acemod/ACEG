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

private ["_type"];

_type = typeOf _unit;
