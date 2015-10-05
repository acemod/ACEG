/*
 * Author: commy2
 * Return all attachments of a preequipped weapon class.
 *
 * Arguments:
 * 0: weapon <STRING>
 *
 * Return Value:
 * attachments <ARRAY>
 *
 * Public: No
 */
#include "script_component.hpp"

params ["_weapon"];

local _return = configProperties [configfile >> "CfgWeapons" >> _weapon >> "LinkedItems"];

{
    _return set [_forEachIndex, getText (_x >> "item")];
} forEach _return;

_return
