
// standard loadout of NATO rifleman

_loadout = call aceg_loadouts_fnc_create;

[_loadout, "headgear", "H_HelmetB"] call aceg_loadouts_fnc_add;

[_loadout, "uniform", "U_B_CombatUniform_mcam"] call aceg_loadouts_fnc_add;
[_loadout, "uniform", ["ACE_fieldDressing",2,"ACE_morphine","30Rnd_65x39_caseless_mag",2]] call aceg_loadouts_fnc_addItems;

[_loadout, "vest", "V_PlateCarrier1_rgr"] call aceg_loadouts_fnc_add;
[_loadout, "vest", ["30Rnd_65x39_caseless_mag",7,"16Rnd_9x21_Mag",2,"SmokeShell","SmokeShellGreen","Chemlight_green",2,"HandGrenade",2]] call aceg_loadouts_fnc_addItems;

[_loadout, "arifle_MX_ACO_pointer_F"] call aceg_loadouts_fnc_addWeapon;
[_loadout, "hgun_P07_F"] call aceg_loadouts_fnc_addWeapon;

[_loadout, "items", ["ItemMap","ItemCompass","ItemWatch","ItemRadio","NVGoggles"]] call aceg_loadouts_fnc_add;

["B_Pilot_F", _loadout] call aceg_loadouts_fnc_assign;
