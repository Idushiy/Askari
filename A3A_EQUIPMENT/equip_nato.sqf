// BLUFOR EQUIPMENT
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
// ------------------ Infantry squad ------------------------ //	
	case "SL": { // Squad Leader
		_e_prim = ["arifle_MX_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_mag", 4],["30Rnd_65x39_caseless_mag_Tracer", 2], ["HandGrenade", 2], ["SmokeShell", 2],["SmokeShellRed", 1],["SmokeShellGreen", 1],["Chemlight_red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_Nightstalker","optic_Hamr","optic_ACO_grn"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_P07_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles", "Rangefinder"] + _standartMed;
		_e_back = ["tf_rt1523g", "B_AssaultPack_mcamo"];
	};
	case "TL": { // Team Leader
		_e_prim = ["arifle_MX_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_mag", 6],["30Rnd_65x39_caseless_mag_Tracer", 3], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_ARCO","optic_Holosight","optic_Aco"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles", "Binocular"] + _standartMed;
		_e_back = ["B_AssaultPack_mcamo"];
	};
	case "GL": { // Grenadier
		_e_prim = ["arifle_MX_GL_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_mag", 8],["1Rnd_HE_Grenade_shell",6],["1Rnd_SmokePurple_Grenade_shell",2],["HandGrenade", 2],["SmokeShell", 2],["Chemlight_blue",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_Holosight","optic_Aco"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles"] + _standartMed;
		_e_back = ["B_AssaultPack_mcamo"];
	};
    case "AR": { // Automatic Rifleman
		_e_prim = ["LMG_Mk200_F"];
		_e_prim_mag = [
			[["200Rnd_65x39_cased_Box", 3],["200Rnd_65x39_cased_Box_Tracer", 1], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_tws_mg","optic_ARCO","optic_Holosight","optic_Aco"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["B_TacticalPack_mcamo","B_TacticalPack_oli"];
	};
	case "AT": { // Rifleman (AT)
		_e_prim = ["arifle_MX_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_mag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_Holosight","optic_Aco"];
		_e_sec = ["launch_NLAW_F"];
		_e_sec_mag = [[["NLAW_F", 2]]];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["B_AssaultPack_mcamo"];
	};
	case "ATT": { // Rifleman (AT) (Titan Compact)
		_e_prim = ["arifle_MX_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_mag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_Holosight", "optic_Aco"];
		_e_sec = ["launch_B_Titan_short_F"];
		_e_sec_mag = [[["Titan_AT", 1],["Titan_AP", 2]]];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch","NVGoggles", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["B_Bergen_mcamo"];
	};
	case "AA": { // Rifleman (AA) (Titan Launcher)
		_e_prim = ["arifle_MX_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_mag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_Holosight", "optic_Aco"];
		_e_sec = ["launch_B_Titan_F"];
		_e_sec_mag = [[["Titan_AA", 2]]];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch","NVGoggles", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["B_Bergen_mcamo"];
	};
	case "RM": { // Rifleman
		_e_prim = ["arifle_MX_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_mag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_Holosight", "optic_Aco"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch","NVGoggles"] + _standartMed;
		_e_back = ["B_AssaultPack_mcamo"];
	};
	case "DM": { // Designated Marksman
		_e_prim = ["srifle_EBR_F"];
		_e_prim_mag = [
			[["20Rnd_762x51_Mag", 6], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = ["optic_SOS","optic_ARCO"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_P07_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "Binocular","NVGoggles"] + _standartMed;
		_e_back = ["B_AssaultPack_mcamo"];
	};
	case "MED": { // Medic
		_e_prim = ["arifle_MX_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_mag", 8], ["HandGrenade", 2], ["SmokeShell", 4],["Chemlight_blue",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_Holosight", "optic_Aco"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch","NVGoggles"] + _extendedMed;
		_e_back = ["B_Kitbag_mcamo","B_Kitbag_cbr"];
	};
// -------------------- Diver Team ----------------- //	
	case "D_TL": { // Diver - Team Leader
		_e_prim = ["arifle_SDAR_F"];
		_e_prim_mag = [
			[["20Rnd_556x45_UW_mag", 4], ["30Rnd_556x45_Stanag", 6], ["HandGrenade", 2], ["SmokeShell", 2],["SmokeShellRed", 1],["SmokeShellGreen", 1],["Chemlight_blue",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_P07_snds_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles", "Binocular"] + _standartMed;
		_e_back = ["tf_rt1523g","B_FieldPack_blk","B_AssaultPack_blk"];
	};
	case "D": { // Diver
		_e_prim = ["arifle_SDAR_F"];
		_e_prim_mag = [
			[["20Rnd_556x45_UW_mag", 4], ["30Rnd_556x45_Stanag", 6], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_P07_snds_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 3]]];
		_e_items = ["ItemCompass","ItemGPS", "ItemMap", "ItemWatch", "NVGoggles"] + _standartMed;
		_e_back = ["B_FieldPack_blk","B_AssaultPack_blk"];
	};
	case "D_ES": { // Diver - Explosive Specialist
		_e_prim = ["arifle_SDAR_F"];
		_e_prim_mag = [
			[["20Rnd_556x45_UW_mag", 4], ["30Rnd_556x45_Stanag", 6], ["DemoCharge_Remote_Mag", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_P07_snds_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 3]]];
		_e_items = ["ItemCompass","ItemGPS", "ItemMap", "ItemWatch", "NVGoggles"] + _standartMed;
		_e_back = ["B_FieldPack_blk","B_AssaultPack_blk"];
	};
// ----------------- Recon Team --------------------- //	
	case "SPN_SL": { // Recon - Team Leader
		_e_prim = ["arifle_MXC_F","arifle_MX_GL_F","arifle_MX_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_mag", 8],["30Rnd_65x39_caseless_mag_Tracer", 2], ["HandGrenade", 2], ["SmokeShell", 2],["SmokeShellRed", 1],["SmokeShellGreen", 1],["Chemlight_blue",2]],
			[["30Rnd_65x39_caseless_mag", 8],["30Rnd_65x39_caseless_mag_Tracer", 2],["1Rnd_Smoke_Grenade_shell", 2], ["1Rnd_HE_Grenade_shell", 8], ["HandGrenade", 2], ["SmokeShell", 2],["SmokeShellRed", 1],["SmokeShellGreen", 1],["Chemlight_blue",2]],
			[["30Rnd_65x39_caseless_mag", 8],["30Rnd_65x39_caseless_mag_Tracer", 2], ["HandGrenade", 2], ["SmokeShell", 2],["SmokeShellRed", 1],["SmokeShellGreen", 1],["Chemlight_blue",2]]
		];
		_e_mod1 = ["muzzle_snds_H"];
		_e_mod2 = ["acc_pointer_IR","acc_flashlight"];
		_e_mod3 = ["optic_tws","optic_ARCO","optic_Holosight","optic_Aco","optic_NVS"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Pistol_heavy_01_MRD_F"];
		_e_side_mag = [[["11Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles", "Rangefinder"] + _standartMed;
		_e_back = ["tf_rt1523g","B_AssaultPack_mcamo","B_Carryall_cbr","B_Carryall_mcamo","B_Kitbag_cbr","B_Kitbag_mcamo"];
	};
	case "SPN_AR": { // Recon - Automatic Rifleman
		_e_prim = ["LMG_Mk200_F"];
		_e_prim_mag = [
			[["200Rnd_65x39_cased_Box", 3],["200Rnd_65x39_cased_Box_Tracer", 1], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2]]
		];
		_e_mod1 = ["muzzle_snds_H_MG"];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_tws_mg","optic_ARCO","optic_Holosight","optic_Aco"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Pistol_heavy_01_MRD_F"];
		_e_side_mag = [[["11Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass","ItemGPS", "ItemMap", "ItemWatch", "NVGoggles","Binocular", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["B_AssaultPack_mcamo","B_Carryall_cbr","B_Carryall_mcamo","B_Kitbag_cbr","B_Kitbag_mcamo"];
	};
	case "SPN_AT": { // Recon - Rifleman (AT)
		_e_prim = ["arifle_MXC_F","arifle_MX_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_mag", 8],["30Rnd_65x39_caseless_mag_Tracer", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2]],
			[["30Rnd_65x39_caseless_mag", 8],["30Rnd_65x39_caseless_mag_Tracer", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2]]
		];
		_e_mod1 = ["muzzle_snds_H"];
		_e_mod2 = ["acc_pointer_IR","acc_flashlight"];
		_e_mod3 = ["optic_Holosight","optic_Aco"];
		_e_sec = ["launch_NLAW_F"];
		_e_sec_mag = [[["NLAW_F", 1]]];
		_e_sec_mods = [];
		_e_side = ["hgun_Pistol_heavy_01_MRD_F"];
		_e_side_mag = [[["11Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles","Binocular", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["B_AssaultPack_mcamo","B_Carryall_cbr","B_Carryall_mcamo","B_Kitbag_cbr","B_Kitbag_mcamo"];
	};
	case "SPN_DM": { // Recon - Designated Marksman
		_e_prim = ["srifle_EBR_F"];
		_e_prim_mag = [
			[["20Rnd_762x51_Mag", 10], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2]]
		];
		_e_mod1 = ["muzzle_snds_B"];
		_e_mod2 = ["acc_pointer_IR","acc_flashlight"];
		_e_mod3 = ["optic_tws","optic_ARCO","optic_SOS","optic_NVS"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Pistol_heavy_01_MRD_F"];
		_e_side_mag = [[["11Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS","ItemMap", "ItemWatch", "Rangefinder","NVGoggles"] + _standartMed;
		_e_back = ["B_AssaultPack_mcamo","B_Carryall_cbr","B_Carryall_mcamo","B_Kitbag_cbr","B_Kitbag_mcamo"];
	};
	case "SPN_ES": { // Recon - Explosive Specialist
		_e_prim = ["arifle_MXC_F","arifle_MX_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_mag", 8],["30Rnd_65x39_caseless_mag_Tracer", 2],["DemoCharge_Remote_Mag", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2]],
			[["30Rnd_65x39_caseless_mag", 8],["30Rnd_65x39_caseless_mag_Tracer", 2],["DemoCharge_Remote_Mag", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2]]
		];
		_e_mod1 = ["muzzle_snds_H"];
		_e_mod2 = ["acc_pointer_IR","acc_flashlight"];
		_e_mod3 = ["optic_ARCO","optic_Holosight","optic_Aco","optic_NVS"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Pistol_heavy_01_MRD_F"];
		_e_side_mag = [[["11Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles", "Binocular"] + _standartMed;
		_e_back = ["B_AssaultPack_mcamo","B_Carryall_cbr","B_Carryall_mcamo","B_Kitbag_cbr","B_Kitbag_mcamo"];
	};
	case "SPN_OP": { // Recon - Operator
		_e_prim = ["arifle_MXC_F","arifle_MX_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_mag", 8],["30Rnd_65x39_caseless_mag_Tracer", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2]],
			[["30Rnd_65x39_caseless_mag", 8],["30Rnd_65x39_caseless_mag_Tracer", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2]]
		];
		_e_mod1 = ["muzzle_snds_H"];
		_e_mod2 = ["acc_pointer_IR","acc_flashlight"];
		_e_mod3 = ["optic_ARCO","optic_Holosight","optic_Aco","optic_NVS"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Pistol_heavy_01_MRD_F"];
		_e_side_mag = [[["11Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles","Binocular"] + _standartMed;
		_e_back = ["B_AssaultPack_mcamo","B_Carryall_cbr","B_Carryall_mcamo","B_Kitbag_cbr","B_Kitbag_mcamo"];
	};
	case "SPN_MED": { // Recon - Medic
		_e_prim = ["arifle_MXC_F","arifle_MX_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_mag", 8],["30Rnd_65x39_caseless_mag_Tracer", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2]],
			[["30Rnd_65x39_caseless_mag", 8],["30Rnd_65x39_caseless_mag_Tracer", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2]]
		];
		_e_mod1 = ["muzzle_snds_H"];
		_e_mod2 = ["acc_pointer_IR","acc_flashlight"];
		_e_mod3 = ["optic_ARCO","optic_Holosight","optic_Aco","optic_NVS"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Pistol_heavy_01_MRD_F"];
		_e_side_mag = [[["11Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles","Binocular"] + _extendedMed;
		_e_back = ["B_Carryall_cbr","B_Carryall_mcamo","B_Kitbag_cbr","B_Kitbag_mcamo"];
	};
	case "SPN_JTAC": { // Recon - JTAC
		_e_prim = ["arifle_MXC_F","arifle_MX_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_mag", 8],["30Rnd_65x39_caseless_mag_Tracer", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Laserbatteries",1],["Chemlight_blue",2]],
			[["30Rnd_65x39_caseless_mag", 8],["30Rnd_65x39_caseless_mag_Tracer", 2], ["HandGrenade", 2], ["SmokeShell", 2],["Laserbatteries",1],["Chemlight_blue",2]]
		];
		_e_mod1 = ["muzzle_snds_H"];
		_e_mod2 = ["acc_pointer_IR","acc_flashlight"];
		_e_mod3 = ["optic_ARCO","optic_Holosight","optic_Aco","optic_NVS"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Pistol_heavy_01_MRD_F"];
		_e_side_mag = [[["11Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles","Laserdesignator"] + _standartMed;
		_e_back = ["B_AssaultPack_mcamo","B_Carryall_cbr","B_Carryall_mcamo","B_Kitbag_cbr","B_Kitbag_mcamo"];
	};
// ----------------- Sniper Team ---------------- //	
	case "SNIPER": { // Sniper
		_e_prim = ["srifle_LRR_F"];
		_e_prim_mag = [
			[["7Rnd_408_Mag", 6], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = ["optic_LRPS","optic_SOS"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Pistol_heavy_01_snds_F"];
		_e_side_mag = [[["11Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles", "Binocular", "ACE_EarPlugs"] + _standartMed;
		_e_back = [];
	};
	case "SPOTTER": { // Spotter
		_e_prim = ["srifle_EBR_F"];
		_e_prim_mag = [
			[["20Rnd_762x51_Mag", 9], ["HandGrenade", 2], ["SmokeShell", 2], ["7Rnd_408_Mag", 4],["Chemlight_blue",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_pointer_IR","acc_flashlight"];
		_e_mod3 = ["optic_SOS","optic_ARCO"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Pistol_heavy_01_snds_F"];
		_e_side_mag = [[["11Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles","Rangefinder", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["B_AssaultPack_mcamo","B_Carryall_cbr","B_Carryall_mcamo","B_Kitbag_cbr","B_Kitbag_mcamo"];
	};
	case "SNIPER_AS": { // Sniper Assistant
		_e_prim = ["arifle_MX_GL_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_mag", 8],["30Rnd_65x39_caseless_mag_Tracer", 2], ["1Rnd_HE_Grenade_shell", 6],["1Rnd_SmokePurple_Grenade_shell",2], ["HandGrenade", 2], ["SmokeShell", 2], ["ClaymoreDirectionalMine_Remote_Mag",2],["SLAMDirectionalMine_Wire_Mag",2],["Laserbatteries",1],["Chemlight_blue",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_ARCO","optic_Holosight","optic_Aco"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Pistol_heavy_01_MRD_F"];
		_e_side_mag = [[["11Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS","ItemMap", "ItemWatch", "NVGoggles","Laserdesignator", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["tf_rt1523g","B_AssaultPack_mcamo","B_Carryall_cbr","B_Carryall_mcamo","B_Kitbag_cbr","B_Kitbag_mcamo"];
	};
// ------------------ Other -------------------//	
	case "CREW": { // Crewman
		_e_prim = ["arifle_MXC_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_mag", 6], ["HandGrenade", 2],["SmokeShell", 2],["Chemlight_blue",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["optic_Holosight"];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_P07_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 2]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch","NVGoggles"] + _standartMed;
		_e_back = [];
	};
	case "PILOT": { // Helicopter Pilot / Crew
		_e_prim = ["SMG_01_F"];
		_e_prim_mag = [
			[["30Rnd_45ACP_Mag_SMG_01", 6], ["HandGrenade", 2],["SmokeShellOrange",1],["SmokeShellPurple",1],["SmokeShellGreen",1],["Chemlight_blue",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["optic_Holosight_smg"];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_P07_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 2]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch","NVGoggles"] + _standartMed;
		_e_back = ["B_Parachute"];
	};
	case "PILOT_P": { // Pilot Plane
		_e_prim = ["SMG_01_F"];
		_e_prim_mag = [
			[["30Rnd_45ACP_Mag_SMG_01", 2], ["HandGrenade", 2],["SmokeShellOrange",1],["SmokeShellPurple",1],["SmokeShellGreen",1],["Chemlight_blue",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["optic_Holosight_smg"];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch","NVGoggles"] + _standartMed;
		_e_back = ["B_Parachute"];
	};
	case "UAV_OP": { // UAV Operator
		_e_prim = ["arifle_MX_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_mag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_Holosight", "optic_Aco"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass","B_UavTerminal", "ItemMap", "ItemWatch","NVGoggles"] + _standartMed;
		_e_back = ["B_UAV_01_backpack_F","B_AssaultPack_mcamo"];
	};
	case "SAP": { // Sapper
		_e_prim = ["arifle_MX_F"];
		_e_prim_mag = [
			[["30Rnd_65x39_caseless_mag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2],["ATMine_Range_Mag",1],["APERSMine_Range_Mag",2],["APERSBoundingMine_Range_Mag",2],["SLAMDirectionalMine_Wire_Mag",2],["APERSTripMine_Wire_Mag",4]]
		];
		_e_mod1 = [];
		_e_mod2 = ["acc_flashlight", "acc_pointer_IR"];
		_e_mod3 = ["optic_Holosight", "optic_Aco"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass","ItemGPS", "ItemMap", "ItemWatch","NVGoggles"] + _standartMed;
		_e_back = ["B_Carryall_mcamo","B_Carryall_cbr","B_Kitbag_mcamo","B_Kitbag_cbr"];
	};
};

if (_wrong) then {
	[_e_prim, _e_prim_mag, _e_mod1, _e_mod2, _e_mod3, _e_sec, _e_sec_mag, _e_sec_mods, _e_side, _e_side_mag, _e_items, _e_back, _wrong]
} else {
	[_e_prim, _e_prim_mag, _e_mod1, _e_mod2, _e_mod3, _e_sec, _e_sec_mag, _e_sec_mods, _e_side, _e_side_mag, _e_items, _e_back]
};