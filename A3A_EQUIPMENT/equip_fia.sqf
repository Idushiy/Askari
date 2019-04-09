// FIA EQUIPMENT
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
// ------------------ Пехотное отделение ------------------------ //	
	case "SL": { // Командир отделения
		_e_prim = ["arifle_TRG20_F","arifle_TRG21_F","arifle_Mk20_F"];
		_e_prim_mag = [
			[["30Rnd_556x45_Stanag", 6],["30Rnd_556x45_Stanag_Tracer_Yellow", 3], ["HandGrenade", 2], ["SmokeShell", 2],["SmokeShellRed", 1],["SmokeShellGreen", 1],["Chemlight_yellow",2]],
			[["30Rnd_556x45_Stanag", 6],["30Rnd_556x45_Stanag_Tracer_Yellow", 3], ["HandGrenade", 2], ["SmokeShell", 2],["SmokeShellRed", 1],["SmokeShellGreen", 1],["Chemlight_yellow",2]],
			[["30Rnd_556x45_Stanag", 6],["30Rnd_556x45_Stanag_Tracer_Yellow", 3], ["HandGrenade", 2], ["SmokeShell", 2],["SmokeShellRed", 1],["SmokeShellGreen", 1],["Chemlight_yellow",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = ["optic_MRCO","optic_Holosight","optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_INDEP", "Binocular"] + _standartMed;
		_e_back = ["tf_rt1523g", "B_AssaultPack_rgr","B_FieldPack_khk","B_Kitbag_rgr","B_TacticalPack_rgr"];
	};
	case "TL": { // Старший стрелок
		_e_prim = ["arifle_TRG20_F","arifle_TRG21_F","arifle_Mk20_F"];
		_e_prim_mag = [
			[["30Rnd_556x45_Stanag", 6],["30Rnd_556x45_Stanag_Tracer_Yellow", 3], ["HandGrenade", 2], ["SmokeShell", 2],["SmokeShellRed", 1],["SmokeShellGreen", 1],["Chemlight_yellow",2]],
			[["30Rnd_556x45_Stanag", 6],["30Rnd_556x45_Stanag_Tracer_Yellow", 3], ["HandGrenade", 2], ["SmokeShell", 2],["SmokeShellRed", 1],["SmokeShellGreen", 1],["Chemlight_yellow",2]],
			[["30Rnd_556x45_Stanag", 6],["30Rnd_556x45_Stanag_Tracer_Yellow", 3], ["HandGrenade", 2], ["SmokeShell", 2],["SmokeShellRed", 1],["SmokeShellGreen", 1],["Chemlight_yellow",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = ["optic_MRCO","optic_Holosight","optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_INDEP", "Binocular"] + _standartMed;
		_e_back = ["B_AssaultPack_rgr","B_FieldPack_khk","B_Kitbag_rgr","B_TacticalPack_rgr"];
	};
	case "GL": { // Стрелок (ГП)
		_e_prim = ["arifle_TRG21_GL_F","arifle_Mk20_GL_F"];
		_e_prim_mag = [
			[["30Rnd_556x45_Stanag", 8],["1Rnd_HE_Grenade_shell",6],["1Rnd_SmokePurple_Grenade_shell",2],["HandGrenade", 2],["SmokeShell", 2],["Chemlight_yellow",2]],
			[["30Rnd_556x45_Stanag", 8],["1Rnd_HE_Grenade_shell",6],["1Rnd_SmokePurple_Grenade_shell",2],["HandGrenade", 2],["SmokeShell", 2],["Chemlight_yellow",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = ["optic_ACO_grn","optic_Holosight"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles_INDEP"] + _standartMed;
		_e_back = ["B_AssaultPack_rgr","B_FieldPack_khk","B_Kitbag_rgr","B_TacticalPack_rgr"];
	};
	case "AR": { // Пулеметчик
		_e_prim = ["LMG_Mk200_F"];
		_e_prim_mag = [
			[["200Rnd_65x39_cased_Box", 3],["200Rnd_65x39_cased_Box_Tracer", 1], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_yellow",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = ["optic_MRCO","optic_Holosight","optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles_INDEP", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["B_AssaultPack_rgr","B_FieldPack_khk","B_Kitbag_rgr","B_TacticalPack_rgr"];
	};
	case "AT": { // Стрелок (ПТ)
		_e_prim = ["arifle_TRG20_F","arifle_Mk20_F"];
		_e_prim_mag = [
			[["30Rnd_556x45_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_yellow",2]],
			[["30Rnd_556x45_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_yellow",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = ["optic_ACO_grn"];
		_e_sec = ["launch_NLAW_F"];
		_e_sec_mag = [[["NLAW_F", 2]]];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles_INDEP", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["B_AssaultPack_rgr","B_FieldPack_khk","B_Kitbag_rgr","B_TacticalPack_rgr"];
	};
	case "ATT": { // Оператор ПТРК (Titan Compact)
		_e_prim = ["arifle_TRG20_F","arifle_Mk20_F"];
		_e_prim_mag = [
			[["30Rnd_556x45_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_yellow",2]],
			[["30Rnd_556x45_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_yellow",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = ["optic_ACO_grn"];
		_e_sec = ["launch_I_Titan_short_F"];
		_e_sec_mag = [[["Titan_AT", 1],["Titan_AP", 2]]];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch","NVGoggles_INDEP", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["B_Bergen_rgr"];
	};
	case "AA": { // Оператор ПЗРК (Titan Launcher)
		_e_prim = ["arifle_TRG20_F","arifle_Mk20_F"];
		_e_prim_mag = [
			[["30Rnd_556x45_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_yellow",2]],
			[["30Rnd_556x45_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_yellow",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = ["optic_ACO_grn"];
		_e_sec = ["launch_I_Titan_F"];
		_e_sec_mag = [[["Titan_AA", 2]]];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch","NVGoggles_INDEP", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["B_Bergen_rgr"];
	};
	case "RM": { // Стрелок
		_e_prim = ["arifle_TRG21_F","arifle_TRG20_F","arifle_Mk20_F"];
		_e_prim_mag = [
			[["30Rnd_556x45_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_yellow",2]],
			[["30Rnd_556x45_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_yellow",2]],
			[["30Rnd_556x45_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_yellow",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = ["optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch","NVGoggles_INDEP"] + _standartMed;
		_e_back = ["B_AssaultPack_rgr","B_FieldPack_khk","B_Kitbag_rgr","B_TacticalPack_rgr"];
	};
	case "DM": { // Снайпер (Marksman)
		_e_prim = ["srifle_EBR_F"];
		_e_prim_mag = [
			[["20Rnd_762x51_Mag", 6], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_yellow",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = ["optic_MRCO","optic_SOS"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_ACPC2_F"];
		_e_side_mag = [[["9Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "Binocular","NVGoggles_INDEP"] + _standartMed;
		_e_back = ["B_AssaultPack_rgr","B_FieldPack_khk","B_Kitbag_rgr","B_TacticalPack_rgr"];
	};
	case "MED": { // Медик
		_e_prim = ["arifle_TRG20_F","arifle_TRG21_F","arifle_Mk20_F"];
		_e_prim_mag = [
			[["30Rnd_556x45_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 4],["Chemlight_yellow",2]],
			[["30Rnd_556x45_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 4],["Chemlight_yellow",2]],
			[["30Rnd_556x45_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 4],["Chemlight_yellow",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = ["optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch","NVGoggles_INDEP"] + _extendedMed;
		_e_back = ["B_Kitbag_rgr"];
	};
	case "SAP": { // Сапер
		_e_prim = ["arifle_TRG20_F","arifle_Mk20_F"];
		_e_prim_mag = [
			[["30Rnd_556x45_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_yellow",2],["ATMine_Range_Mag",1],["APERSMine_Range_Mag",2],["APERSBoundingMine_Range_Mag",2],["SLAMDirectionalMine_Wire_Mag",2],["APERSTripMine_Wire_Mag",4]],
			[["30Rnd_556x45_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_yellow",2],["ATMine_Range_Mag",1],["APERSMine_Range_Mag",2],["APERSBoundingMine_Range_Mag",2],["SLAMDirectionalMine_Wire_Mag",2],["APERSTripMine_Wire_Mag",4]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = ["optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass","ItemGPS", "ItemMap", "ItemWatch","NVGoggles_INDEP"] + _standartMed;
		_e_back = ["B_Kitbag_rgr"];
	};
};

if (_wrong) then {
	[_e_prim, _e_prim_mag, _e_mod1, _e_mod2, _e_mod3, _e_sec, _e_sec_mag, _e_sec_mods, _e_side, _e_side_mag, _e_items, _e_back, _wrong]
} else {
	[_e_prim, _e_prim_mag, _e_mod1, _e_mod2, _e_mod3, _e_sec, _e_sec_mag, _e_sec_mods, _e_side, _e_side_mag, _e_items, _e_back]
};