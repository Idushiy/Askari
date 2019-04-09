// INDEPENDENT EQUIPMENT
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
		_e_prim = ["arifle_Mk20_F"];
		_e_prim_mag = [
			[["30Rnd_556x45_Stanag", 6],["30Rnd_556x45_Stanag_Tracer_Yellow", 3], ["HandGrenade", 2], ["SmokeShell", 2],["SmokeShellRed", 1],["SmokeShellGreen", 1],["Chemlight_green",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_MRCO","optic_Holosight","optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_ACPC2_F"];
		_e_side_mag = [[["9Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_INDEP", "Rangefinder"] + _standartMed;
		_e_back = ["tf_anprc155", "B_AssaultPack_rgr"];
	};
	case "TL": { // Старший стрелок
		_e_prim = ["arifle_Mk20_F"];
		_e_prim_mag = [
			[["30Rnd_556x45_Stanag", 6],["30Rnd_556x45_Stanag_Tracer_Yellow", 3], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_green",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_MRCO","optic_Holosight","optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_INDEP", "Binocular"] + _standartMed;
		_e_back = ["B_AssaultPack_rgr"];
	};
	case "GL": { // Стрелок (ГП)
		_e_prim = ["arifle_Mk20_GL_F"];
		_e_prim_mag = [
			[["30Rnd_556x45_Stanag", 8],["1Rnd_HE_Grenade_shell",6],["1Rnd_SmokePurple_Grenade_shell",2],["HandGrenade", 2],["SmokeShell", 2],["Chemlight_green",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles_INDEP"] + _standartMed;
		_e_back = ["B_AssaultPack_rgr"];
	};
	case "AR": { // Пулеметчик
		_e_prim = ["LMG_Mk200_F"];
		_e_prim_mag = [
			[["200Rnd_65x39_cased_Box", 3],["200Rnd_65x39_cased_Box_Tracer", 1], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_green",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_MRCO","optic_Holosight","optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles_INDEP", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["B_TacticalPack_rgr"];
	};
	case "AT": { // Стрелок (ПТ)
		_e_prim = ["arifle_Mk20_F"];
		_e_prim_mag = [
			[["30Rnd_556x45_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_green",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_ACO_grn"];
		_e_sec = ["launch_NLAW_F"];
		_e_sec_mag = [[["NLAW_F", 2]]];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles_INDEP", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["B_AssaultPack_rgr"];
	};
	case "ATT": { // Оператор ПТРК (Titan Compact)
		_e_prim = ["arifle_Mk20_F"];
		_e_prim_mag = [
			[["30Rnd_556x45_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_green",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_ACO_grn"];
		_e_sec = ["launch_I_Titan_short_F"];
		_e_sec_mag = [[["Titan_AT", 1],["Titan_AP", 2]]];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles_INDEP", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["B_Bergen_rgr"];
	};
	case "AA": { // Оператор ПЗРК (Titan Launcher)
		_e_prim = ["arifle_Mk20_F"];
		_e_prim_mag = [
			[["30Rnd_556x45_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_green",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_ACO_grn"];
		_e_sec = ["launch_I_Titan_F"];
		_e_sec_mag = [[["Titan_AA", 2]]];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles_INDEP", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["B_Bergen_rgr"];
	};
	case "RM": { // Стрелок
		_e_prim = ["arifle_Mk20_F"];
		_e_prim_mag = [
			[["30Rnd_556x45_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_green",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles_INDEP"] + _standartMed;
		_e_back = ["B_AssaultPack_rgr"];
	};
	case "DM": { // Снайпер (Marksman)
		_e_prim = ["srifle_EBR_F"];
		_e_prim_mag = [
			[["20Rnd_762x51_Mag", 6], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_green",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = ["optic_MRCO","optic_SOS"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_ACPC2_F"];
		_e_side_mag = [[["9Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "Binocular", "NVGoggles_INDEP"] + _standartMed;
		_e_back = ["B_AssaultPack_rgr"];
	};
	case "MED": { // Медик
		_e_prim = ["arifle_Mk20_F"];
		_e_prim_mag = [
			[["30Rnd_556x45_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 4],["Chemlight_green",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles_INDEP"] + _extendedMed;
		_e_back = ["B_Kitbag_rgr"];
	};
// -------------------- Отряд дайверов ----------------- //	
	case "D_TL": { // Дайвер - Командир отряда
		_e_prim = ["arifle_SDAR_F"];
		_e_prim_mag = [
			[["20Rnd_556x45_UW_mag", 4], ["30Rnd_556x45_Stanag", 6], ["HandGrenade", 2], ["SmokeShell", 2],["SmokeShellRed", 1],["SmokeShellGreen", 1],["Chemlight_green",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_ACPC2_snds_F"];
		_e_side_mag = [[["9Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_INDEP", "Binocular"] + _standartMed;
		_e_back = ["tf_anprc155","B_FieldPack_blk","B_AssaultPack_blk"];
	};
	case "D": { // Дайвер
		_e_prim = ["arifle_SDAR_F"];
		_e_prim_mag = [
			[["20Rnd_556x45_UW_mag", 4], ["30Rnd_556x45_Stanag", 6], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_green",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_ACPC2_snds_F"];
		_e_side_mag = [[["9Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass","ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_INDEP"] + _standartMed;
		_e_back = ["B_FieldPack_blk","B_AssaultPack_blk"];
	};
	case "D_ES": { // Дайвер - Специалист по взрывчатке
		_e_prim = ["arifle_SDAR_F"];
		_e_prim_mag = [
			[["20Rnd_556x45_UW_mag", 4], ["30Rnd_556x45_Stanag", 6], ["DemoCharge_Remote_Mag", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_green",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_ACPC2_snds_F"];
		_e_side_mag = [[["9Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass","ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_INDEP"] + _standartMed;
		_e_back = ["B_FieldPack_blk","B_AssaultPack_blk"];
	};
// ----------------- Отделение СпН --------------------- //	
	case "SPN_SL": { // СпН - Командир отделения
		_e_prim = ["arifle_Mk20C_F","arifle_Mk20_GL_F","arifle_Mk20_F"];
		_e_prim_mag = [
			[["30Rnd_556x45_Stanag", 8],["30Rnd_556x45_Stanag_Tracer_Yellow", 2], ["HandGrenade", 2], ["SmokeShell", 2],["SmokeShellRed", 1],["SmokeShellGreen", 1],["Chemlight_green",2]],
			[["30Rnd_556x45_Stanag", 8],["30Rnd_556x45_Stanag_Tracer_Yellow", 2],["1Rnd_Smoke_Grenade_shell", 2], ["1Rnd_HE_Grenade_shell", 8], ["HandGrenade", 2], ["SmokeShell", 2],["SmokeShellRed", 1],["SmokeShellGreen", 1],["Chemlight_green",2]],
			[["30Rnd_556x45_Stanag", 8],["30Rnd_556x45_Stanag_Tracer_Yellow", 2], ["HandGrenade", 2], ["SmokeShell", 2],["SmokeShellRed", 1],["SmokeShellGreen", 1],["Chemlight_green",2]]
		];
		_e_mod1 = ["muzzle_snds_M"];
		_e_mod2 = ["acc_pointer_IR","acc_flashlight"];
		_e_mod3 = ["optic_tws","optic_MRCO","optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_ACPC2_snds_F"];
		_e_side_mag = [[["9Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_INDEP", "Rangefinder"] + _standartMed;
		_e_back = ["tf_anprc155","B_AssaultPack_rgr","B_Kitbag_rgr"];
	};
	case "SPN_AR": { // СпН - Пулеметчик
		_e_prim = ["LMG_Mk200_F"];
		_e_prim_mag = [
			[["200Rnd_65x39_cased_Box", 3],["200Rnd_65x39_cased_Box_Tracer", 1], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_green",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_tws_mg","optic_MRCO","optic_Holosight","optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_ACPC2_snds_F"];
		_e_side_mag = [[["9Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass","ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_INDEP", "Binocular", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["B_AssaultPack_rgr","B_Kitbag_rgr"];
	};
	case "SPN_AT": { // СпН - Стрелок (ПТ)
		_e_prim = ["arifle_Mk20C_F","arifle_Mk20_F"];
		_e_prim_mag = [
			[["30Rnd_556x45_Stanag", 8],["30Rnd_556x45_Stanag_Tracer_Yellow", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_green",2]],
			[["30Rnd_556x45_Stanag", 8],["30Rnd_556x45_Stanag_Tracer_Yellow", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_green",2]]
		];
		_e_mod1 = ["muzzle_snds_M"];
		_e_mod2 = ["acc_pointer_IR","acc_flashlight"];
		_e_mod3 = ["optic_ACO_grn"];
		_e_sec = ["launch_NLAW_F"];
		_e_sec_mag = [[["NLAW_F", 2]]];
		_e_sec_mods = [];
		_e_side = ["hgun_ACPC2_snds_F"];
		_e_side_mag = [[["9Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_INDEP", "Binocular", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["B_AssaultPack_rgr","B_Kitbag_rgr"];
	};
	case "SPN_DM": { // СпН - Снайпер (Marksman)
		_e_prim = ["srifle_EBR_F"];
		_e_prim_mag = [
			[["20Rnd_762x51_Mag", 10], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_green",2]]
		];
		_e_mod1 = ["muzzle_snds_B"];
		_e_mod2 = ["acc_pointer_IR","acc_flashlight"];
		_e_mod3 = ["optic_MRCO","optic_SOS"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_ACPC2_snds_F"];
		_e_side_mag = [[["9Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS","ItemMap", "ItemWatch", "Rangefinder", "NVGoggles_INDEP"] + _standartMed;
		_e_back = ["B_AssaultPack_rgr","B_Kitbag_rgr"];
	};
	case "SPN_ES": { // СпН - Специалист по взрывчатке
		_e_prim = ["arifle_Mk20C_F","arifle_Mk20_F"];
		_e_prim_mag = [
			[["30Rnd_556x45_Stanag", 8],["30Rnd_556x45_Stanag_Tracer_Yellow", 2],["DemoCharge_Remote_Mag", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_green",2]],
			[["30Rnd_556x45_Stanag", 8],["30Rnd_556x45_Stanag_Tracer_Yellow", 2],["DemoCharge_Remote_Mag", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_green",2]]
		];
		_e_mod1 = ["muzzle_snds_M"];
		_e_mod2 = ["acc_pointer_IR","acc_flashlight"];
		_e_mod3 = ["optic_MRCO","optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_ACPC2_snds_F"];
		_e_side_mag = [[["9Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_INDEP", "Binocular"] + _standartMed;
		_e_back = ["B_AssaultPack_rgr","B_Kitbag_rgr"];
	};
	case "SPN_OP": { // СпН - Стрелок
		_e_prim = ["arifle_Mk20C_F","arifle_Mk20_F"];
		_e_prim_mag = [
			[["30Rnd_556x45_Stanag", 8],["30Rnd_556x45_Stanag_Tracer_Yellow", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_green",2]],
			[["30Rnd_556x45_Stanag", 8],["30Rnd_556x45_Stanag_Tracer_Yellow", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_green",2]]
		];
		_e_mod1 = ["muzzle_snds_M"];
		_e_mod2 = ["acc_pointer_IR","acc_flashlight"];
		_e_mod3 = ["optic_MRCO","optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_ACPC2_snds_F"];
		_e_side_mag = [[["9Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_INDEP", "Binocular"] + _standartMed;
		_e_back = ["B_AssaultPack_rgr","B_Kitbag_rgr"];
	};
	case "SPN_MED": { // СпН - Медик
		_e_prim = ["arifle_Mk20C_F","arifle_Mk20_F"];
		_e_prim_mag = [
			[["30Rnd_556x45_Stanag", 8],["30Rnd_556x45_Stanag_Tracer_Yellow", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_green",2]],
			[["30Rnd_556x45_Stanag", 8],["30Rnd_556x45_Stanag_Tracer_Yellow", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_green",2]]
		];
		_e_mod1 = ["muzzle_snds_M"];
		_e_mod2 = ["acc_pointer_IR","acc_flashlight"];
		_e_mod3 = ["optic_MRCO","optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_ACPC2_snds_F"];
		_e_side_mag = [[["9Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_INDEP","Binocular"] + _extendedMed;
		_e_back = ["B_Kitbag_rgr"];
	};
	case "SPN_JTAC": { // СпН - Наводчик-наблюдатель
		_e_prim = ["arifle_Mk20C_F","arifle_Mk20_F"];
		_e_prim_mag = [
			[["30Rnd_556x45_Stanag", 8],["30Rnd_556x45_Stanag_Tracer_Yellow", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Laserbatteries",1],["Chemlight_green",2]],
			[["30Rnd_556x45_Stanag", 8],["30Rnd_556x45_Stanag_Tracer_Yellow", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Laserbatteries",1],["Chemlight_green",2]]
		];
		_e_mod1 = ["muzzle_snds_M"];
		_e_mod2 = ["acc_pointer_IR","acc_flashlight"];
		_e_mod3 = ["optic_MRCO","optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_ACPC2_snds_F"];
		_e_side_mag = [[["9Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_INDEP", "Laserdesignator"] + _standartMed;
		_e_back = ["B_AssaultPack_rgr","B_Kitbag_rgr"];
	};
// ----------------- Снайперский отряд ---------------- //	
	case "SNIPER": { // Снайпер
		_e_prim = ["srifle_GM6_F"];
		_e_prim_mag = [
			[["5Rnd_127x108_Mag", 6], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_green",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = ["optic_LRPS","optic_DMS"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_ACPC2_snds_F"];
		_e_side_mag = [[["9Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_INDEP", "Binocular", "ACE_EarPlugs"] + _standartMed;
		_e_back = [];
	};
	case "SPOTTER": { // Наводчик
		_e_prim = ["srifle_EBR_F"];
		_e_prim_mag = [
			[["20Rnd_762x51_Mag", 9], ["HandGrenade", 2], ["SmokeShell", 2], ["5Rnd_127x108_Mag", 4],["Chemlight_green",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_pointer_IR","acc_flashlight"];
		_e_mod3 = ["optic_DMS","optic_MRCO"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_ACPC2_snds_F"];
		_e_side_mag = [[["9Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_INDEP", "Rangefinder", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["B_AssaultPack_rgr","B_Kitbag_rgr"];
	};
	case "SNIPER_AS": { // Помощник
		_e_prim = ["arifle_Mk20_GL_F"];
		_e_prim_mag = [
			[["30Rnd_556x45_Stanag", 8],["30Rnd_556x45_Stanag_Tracer_Yellow", 2], ["1Rnd_HE_Grenade_shell", 6],["1Rnd_SmokePurple_Grenade_shell",2], ["HandGrenade", 2], ["SmokeShell", 2], ["ClaymoreDirectionalMine_Remote_Mag",2],["SLAMDirectionalMine_Wire_Mag",2],["Laserbatteries",1],["Chemlight_green",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_MRCO","optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_ACPC2_snds_F"];
		_e_side_mag = [[["9Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS","ItemMap", "ItemWatch", "NVGoggles_INDEP", "Laserdesignator", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["tf_anprc155","B_AssaultPack_rgr","B_Kitbag_rgr"];
	};
// ------------------ Остальные классы -------------------//	
	case "CREW": { // Экипаж
		_e_prim = ["arifle_Mk20C_F"];
		_e_prim_mag = [
			[["30Rnd_556x45_Stanag", 6], ["HandGrenade", 2],["SmokeShell", 2],["Chemlight_green",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_INDEP"] + _standartMed;
		_e_back = [];
	};
	case "PILOT": { // Пилот / Экипаж вертолета
		_e_prim = ["arifle_Mk20C_F"];
		_e_prim_mag = [
			[["30Rnd_556x45_Stanag", 6], ["HandGrenade", 2],["SmokeShellOrange",1],["SmokeShellYellow",1],["SmokeShellRed",1],["Chemlight_green",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_INDEP"] + _standartMed;
		_e_back = [];
	};
	case "PILOT_P": { // Пилот самолета
		_e_prim = ["hgun_PDW2000_F"];
		_e_prim_mag = [
			[["30Rnd_9x21_Mag", 2], ["HandGrenade", 2],["SmokeShellOrange",1],["SmokeShellYellow",1],["SmokeShellRed",1],["Chemlight_green",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_INDEP"] + _standartMed;
		_e_back = ["B_Parachute"];
	};
	case "UAV_OP": { // Оператор БПА
		_e_prim = ["arifle_Mk20_F"];
		_e_prim_mag = [
			[["30Rnd_556x45_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_green",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass","O_UavTerminal", "ItemMap", "ItemWatch", "NVGoggles_INDEP"] + _standartMed;
		_e_back = ["I_UAV_01_backpack_F","B_AssaultPack_rgr"];
	};
	case "SAP": { // Сапер
		_e_prim = ["arifle_Mk20_F"];
		_e_prim_mag = [
			[["30Rnd_556x45_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_green",2],["ATMine_Range_Mag",1],["APERSMine_Range_Mag",2],["APERSBoundingMine_Range_Mag",2],["SLAMDirectionalMine_Wire_Mag",2],["APERSTripMine_Wire_Mag",4]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass","ItemGPS", "ItemMap", "ItemWatch", "NVGoggles_INDEP"] + _standartMed;
		_e_back = ["B_Kitbag_rgr"];
	};
};

if (_wrong) then {
	[_e_prim, _e_prim_mag, _e_mod1, _e_mod2, _e_mod3, _e_sec, _e_sec_mag, _e_sec_mods, _e_side, _e_side_mag, _e_items, _e_back, _wrong]
} else {
	[_e_prim, _e_prim_mag, _e_mod1, _e_mod2, _e_mod3, _e_sec, _e_sec_mag, _e_sec_mods, _e_side, _e_side_mag, _e_items, _e_back]
};