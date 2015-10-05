/*
 * Author: commy2
 * Adds items to uniform, vest or backpack in a loadout.
 *
 * Arguments:
 * 0: loadout <ARRAY>
 * 1: Slot ["uniform", "vest", "backpack"] <STRING>
 * 2: item classnames <ARRAY>
 *
 * Return Value:
 * Successful? <BOOL>
 *
 * Public: Yes
 */
#include "script_component.hpp"

params ["_loadout", "_slot", "_items"];

_slot = toLower _slot;

_items = _items call FUNC(convertArray);

local _result = true;

call {
    if (_slot in NAMES_UNIFORM) exitWith {
        (_loadout select INDEX_UNIFORMITEMS) append _items;
    };
    if (_slot in NAMES_VEST) exitWith {
        (_loadout select INDEX_VESTITEMS) append _items;
    };
    if (_slot in NAMES_BACKPACK) exitWith {
        (_loadout select INDEX_BACKPACKITEMS) append _items;
    };
    _result = false;
};

_result
