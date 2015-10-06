
#include "Loadout_Weapons.hpp"
#include "Loadout_Uniforms.hpp"

class ACEG_Loadouts {
    class B_Soldier_F {
        headgear = "H_Cap_blk_ION";
        goggles = "";
        items[] = {"ItemMap","ItemCompass","ItemWatch","ItemRadio"};

        class uniform: ACEG_uniform1 {};

        class vest {
            name = "V_PlateCarrier1_blk";
            items[] = {"30Rnd_65x39_caseless_mag",3,"MiniGrenade",2,"SmokeShell","SmokeShellBlue","Chemlight_blue",2};
        };

        /*class backpack {
            name = "";
            items[] = {};
        };*/

        class rifle: ACEG_arifle_MX_Black_Hamr_pointer_F {};

        /*class handgun {
            name = "";
            //items[] = {};
            //magazines[] = {};
        };*/

        //class launcher {};
    };

    class B_Soldier_lite_F: B_Soldier_F {
        headgear = "H_MilCap_gry";

        class uniform: ACEG_uniform2 {};

        class vest {
            name = "V_BandollierB_blk";
            items[] = {"30Rnd_65x39_caseless_mag",1,"MiniGrenade",2,"SmokeShell","SmokeShellBlue","Chemlight_blue",2};
        };
    };

    class B_Soldier_GL_F: B_Soldier_F {
        headgear = "H_Watchcap_camo";

        class vest {
            name = "V_TacVest_blk";
            items[] = {"30Rnd_65x39_caseless_mag",3,"MiniGrenade",2,"SmokeShell","SmokeShellBlue","Chemlight_blue",2,"1Rnd_HE_Grenade_shell",2,"1Rnd_Smoke_Grenade_shell",2,"1Rnd_SmokeOrange_Grenade_shell","1Rnd_SmokeRed_Grenade_shell","1Rnd_SmokeBlue_Grenade_shell"};
        };

        class rifle: ACEG_arifle_MX_GL_Black_Hamr_pointer_F {};
    };

    class B_soldier_AR_F: B_Soldier_F {
        class uniform: ACEG_uniform2_AR {};

        class vest {
            name = "V_PlateCarrier1_blk";
            items[] = {"100Rnd_65x39_caseless_mag",4,"MiniGrenade",2,"SmokeShell","SmokeShellBlue","Chemlight_blue",2};
        };

        class rifle: ACEG_arifle_MX_SW_Black_Hamr_pointer_F {};
    };

    class B_Soldier_SL_F: B_Soldier_F {
        class uniform: ACEG_uniform2 {};

        class vest {
            name = "V_TacVest_blk";
            items[] = {"30Rnd_65x39_caseless_mag",1,"30Rnd_65x39_caseless_mag_Tracer",2,"MiniGrenade",2,"SmokeShell","SmokeShellBlue","SmokeShellRed","SmokeShellOrange","Chemlight_blue",2};
        };

        class rifle: ACEG_arifle_MXC_Black_ACO_pointer_F {};
    };

    class B_Soldier_TL_F: B_Soldier_F {
        headgear = "H_Booniehat_khk_hs";

        class uniform: ACEG_uniform2 {};

        class vest {
            name = "V_TacVest_blk";
            items[] = {"30Rnd_65x39_caseless_mag",1,"30Rnd_65x39_caseless_mag_Tracer",2,"MiniGrenade",2,"SmokeShell","SmokeShellBlue","Chemlight_blue",2,"1Rnd_HE_Grenade_shell",2,"1Rnd_Smoke_Grenade_shell",2,"1Rnd_SmokeOrange_Grenade_shell","1Rnd_SmokeRed_Grenade_shell","1Rnd_SmokeBlue_Grenade_shell"};
        };

        class rifle: ACEG_arifle_MX_GL_Black_ACO_F {};
    };

    class B_soldier_M_F: B_Soldier_F {
        headgear = "H_Watchcap_camo";

        class vest {
            name = "V_PlateCarrier1_blk";
            items[] = {"100Rnd_65x39_caseless_mag",3,"MiniGrenade",2,"SmokeShell","SmokeShellBlue","Chemlight_blue",2};
        };

        class rifle: ACEG_arifle_MXM_Black_SOS_pointer_F {};
    };

    class B_soldier_LAT_F: B_Soldier_F {

        class vest {
            name = "V_PlateCarrier1_blk";
            items[] = {"100Rnd_65x39_caseless_mag",3,"MiniGrenade",2,"SmokeShell","SmokeShellBlue","Chemlight_blue",2};
        };

        class backpack {
            name = "B_FieldPack_blk";
            items[] = {"Titan_AT",2};
        };

        class rifle: ACEG_arifle_MX_Black_Hamr_pointer_F {};

        class launcher {
            name = "launch_I_Titan_short_F";
        };
    };

    class B_medic_F: B_Soldier_F {
        headgear = "H_Booniehat_khk_hs";

        class uniform: ACEG_uniform3 {};

        class vest {
            name = "V_TacVestIR_blk";
            items[] = {"30Rnd_65x39_caseless_mag",3,"MiniGrenade",2,"SmokeShell","SmokeShellBlue","Chemlight_blue",2};
        };

        class backpack {
            name = "B_FieldPack_blk";
            items[] = {"ACE_fieldDressing",20,"ACE_morphine",10,"ACE_epinephrine",10};
        };

        class rifle: ACEG_arifle_MX_Black_ACO_pointer_F {};
    };

    //class B_soldier_repair_F: B_Soldier_F {};
    //class B_soldier_exp_F: B_Soldier_F {};

    class B_Soldier_A_F: B_Soldier_F {
        class vest {
            name = "V_PlateCarrier1_blk";
            items[] = {"30Rnd_65x39_caseless_mag",3,"MiniGrenade",2,"SmokeShell","SmokeShellBlue","Chemlight_blue",2};
        };

        class backpack {
            name = "B_TacticalPack_blk";
            items[] = {"30Rnd_65x39_caseless_mag",12,"100Rnd_65x39_caseless_mag",1,"MiniGrenade",4,"SmokeShell",2,"SmokeShellBlue",2,"SmokeShellRed",2,"SmokeShellOrange",2,"Chemlight_blue",2};
        };

        class rifle: ACEG_arifle_MX_Black_ACO_pointer_F {};
    };

    //class B_soldier_AT_F: B_Soldier_F {};
    //class B_soldier_AA_F: B_Soldier_F {};

    /*class B_engineer_F: B_Soldier_F {};
    class B_crew_F: B_Soldier_F {};
    class B_officer_F: B_Soldier_F {};
    class B_soldier_PG_F: B_Soldier_F {};
    class B_soldier_UAV_F: B_Soldier_F {};
    class B_soldier_unarmed_f: B_Soldier_F {};
    class B_spotter_F: B_Soldier_F {};
    class B_sniper_F: B_Soldier_F {};*/
};
