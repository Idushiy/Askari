_veh = _this select 0;
_template = _this select 1;

clearWeaponCargoGlobal _veh;
clearMagazineCargoGlobal _veh;
clearItemCargoGlobal _veh;
clearBackpackCargoGlobal _veh;

_veh disableTIEquipment true; // Отключаем тепловизор

_medical_vehicle = {
	switch (missionNameSpace getVariable ["ace_medical_level", 0]) do {
		case 0: {
			_this addItemCargoGlobal ["FirstAidKit", 50];
			_this addItemCargoGlobal ["Medikit", 5];
		};
		case 1: {
			_this addItemCargoGlobal ["ACE_fieldDressing", 50];
			_this addItemCargoGlobal ["ACE_morphine", 30];
			_this addItemCargoGlobal ["ACE_epinephrine", 30];
		};
		case 2: {
			_this addItemCargoGlobal ["ACE_fieldDressing", 30];
			_this addItemCargoGlobal ["ACE_elasticBandage", 30];
			_this addItemCargoGlobal ["ACE_packingBandage", 30];
			_this addItemCargoGlobal ["ACE_quikclot", 25];
			_this addItemCargoGlobal ["ACE_atropine", 20];
			_this addItemCargoGlobal ["ACE_morphine", 30];
			_this addItemCargoGlobal ["ACE_epinephrine", 30];
			_this addItemCargoGlobal ["ACE_tourniquet", 15];
			_this addItemCargoGlobal ["ACE_salineIV_500", 20];
			_this addItemCargoGlobal ["ACE_surgicalKit", 10];
			_this addItemCargoGlobal ["ACE_personalAidKit", 15];
		};
	};
};

switch toLower(_template) do {
	default {
		if (!isDedicated) then { hint format["WRONG TEMPLATE\nVehicle> %1\nTemplate> %2", _veh, _template] };
	};
	case "empty": {}; // Empty CargoGlobal
	case "mini": { // Minimum ammo
		_veh addMagazineCargoGlobal ["30Rnd_556x45_Stanag", 10];
		_veh addMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Yellow", 5];
		_veh addMagazineCargoGlobal ["HandGrenade", 5];
		_veh addMagazineCargoGlobal ["SmokeShell", 2];
		_veh addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell", 5];
		_veh addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell", 2];
		_veh addMagazineCargoGlobal ["UGL_FlareGreen_F", 1];
		_veh addMagazineCargoGlobal ["UGL_FlareRed_F", 1];
		_veh addMagazineCargoGlobal ["1Rnd_SmokePurple_Grenade_shell", 2];
		_veh addMagazineCargoGlobal ["SmokeShellBlue", 2];
		_veh addMagazineCargoGlobal ["SmokeShellGreen", 2];
		_veh addMagazineCargoGlobal ["SmokeShellOrange", 2];
		_veh addMagazineCargoGlobal ["SmokeShellRed", 2];
		_veh addMagazineCargoGlobal ["Chemlight_green", 6];
	};
	case "ba": { // Basic Ammo
		_veh addMagazineCargoGlobal ["30Rnd_556x45_Stanag", 20];
		_veh addMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Yellow", 10];
		_veh addMagazineCargoGlobal ["200Rnd_65x39_cased_Box", 4];
		_veh addMagazineCargoGlobal ["200Rnd_65x39_cased_Box_Tracer", 2];
		_veh addMagazineCargoGlobal ["20Rnd_762x51_Mag", 5];
		_veh addMagazineCargoGlobal ["NLAW_F", 2];
		_veh addWeaponCargoGlobal ["launch_I_Titan_short_F",1];
		_veh addMagazineCargoGlobal ["Titan_AT", 1];
		_veh addMagazineCargoGlobal ["Titan_AP", 2];
		_veh addMagazineCargoGlobal ["HandGrenade", 5];
		_veh addMagazineCargoGlobal ["SmokeShell", 5];
		_veh addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell", 8];
		_veh addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell", 5];
		_veh addMagazineCargoGlobal ["1Rnd_SmokeBlue_Grenade_shell", 1];
		_veh addMagazineCargoGlobal ["1Rnd_SmokeGreen_Grenade_shell", 1];
		_veh addMagazineCargoGlobal ["1Rnd_SmokeOrange_Grenade_shell", 1];
		_veh addMagazineCargoGlobal ["1Rnd_SmokePurple_Grenade_shell", 3];
		_veh addMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell", 1];
		_veh addMagazineCargoGlobal ["1Rnd_SmokeYellow_Grenade_shell", 1];
		_veh addMagazineCargoGlobal ["UGL_FlareCIR_F", 1];
		_veh addMagazineCargoGlobal ["UGL_FlareGreen_F", 1];
		_veh addMagazineCargoGlobal ["UGL_FlareRed_F", 1];
		_veh addMagazineCargoGlobal ["UGL_FlareWhite_F", 1];
		_veh addMagazineCargoGlobal ["UGL_FlareYellow_F", 1];
		_veh addMagazineCargoGlobal ["SmokeShellBlue", 2];
		_veh addMagazineCargoGlobal ["SmokeShellGreen", 2];
		_veh addMagazineCargoGlobal ["SmokeShellOrange", 2];
		_veh addMagazineCargoGlobal ["SmokeShellRed", 2];
		_veh addMagazineCargoGlobal ["Chemlight_green", 6];
		_veh addBackPackCargoGlobal ["tf_anprc155", 1];
	};
	case "ammo_l": { // Ammobox Launchers
		_veh addWeaponCargoGlobal ["launch_I_Titan_short_F",2];
		_veh addWeaponCargoGlobal ["launch_I_Titan_F",1];
		_veh addMagazineCargoGlobal ["Titan_AT", 4];
		_veh addMagazineCargoGlobal ["Titan_AP", 6];
		_veh addMagazineCargoGlobal ["Titan_AA", 4];
		_veh addWeaponCargoGlobal ["launch_NLAW_F",2];
		_veh addMagazineCargoGlobal ["NLAW_F", 6];

	};
	case "ammo_b": { // Simple Ammobox
		_veh addMagazineCargoGlobal ["30Rnd_556x45_Stanag", 30];
		_veh addMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Yellow", 15];
		_veh addMagazineCargoGlobal ["200Rnd_65x39_cased_Box", 5];
		_veh addMagazineCargoGlobal ["200Rnd_65x39_cased_Box_Tracer", 2];
		_veh addMagazineCargoGlobal ["20Rnd_762x51_Mag", 5];
		_veh addMagazineCargoGlobal ["NLAW_F", 2];
		_veh addMagazineCargoGlobal ["Titan_AT", 1];
		_veh addMagazineCargoGlobal ["Titan_AP", 2];
		_veh addMagazineCargoGlobal ["HandGrenade", 10];
		_veh addMagazineCargoGlobal ["SmokeShell", 10];
		_veh addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell", 10];
		_veh addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell", 5];
		_veh addMagazineCargoGlobal ["1Rnd_SmokeBlue_Grenade_shell", 1];
		_veh addMagazineCargoGlobal ["1Rnd_SmokeGreen_Grenade_shell", 1];
		_veh addMagazineCargoGlobal ["1Rnd_SmokeOrange_Grenade_shell", 1];
		_veh addMagazineCargoGlobal ["1Rnd_SmokePurple_Grenade_shell", 3];
		_veh addMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell", 1];
		_veh addMagazineCargoGlobal ["1Rnd_SmokeYellow_Grenade_shell", 1];
		_veh addMagazineCargoGlobal ["UGL_FlareCIR_F", 1];
		_veh addMagazineCargoGlobal ["UGL_FlareGreen_F", 1];
		_veh addMagazineCargoGlobal ["UGL_FlareRed_F", 1];
		_veh addMagazineCargoGlobal ["UGL_FlareWhite_F", 1];
		_veh addMagazineCargoGlobal ["UGL_FlareYellow_F", 1];
		_veh addMagazineCargoGlobal ["SmokeShellBlue", 2];
		_veh addMagazineCargoGlobal ["SmokeShellGreen", 2];
		_veh addMagazineCargoGlobal ["SmokeShellOrange", 2];
		_veh addMagazineCargoGlobal ["SmokeShellRed", 2];
		_veh addMagazineCargoGlobal ["Chemlight_green", 6];
	};
	case "ammo_expl": { // Explosives Ammobox
		_veh addWeaponCargoGlobal ["MineDetector", 3];
		_veh addMagazineCargoGlobal ["DemoCharge_Remote_Mag", 4];
		_veh addMagazineCargoGlobal ["SatchelCharge_Remote_Mag", 2];
		_veh addMagazineCargoGlobal ["ATMine_Range_Mag", 4];
		_veh addMagazineCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag", 6];
		_veh addMagazineCargoGlobal ["SLAMDirectionalMine_Wire_Mag", 4];
		_veh addMagazineCargoGlobal ["APERSBoundingMine_Range_Mag", 4];
		_veh addMagazineCargoGlobal ["APERSMine_Range_Mag", 4];
		_veh addMagazineCargoGlobal ["APERSTripMine_Wire_Mag", 10];
	};
	case "med": { // Medical equipment
		_veh addMagazineCargoGlobal ["30Rnd_556x45_Stanag", 10];
		_veh addMagazineCargoGlobal ["30Rnd_556x45_Stanag_Tracer_Yellow", 2];
		_veh call _medical_vehicle;
	};
};