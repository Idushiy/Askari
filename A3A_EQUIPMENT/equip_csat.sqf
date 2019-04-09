// OPFOR EQUIPMENT
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
		_e_prim = ["arifle_Katiba_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_green", 6],["30Rnd_65x39_caseless_green_mag_Tracer", 3], ["HandGrenade", 2], ["SmokeShell", 2],["SmokeShellRed", 1],["SmokeShellGreen", 1],["Chemlight_red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_Nightstalker","optic_Hamr","optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Rook40_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_OPFOR", "Rangefinder"] + _standartMed;
		_e_back = ["tf_mr3000", "B_AssaultPack_dgtl","B_AssaultPack_sgg"];
	};
	case "TL": { // Старший стрелок
		_e_prim = ["arifle_Katiba_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_green", 6],["30Rnd_65x39_caseless_green_mag_Tracer", 3], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_Hamr","optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_OPFOR", "Binocular"] + _standartMed;
		_e_back = ["B_AssaultPack_dgtl","B_AssaultPack_sgg"];
	};
	case "GL": { // Стрелок (ГП)
		_e_prim = ["arifle_Katiba_GL_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_green", 8],["1Rnd_HE_Grenade_shell",6],["1Rnd_SmokePurple_Grenade_shell",2],["HandGrenade", 2],["SmokeShell", 2],["Chemlight_red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles_OPFOR"] + _standartMed;
		_e_back = ["B_AssaultPack_dgtl","B_AssaultPack_sgg"];
	};
	case "AR": { // Пулеметчик
		_e_prim = ["LMG_Zafir_F"];
		_e_prim_mag = [
			[["150Rnd_762x51_Box", 3],["150Rnd_762x51_Box_Tracer", 1], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_Hamr","optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles_OPFOR", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["B_TacticalPack_ocamo"];
	};
	case "AT": { // Стрелок (ПТ)
		_e_prim = ["arifle_Katiba_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_green", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_ACO_grn"];
		_e_sec = ["launch_RPG32_F"];
		_e_sec_mag = [[["RPG32_F", 1],["RPG32_HE_F", 1]]];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles_OPFOR", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["B_AssaultPack_dgtl","B_AssaultPack_sgg"];
	};
	case "ATT": { // Оператор ПТРК (Titan Compact)
		_e_prim = ["arifle_Katiba_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_green", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_ACO_grn"];
		_e_sec = ["launch_O_Titan_short_F"];
		_e_sec_mag = [[["Titan_AT", 1],["Titan_AP", 2]]];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch","NVGoggles_OPFOR", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["B_BergenG","B_Bergen_sgg"];
	};
	case "AA": { // Оператор ПЗРК (Titan Launcher)
		_e_prim = ["arifle_Katiba_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_green", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_ACO_grn"];
		_e_sec = ["launch_O_Titan_F"];
		_e_sec_mag = [[["Titan_AA", 2]]];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch","NVGoggles_OPFOR", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["B_BergenG","B_Bergen_sgg"];
	};
	case "RM": { // Стрелок
		_e_prim = ["arifle_Katiba_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_green", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch","NVGoggles_OPFOR"] + _standartMed;
		_e_back = ["B_AssaultPack_dgtl","B_AssaultPack_sgg"];
	};
	case "DM": { // Снайпер (Marksman)
		_e_prim = ["srifle_DMR_01_F"];
		_e_prim_mag = [
			[["10Rnd_762x51_Mag", 6], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = ["optic_DMS","optic_Hamr"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Rook40_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "Binocular","NVGoggles_OPFOR"] + _standartMed;
		_e_back = ["B_AssaultPack_dgtl","B_AssaultPack_sgg"];
	};
	case "MED": { // Медик
		_e_prim = ["arifle_Katiba_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_green", 8], ["HandGrenade", 2], ["SmokeShell", 4],["Chemlight_red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch","NVGoggles_OPFOR"] + _extendedMed;
		_e_back = ["B_Kitbag_cbr","B_Kitbag_sgg"];
	};
// -------------------- Отряд дайверов ----------------- //	
	case "D_TL": { // Дайвер - Командир отряда
		_e_prim = ["arifle_SDAR_F"];
		_e_prim_mag = [
			[["20Rnd_556x45_UW_mag", 4], ["30Rnd_556x45_Stanag", 6], ["HandGrenade", 2], ["SmokeShell", 2],["SmokeShellRed", 1],["SmokeShellGreen", 1],["Chemlight_red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Rook40_snds_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_OPFOR", "Binocular"] + _standartMed;
		_e_back = ["tf_mr3000","B_FieldPack_blk","B_AssaultPack_blk"];
	};
	case "D": { // Дайвер
		_e_prim = ["arifle_SDAR_F"];
		_e_prim_mag = [
			[["20Rnd_556x45_UW_mag", 4], ["30Rnd_556x45_Stanag", 6], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Rook40_snds_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 3]]];
		_e_items = ["ItemCompass","ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_OPFOR"] + _standartMed;
		_e_back = ["B_FieldPack_blk","B_AssaultPack_blk"];
	};
	case "D_ES": { // Дайвер - Специалист по взрывчатке
		_e_prim = ["arifle_SDAR_F"];
		_e_prim_mag = [
			[["20Rnd_556x45_UW_mag", 4], ["30Rnd_556x45_Stanag", 6], ["DemoCharge_Remote_Mag", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Rook40_snds_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 3]]];
		_e_items = ["ItemCompass","ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_OPFOR"] + _standartMed;
		_e_back = ["B_FieldPack_blk","B_AssaultPack_blk"];
	};
// ----------------- Отделение СпН --------------------- //	
	case "SPN_SL": { // СпН - Командир отделения
		_e_prim = ["arifle_Katiba_C_F","arifle_Katiba_GL_F","arifle_Katiba_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_green", 8],["30Rnd_65x39_caseless_green_mag_Tracer", 2], ["HandGrenade", 2], ["SmokeShell", 2],["SmokeShellRed", 1],["SmokeShellGreen", 1],["Chemlight_red",2]],
			[["30Rnd_65x39_caseless_green", 8],["30Rnd_65x39_caseless_green_mag_Tracer", 2],["1Rnd_Smoke_Grenade_shell", 2], ["1Rnd_HE_Grenade_shell", 8], ["HandGrenade", 2], ["SmokeShell", 2],["SmokeShellRed", 1],["SmokeShellGreen", 1],["Chemlight_red",2]],
			[["30Rnd_65x39_caseless_green", 8],["30Rnd_65x39_caseless_green_mag_Tracer", 2], ["HandGrenade", 2], ["SmokeShell", 2],["SmokeShellRed", 1],["SmokeShellGreen", 1],["Chemlight_red",2]]
		];
		_e_mod1 = ["muzzle_snds_H"];
		_e_mod2 = ["acc_pointer_IR","acc_flashlight"];
		_e_mod3 = ["optic_Nightstalker","optic_Hamr","optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Pistol_heavy_02_Yorris_F"];
		_e_side_mag = [[["6Rnd_45ACP_Cylinder", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_OPFOR", "Rangefinder"] + _standartMed;
		_e_back = ["tf_mr3000","B_AssaultPack_dgtl","B_AssaultPack_sgg","B_Carryall_cbr","B_Carryall_ocamo","B_Kitbag_cbr","B_Kitbag_sgg"];
	};
	case "SPN_AR": { // СпН - Пулеметчик
		_e_prim = ["LMG_Zafir_F"];
		_e_prim_mag = [
			[["150Rnd_762x51_Box", 3],["150Rnd_762x51_Box_Tracer", 1], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_Hamr","optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Pistol_heavy_02_Yorris_F"];
		_e_side_mag = [[["6Rnd_45ACP_Cylinder", 3]]];
		_e_items = ["ItemCompass","ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_OPFOR", "Binocular", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["B_AssaultPack_dgtl","B_AssaultPack_sgg","B_Carryall_cbr","B_Carryall_ocamo","B_Kitbag_cbr","B_Kitbag_sgg"];
	};
	case "SPN_AT": { // СпН - Стрелок (ПТ)
		_e_prim = ["arifle_Katiba_C_F","arifle_Katiba_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_green", 8],["30Rnd_65x39_caseless_green_mag_Tracer", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_red",2]],
			[["30Rnd_65x39_caseless_green", 8],["30Rnd_65x39_caseless_green_mag_Tracer", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_red",2]]
		];
		_e_mod1 = ["muzzle_snds_H"];
		_e_mod2 = ["acc_pointer_IR","acc_flashlight"];
		_e_mod3 = ["optic_ACO_grn"];
		_e_sec = ["launch_RPG32_F"];
		_e_sec_mag = [[["RPG32_F", 1],["RPG32_HE_F",1]]];
		_e_sec_mods = [];
		_e_side = ["hgun_Pistol_heavy_02_Yorris_F"];
		_e_side_mag = [[["6Rnd_45ACP_Cylinder", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_OPFOR", "Binocular", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["B_AssaultPack_dgtl","B_AssaultPack_sgg","B_Carryall_cbr","B_Carryall_ocamo","B_Kitbag_cbr","B_Kitbag_sgg"];
	};
	case "SPN_DM": { // СпН - Снайпер (Marksman)
		_e_prim = ["srifle_DMR_01_F"];
		_e_prim_mag = [
			[["10Rnd_762x51_Mag", 10], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_red",2]]
		];
		_e_mod1 = ["muzzle_snds_B"];
		_e_mod2 = ["acc_pointer_IR","acc_flashlight"];
		_e_mod3 = ["optic_Hamr","optic_DMS"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Pistol_heavy_02_Yorris_F"];
		_e_side_mag = [[["6Rnd_45ACP_Cylinder", 3]]];
		_e_items = ["ItemCompass", "ItemGPS","ItemMap", "ItemWatch", "Rangefinder", "NVGoggles_OPFOR"] + _standartMed;
		_e_back = ["B_AssaultPack_dgtl","B_AssaultPack_sgg","B_Carryall_cbr","B_Carryall_ocamo","B_Kitbag_cbr","B_Kitbag_sgg"];
	};
	case "SPN_ES": { // СпН - Специалист по взрывчатке
		_e_prim = ["arifle_Katiba_C_F","arifle_Katiba_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_green", 8],["30Rnd_65x39_caseless_green_mag_Tracer", 2],["DemoCharge_Remote_Mag", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_red",2]],
			[["30Rnd_65x39_caseless_green", 8],["30Rnd_65x39_caseless_green_mag_Tracer", 2],["DemoCharge_Remote_Mag", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_red",2]]
		];
		_e_mod1 = ["muzzle_snds_H"];
		_e_mod2 = ["acc_pointer_IR","acc_flashlight"];
		_e_mod3 = ["optic_Hamr","optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Pistol_heavy_02_Yorris_F"];
		_e_side_mag = [[["6Rnd_45ACP_Cylinder", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_OPFOR", "Binocular"] + _standartMed;
		_e_back = ["B_AssaultPack_dgtl","B_AssaultPack_sgg","B_Carryall_cbr","B_Carryall_ocamo","B_Kitbag_cbr","B_Kitbag_sgg"];
	};
	case "SPN_OP": { // СпН - Стрелок
		_e_prim = ["arifle_Katiba_C_F","arifle_Katiba_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_green", 8],["30Rnd_65x39_caseless_green_mag_Tracer", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_red",2]],
			[["30Rnd_65x39_caseless_green", 8],["30Rnd_65x39_caseless_green_mag_Tracer", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_red",2]]
		];
		_e_mod1 = ["muzzle_snds_H"];
		_e_mod2 = ["acc_pointer_IR","acc_flashlight"];
		_e_mod3 = ["optic_Hamr","optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Pistol_heavy_02_Yorris_F"];
		_e_side_mag = [[["6Rnd_45ACP_Cylinder", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_OPFOR", "Binocular"] + _standartMed;
		_e_back = ["B_AssaultPack_dgtl","B_AssaultPack_sgg","B_Carryall_cbr","B_Carryall_ocamo","B_Kitbag_cbr","B_Kitbag_sgg"];
	};
	case "SPN_MED": { // СпН - Медик
		_e_prim = ["arifle_Katiba_C_F","arifle_Katiba_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_green", 8],["30Rnd_65x39_caseless_green_mag_Tracer", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_red",2]],
			[["30Rnd_65x39_caseless_green", 8],["30Rnd_65x39_caseless_green_mag_Tracer", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_red",2]]
		];
		_e_mod1 = ["muzzle_snds_H"];
		_e_mod2 = ["acc_pointer_IR","acc_flashlight"];
		_e_mod3 = ["optic_Hamr","optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Pistol_heavy_02_Yorris_F"];
		_e_side_mag = [[["6Rnd_45ACP_Cylinder", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_OPFOR","Binocular"] + _extendedMed;
		_e_back = ["B_Carryall_cbr","B_Carryall_ocamo","B_Kitbag_cbr","B_Kitbag_sgg"];
	};
	case "SPN_JTAC": { // СпН - Наводчик-наблюдатель
		_e_prim = ["arifle_Katiba_C_F","arifle_Katiba_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_green", 8],["30Rnd_65x39_caseless_green_mag_Tracer", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Laserbatteries",1],["Chemlight_red",2]],
			[["30Rnd_65x39_caseless_green", 8],["30Rnd_65x39_caseless_green_mag_Tracer", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Laserbatteries",1],["Chemlight_red",2]]
		];
		_e_mod1 = ["muzzle_snds_H"];
		_e_mod2 = ["acc_pointer_IR","acc_flashlight"];
		_e_mod3 = ["optic_Hamr","optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Pistol_heavy_02_Yorris_F"];
		_e_side_mag = [[["6Rnd_45ACP_Cylinder", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_OPFOR", "Laserdesignator"] + _standartMed;
		_e_back = ["B_AssaultPack_dgtl","B_AssaultPack_sgg","B_Carryall_cbr","B_Carryall_ocamo","B_Kitbag_cbr","B_Kitbag_sgg"];
	};
// ----------------- Снайперский отряд ---------------- //	
	case "SNIPER": { // Снайпер
		_e_prim = ["srifle_GM6_F"];
		_e_prim_mag = [
			[["5Rnd_127x108_Mag", 6], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = ["optic_LRPS","optic_DMS"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Rook40_snds_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_OPFOR", "Binocular", "ACE_EarPlugs"] + _standartMed;
		_e_back = [];
	};
	case "SPOTTER": { // Наводчик
		_e_prim = ["srifle_DMR_01_F"];
		_e_prim_mag = [
			[["10Rnd_762x51_Mag", 9], ["HandGrenade", 2], ["SmokeShell", 2], ["5Rnd_127x108_Mag", 4],["Chemlight_red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_pointer_IR","acc_flashlight"];
		_e_mod3 = ["optic_DMS","optic_Hamr"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Rook40_snds_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_OPFOR", "Rangefinder", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["B_AssaultPack_dgtl","B_AssaultPack_sgg","B_Carryall_cbr","B_Carryall_ocamo","B_Kitbag_cbr","B_Kitbag_sgg"];
	};
	case "SNIPER_AS": { // Помощник
		_e_prim = ["arifle_Katiba_GL_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_green", 8],["30Rnd_65x39_caseless_green_mag_Tracer", 2], ["1Rnd_HE_Grenade_shell", 6],["1Rnd_SmokePurple_Grenade_shell",2], ["HandGrenade", 2], ["SmokeShell", 2], ["ClaymoreDirectionalMine_Remote_Mag",2],["SLAMDirectionalMine_Wire_Mag",2],["Laserbatteries",1],["Chemlight_red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_Hamr","optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Rook40_snds_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS","ItemMap", "ItemWatch", "NVGoggles_OPFOR", "Laserdesignator", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["tf_mr3000","B_AssaultPack_dgtl","B_AssaultPack_sgg","B_Carryall_cbr","B_Carryall_ocamo","B_Kitbag_cbr","B_Kitbag_sgg"];
	};
// ------------------ Остальные классы -------------------//	
	case "CREW": { // Экипаж
		_e_prim = ["arifle_Katiba_C_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_green", 6], ["HandGrenade", 2],["SmokeShell", 2],["Chemlight_red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_OPFOR"] + _standartMed;
		_e_back = [];
	};
	case "PILOT": { // Пилот / Экипаж вертолета
		_e_prim = ["arifle_Katiba_C_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_green", 6], ["HandGrenade", 2],["SmokeShellOrange",1],["SmokeShellYellow",1],["SmokeShellRed",1],["Chemlight_red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_OPFOR"] + _standartMed;
		_e_back = [];
	};
	case "PILOT_P": { // Пилот самолета
		_e_prim = ["SMG_02_F"];
		_e_prim_mag = [
			[["30Rnd_9x21_Mag", 2], ["HandGrenade", 2],["SmokeShellOrange",1],["SmokeShellYellow",1],["SmokeShellRed",1],["Chemlight_red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_OPFOR"] + _standartMed;
		_e_back = ["B_Parachute"];
	};
	case "UAV_OP": { // Оператор БПА
		_e_prim = ["arifle_Katiba_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_green", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass","O_UavTerminal", "ItemMap", "ItemWatch", "NVGoggles_OPFOR"] + _standartMed;
		_e_back = ["O_UAV_01_backpack_F","B_AssaultPack_dgtl","B_AssaultPack_sgg"];
	};
	case "SAP": { // Сапер
		_e_prim = ["arifle_Katiba_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_green", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_red",2],["ATMine_Range_Mag",1],["APERSMine_Range_Mag",2],["APERSBoundingMine_Range_Mag",2],["SLAMDirectionalMine_Wire_Mag",2],["APERSTripMine_Wire_Mag",4]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass","ItemGPS", "ItemMap", "ItemWatch","NVGoggles_OPFOR"] + _standartMed;
		_e_back = ["B_Carryall_ocamo","B_Carryall_cbr","B_Kitbag_sgg","B_Kitbag_cbr"];
	};
};

if (_wrong) then {
	[_e_prim, _e_prim_mag, _e_mod1, _e_mod2, _e_mod3, _e_sec, _e_sec_mag, _e_sec_mods, _e_side, _e_side_mag, _e_items, _e_back, _wrong]
} else {
	[_e_prim, _e_prim_mag, _e_mod1, _e_mod2, _e_mod3, _e_sec, _e_sec_mag, _e_sec_mods, _e_side, _e_side_mag, _e_items, _e_back]
};