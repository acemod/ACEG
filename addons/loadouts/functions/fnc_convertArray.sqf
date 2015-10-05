// by commy2
#include "script_component.hpp"

local _result = [];

{
    if (typeName _x == "SCALAR") then {
        // ignore first element if it's a number
        if (_forEachIndex == 0) exitWith {};

        local _prev = _this select (_forEachIndex - 1);

        // ignore multiple numbers following each other
        if (typeName _prev == "SCALAR") exitWith {};

        // remove prev element if count below 1
        if (_x < 1) then {
            _result deleteAt (count _result - 1);
        };

        for "_i" from 2 to _x do {
            _result pushBack _prev;
        };
    } else {
        _result pushBack _x;
    };
} forEach _this;

_result
