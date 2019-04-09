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
		_veh addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 10];
		_veh addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 5];
		_veh addMagazineCargoGlobal ["HandGrenade", 5];
		_veh addMagazineCargoGlobal ["SmokeShell", 5];
		_veh addMagazineCargoGlobal ["rhs_mag_M433_HEDP", 5];
		_veh addMagazineCargoGlobal ["rhs_mag_M714_white", 2];
		_veh addMagazineCargoGlobal ["rhs_mag_M661_green", 1];
		_veh addMagazineCargoGlobal ["rhs_mag_M662_red", 1];
		_veh addMagazineCargoGlobal ["rhs_mag_M713_red", 2];
		_veh addMagazineCargoGlobal ["SmokeShellBlue", 2];
		_veh addMagazineCargoGlobal ["SmokeShellGreen", 2];
		_veh addMagazineCargoGlobal ["SmokeShellOrange", 2];
		_veh addMagazineCargoGlobal ["SmokeShellRed", 2];
		_veh addMagazineCargoGlobal ["Chemlight_blue", 6];
		_veh addMagazineCargoGlobal ["ACE_HandFlare_Red", 6];
		_veh addMagazineCargoGlobal ["ACE_M84", 2];
	};
	case "ba": { // Basic Ammo
		_veh addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 20];
		_veh addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10];
		_veh addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch", 4];
		_veh addMagazineCargoGlobal ["rhsusf_100Rnd_762x51", 3];
		_veh addMagazineCargoGlobal ["20Rnd_762x51_Mag", 5];
		_veh addMagazineCargoGlobal ["rhs_m136_mag", 2];
		_veh addWeaponCargoGlobal ["rhs_weap_fgm148",1];
		_veh addMagazineCargoGlobal ["rhs_fgm148_magazine_AT", 1];
		_veh addMagazineCargoGlobal ["HandGrenade", 5];
		_veh addMagazineCargoGlobal ["SmokeShell", 5];
		_veh addMagazineCargoGlobal ["rhs_mag_M433_HEDP", 8];
		_veh addMagazineCargoGlobal ["rhs_mag_M714_white", 5];
		_veh addMagazineCargoGlobal ["rhs_mag_M715_green", 1];
		_veh addMagazineCargoGlobal ["rhs_mag_M716_yellow", 1];
		_veh addMagazineCargoGlobal ["rhs_mag_M713_red", 3];
		_veh addMagazineCargoGlobal ["rhs_mag_M585_white", 1];
		_veh addMagazineCargoGlobal ["rhs_mag_M662_red", 1];
		_veh addMagazineCargoGlobal ["rhs_mag_M661_green", 3];
		_veh addMagazineCargoGlobal ["SmokeShellBlue", 2];
		_veh addMagazineCargoGlobal ["SmokeShellGreen", 2];
		_veh addMagazineCargoGlobal ["SmokeShellOrange", 2];
		_veh addMagazineCargoGlobal ["SmokeShellRed", 2];
		_veh addMagazineCargoGlobal ["Chemlight_blue", 6];
		_veh addMagazineCargoGlobal ["ACE_HandFlare_Red", 6];
		_veh addMagazineCargoGlobal ["ACE_M84", 6];
		_veh addBackPackCargoGlobal ["tf_rt1523g_rhs", 1];
	};
	case "ammo_l": { // Ammobox Launchers
		_veh addWeaponCargoGlobal ["rhs_weap_fgm148",2];
		_veh addWeaponCargoGlobal ["rhs_weap_fim92",1];
		_veh addMagazineCargoGlobal ["rhs_fgm148_magazine_AT", 4];
		_veh addMagazineCargoGlobal ["rhs_fim92_mag", 4];
		_veh addWeaponCargoGlobal ["rhs_weap_M136",2];
		_veh addMagazineCargoGlobal ["rhs_m136_mag", 6];

	};
	case "ammo_b": { // Simple Ammobox
		_veh addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 30];
		_veh addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 15];
		_veh addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch", 5];
		_veh addMagazineCargoGlobal ["rhsusf_100Rnd_762x51", 5];
		_veh addMagazineCargoGlobal ["20Rnd_762x51_Mag", 5];
		_veh addMagazineCargoGlobal ["rhs_m136_mag", 2];
		_veh addMagazineCargoGlobal ["rhs_fgm148_magazine_AT", 1];
		_veh addMagazineCargoGlobal ["HandGrenade", 10];
		_veh addMagazineCargoGlobal ["SmokeShell", 10];
		_veh addMagazineCargoGlobal ["rhs_mag_M433_HEDP", 10];
		_veh addMagazineCargoGlobal ["rhs_mag_M714_white", 5];
		_veh addMagazineCargoGlobal ["rhs_mag_M715_green", 1];
		_veh addMagazineCargoGlobal ["rhs_mag_M716_yellow", 1];
		_veh addMagazineCargoGlobal ["rhs_mag_M713_red", 3];
		_veh addMagazineCargoGlobal ["rhs_mag_M661_green", 1];
		_veh addMagazineCargoGlobal ["rhs_mag_M662_red", 1];
		_veh addMagazineCargoGlobal ["rhs_mag_M585_white", 1];
		_veh addMagazineCargoGlobal ["rhs_mag_M662_red", 1];
		_veh addMagazineCargoGlobal ["SmokeShellBlue", 2];
		_veh addMagazineCargoGlobal ["SmokeShellGreen", 2];
		_veh addMagazineCargoGlobal ["SmokeShellOrange", 2];
		_veh addMagazineCargoGlobal ["SmokeShellRed", 2];
		_veh addMagazineCargoGlobal ["Chemlight_blue", 6];
		_veh addMagazineCargoGlobal ["ACE_M84", 6];
		_veh addMagazineCargoGlobal ["ACE_HandFlare_Red", 6];
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
		_veh addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 10];
		_veh addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 2];
		_veh call _medical_vehicle;
	};
};
