// OMSB (BTR) EQUIPMENT
private ["_e_prim", "_e_prim_mag", "_e_mod1", "_e_mod2", "_e_mod3", "_e_sec", "_e_sec_mag", "_e_sec_mods", "_e_side", "_e_side_mag", "_e_items", "_e_back", "_wrong"];
_wrong = false;

private ["_standartMed", "_extendedMed"];
switch (missionNameSpace getVariable ["ace_medical_level", 0]) do {
	case 0: {
		_standartMed = [["FirstAidKit", 3]];
		_extendedMed = [["FirstAidKit", 15], "Medikit"];
	};
	case 1: {
		_standartMed = [["ACE_fieldDressing", 10], ["ACE_morphine", 3], "ACE_epinephrine"];
		_extendedMed = [["ACE_fieldDressing", 20], ["ACE_morphine", 17], ["ACE_epinephrine", 10]];
	};
	case 2: {
		_standartMed = [["ACE_fieldDressing", 3], ["ACE_elasticBandage", 3], ["ACE_packingBandage", 3], ["ACE_quikclot", 3], "ACE_morphine", "ACE_epinephrine", "ACE_tourniquet", "ACE_salineIV_250"];
		_extendedMed = [["ACE_fieldDressing", 15], ["ACE_elasticBandage", 20], ["ACE_packingBandage", 20], ["ACE_quikclot", 15], ["ACE_atropine", 12], ["ACE_morphine", 8], ["ACE_epinephrine", 8], ["ACE_tourniquet", 5], ["ACE_salineIV_500", 6], ["ACE_surgicalKit", 3], ["ACE_personalAidKit", 3]];
	};
};

switch toUpper(_this) do {
	default {
		hintC "WARNING! Wrong slot name in unit initialization! More in diag log";
		_e_prim = [];
		_e_prim_mag = [];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = [];
		_e_back = [];
		_wrong = true;
	};
	case "UNARMED": {
		_e_prim = [];
		_e_prim_mag = [];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = [];
		_e_back = [];
	};
// ------------------ Мотострелковая рота ОМСБ ВС РФ ------------------------ //
	case "KOM_R": {
		_e_prim = ["rhs_weap_ak74m"];
		_e_prim_mag = [
			[["rhs_30Rnd_545x39_7N10_AK", 4],["rhs_30Rnd_545x39_AK_green", 1], ["rhs_mag_rgd5", 2], ["rhs_mag_rdg2_white", 2],["Chemlight_red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = ["rhs_acc_1p29","rhs_acc_1pn93_1"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Rook40_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 2]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_OPFOR", "Rangefinder", "ACE_MapTools"] + _standartMed;
		_e_back = [];
	};
	case "TEH": { // Техник
		_e_prim = ["rhs_weap_ak74m"];
		_e_prim_mag = [
			[["rhs_30Rnd_545x39_7N10_AK", 4],["rhs_mag_rdg2_white", 2],["rhs_mag_rdg2_black", 1],["SmokeShellGreen", 1]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Rook40_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles_OPFOR", "ACE_Clacker", "ACE_DefusalKit"] + _standartMed;
		_e_back = ["rhs_assault_umbts_engineer"]; // 1 инженерный набор в комплекте с рюкзаком RHS
	};
	case "MED_KOM": { // Медик, командир отделения
		_e_prim = ["rhs_weap_ak74m"];
		_e_prim_mag = [
			[["rhs_30Rnd_545x39_7N10_AK", 4], ["rhs_mag_rgd5", 2], ["rhs_mag_rdg2_white", 2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch","NVGoggles_OPFOR"] + _extendedMed;
		_e_back = ["tf_mr3000_rhs", "rhs_assault_umbts"];
	};
	case "MED": { // Медик
		_e_prim = ["hlc_rifle_aks74u"];
		_e_prim_mag = [
			[["rhs_30Rnd_545x39_7N10_AK", 4], ["rhs_mag_rgd5", 2], ["rhs_mag_rdg2_white", 2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch","NVGoggles_OPFOR"] + _extendedMed;
		_e_back = ["rhs_assault_umbts"];
	};
	case "RAD": { // Радист
		_e_prim = ["rhs_weap_ak74m"];
		_e_prim_mag = [
			[["rhs_30Rnd_545x39_7N10_AK", 4], ["rhs_mag_rgd5", 2], ["rhs_mag_rdg2_white", 2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Rook40_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles_OPFOR"] + _standartMed;
		_e_back = ["tf_mr3000_rhs"];
	};
	case "KO": { // Командир отделения
		_e_prim = ["rhs_weap_ak74m_camo", "rhs_weap_ak74m_desert"];
		_e_prim_mag = [
			[["rhs_30Rnd_545x39_7N10_AK", 4],["rhs_30Rnd_545x39_AK_green", 2], ["rhs_mag_rgd5", 2], ["rhs_mag_rdg2_white", 2],["Chemlight_red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = ["rhs_acc_1p29","rhs_acc_1pn93_1"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Rook40_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 2]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_OPFOR", "Binocular", "ACE_MapTools"] + _standartMed;
		_e_back = ["tf_mr3000_rhs"];
	};
	case "CREW": { // Экипаж
		_e_prim = ["hlc_rifle_aks74u"];
		_e_prim_mag = [
			[["rhs_30Rnd_545x39_7N10_AK", 4], ["rhs_mag_rdg2_white", 2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Rook40_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 2]]];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch"];
		_e_back = [];
	};
	case "KV": { // Ком. взвода
		_e_prim = ["rhs_weap_ak74m_2mag", "rhs_weap_ak74m_camo", "rhs_weap_ak74m_desert"];
		_e_prim_mag = [
			[["rhs_30Rnd_545x39_7N10_AK", 4],["rhs_30Rnd_545x39_AK_green", 2], ["rhs_mag_rgd5", 2], ["rhs_mag_rdg2_white", 2],["rhs_mag_fakel",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = ["rhs_acc_1p29","rhs_acc_1pn93_1"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Rook40_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 2]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_OPFOR", "Rangefinder"] + _standartMed;
		_e_back = ["tf_mr3000_rhs"];
	};
	case "ZKV": { // Зам. Ком. взвода
		_e_prim = ["rhs_weap_ak74m_gp25"];
		_e_prim_mag = [
			[["rhs_30Rnd_545x39_7N10_AK", 4],["rhs_30Rnd_545x39_AK_green", 2], ["rhs_VOG25", 6], ["rhs_vg40op_white", 2],["rhs_GRD40_green",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = ["rhs_acc_pkas"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Rook40_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 2]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_OPFOR", "Binocular", "ACE_CableTie"] + _standartMed;
		_e_back = ["rhs_assault_umbts"];
	};
	case "STS": { // Старший Стрелок
		_e_prim = ["rhs_weap_ak74m_gp25"];
		_e_prim_mag = [
			[["rhs_30Rnd_545x39_7N10_AK", 4],["rhs_30Rnd_545x39_AK_green", 2], ["rhs_VOG25", 6], ["rhs_vg40op_red", 2],["rhs_GRD40_white",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = ["rhs_acc_pkas"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Rook40_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 2]]];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles_OPFOR", "Binocular"] + _standartMed;
		_e_back = ["rhs_sidor"];
	};
	case "MG": { // Пулеметчик
		_e_prim = ["rhs_weap_pkp"];
		_e_prim_mag = [
			[["rhs_100Rnd_762x54mmR", 2],["rhs_100Rnd_762x54mmR_green", 1], ["rhs_mag_rdg2_white", 2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Rook40_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 2]]];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles_OPFOR", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["rhs_assault_umbts"];
	};
	case "AMG": { // Помошник пулеметчика
		_e_prim = ["rhs_weap_ak74m"];
		_e_prim_mag = [
			[["rhs_30Rnd_545x39_7N10_AK", 4],["rhs_100Rnd_762x54mmR", 3],["rhs_100Rnd_762x54mmR_green", 1], ["rhs_mag_rdg2_white", 2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Rook40_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 2]]];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["rhs_assault_umbts"];
	};
	case "RPG": { // Стрелок РПГ-7
		_e_prim = ["hlc_rifle_aks74u"];
		_e_prim_mag = [
			[["rhs_30Rnd_545x39_7N10_AK", 4], ["rhs_mag_rdg2_white", 2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = [];
		_e_sec = ["rhs_weap_rpg7"];
		_e_sec_mag = [[["rhs_rpg7_PG7VL_mag", 1], ["rhs_rpg7_OG7V_mag", 1]]];
		_e_sec_mods = ["rhs_acc_pgo7v"];
		_e_side = ["hgun_Rook40_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "ACE_EarPlugs"];
		_e_back = ["rhs_assault_umbts"];
	};
	case "ARPG": { // Помошник гранатометчика
		_e_prim = ["rhs_weap_ak74m"];
		_e_prim_mag = [
			[["rhs_30Rnd_545x39_7N10_AK", 4], ["rhs_mag_rdg2_white", 2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Rook40_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 2]]];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["rhs_rpg"]; // 3 ВЛ выстрела для РПГ в комплекте рюкзака RHS
	};
	case "STR": { // Стрелок (ГП)
		_e_prim = ["rhs_weap_ak74m_gp25"];
		_e_prim_mag = [
			[["rhs_30Rnd_545x39_7N10_AK", 4],["rhs_30Rnd_545x39_AK_green", 2], ["rhs_VOG25", 6], ["rhs_vg40op_white", 2],["rhs_GRD40_green",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = ["rhs_acc_pkas"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Rook40_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 2]]];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles_OPFOR", "Binocular"] + _standartMed;
		_e_back = ["rhs_sidor"];
	};
};

if (_wrong) then {
	[_e_prim, _e_prim_mag, _e_mod1, _e_mod2, _e_mod3, _e_sec, _e_sec_mag, _e_sec_mods, _e_side, _e_side_mag, _e_items, _e_back, _wrong]
} else {
	[_e_prim, _e_prim_mag, _e_mod1, _e_mod2, _e_mod3, _e_sec, _e_sec_mag, _e_sec_mods, _e_side, _e_side_mag, _e_items, _e_back]
};