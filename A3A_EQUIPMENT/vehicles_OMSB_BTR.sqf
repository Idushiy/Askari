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
		_veh addMagazineCargoGlobal ["rhs_30Rnd_545x39_7N10_AK", 10];
		_veh addMagazineCargoGlobal ["rhs_30Rnd_545x39_AK_green", 5];
		_veh addMagazineCargoGlobal ["rhs_mag_rgd5", 5];
		_veh addMagazineCargoGlobal ["rhs_mag_rdg2_white", 2];
		_veh addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell", 5];
		_veh addMagazineCargoGlobal ["rhs_mag_nspn_yellow", 2];
		_veh addMagazineCargoGlobal ["rhs_mag_nspn_red", 1];
		_veh addMagazineCargoGlobal ["rhs_mag_nspn_green", 1];
		_veh addMagazineCargoGlobal ["rhs_mag_nspd", 2];
		_veh addMagazineCargoGlobal ["rhs_mag_fakel", 2];
		_veh addMagazineCargoGlobal ["rhs_mag_fakels", 2];
		_veh addMagazineCargoGlobal ["rhs_mag_zarya2", 2];
		_veh addMagazineCargoGlobal ["rhs_mag_plamyam", 2];
	};
	case "med": { // Medical equipment
		_veh call _medical_vehicle;
	};
};