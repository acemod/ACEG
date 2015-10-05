/*
 * Author: commy2
 * Assigns a loadout to a class.
 *
 * Arguments:
 * 0: classname <STRING>
 * 1: loadout <ARRAY>
 *
 * Return Value:
 * None
 *
 * Public: Yes
 */
#include "script_component.hpp"

params ["_classname", "_loadout"];

missionNamespace setVariable [format [QGVAR(loadout_%1), _classname], _loadout];
