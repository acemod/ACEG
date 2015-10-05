
// standard loadout of NATO rifleman

class ACE_Loadouts {
    class Soldier1 {
        headgear = "H_HelmetB";
        //goggles = "";
        items[] = {"ItemMap","ItemCompass","ItemWatch","ItemRadio","NVGoggles"};

        class uniform {
            name = "U_B_CombatUniform_mcam";
            items[] = {"ACE_fieldDressing",2,"ACE_morphine","30Rnd_65x39_caseless_mag",2};
        };

        class vest {
            name = "V_PlateCarrier1_rgr";
            items[] = {"30Rnd_65x39_caseless_mag",7,"16Rnd_9x21_Mag",2,"SmokeShell","SmokeShellGreen","Chemlight_green",2,"HandGrenade",2};
        };

        /*class backpack {
            name = "";
            items[] = {};
        };*/

        class rifle {
            name = "arifle_MX_ACO_pointer_F";
            //items[] = {};
            //magazines[] = {};
        };

        class handgun {
            name = "hgun_P07_F";
            //items[] = {};
            //magazines[] = {};
        };

        //class launcher {};
    };

    class B_Pilot_F: Soldier1 {};
};
