// US ARMY EQUIPMENT
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
	case "USAR_UNARMED": {
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
// ------------------ PLATOON HEADQUARTERS ------------------ //
	case "RAT": { // RATELO
		_e_prim = ["rhs_weap_m4a1_grip","rhs_weap_m4a1"];
		_e_prim_mag = [
			[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2],["ACE_HandFlare_Red",2]],
			[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2],["ACE_HandFlare_Red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["RH_peq2","RH_peq2_top","RH_peq15","RH_peq15_top"];
		_e_mod3 = ["rhsusf_acc_compm4","RH_eotech553","rhsusf_acc_EOTECH"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles"] + _standartMed;
		_e_back = ["tf_rt1523g_rhs", "rhsusf_assault_eagleaiii_ocp","rhsusf_assault_eagleaiii_ucp"];
	};
	case "FO": { // Forward Observer
		_e_prim = ["rhs_weap_m4a1_grip","rhs_weap_m4a1"];
		_e_prim_mag = [
			[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2],["Laserbatteries",2],["ACE_HandFlare_Red",2]],
			[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2],["Laserbatteries",2],["ACE_HandFlare_Red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["RH_peq2","RH_peq2_top","RH_peq15","RH_peq15_top"];
		_e_mod3 = ["rhsusf_acc_ACOG3","rhsusf_acc_ACOG2","rhsusf_acc_ACOG"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles","Laserdesignator"] + _standartMed;
		_e_back = ["rhsusf_assault_eagleaiii_ocp","rhsusf_assault_eagleaiii_ucp"];
	};
// ------------------ Infantry squad ------------------------ //	
	case "SL": { // Squad Leader
		_e_prim = ["rhs_weap_m4a1_grip","rhs_weap_m4a1"];
		_e_prim_mag = [
			[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 6],["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 3], ["HandGrenade", 2], ["SmokeShell", 2],["SmokeShellRed", 1],["SmokeShellGreen", 1],["Chemlight_blue",2],["ACE_HandFlare_Red",2]],
			[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 6],["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 3], ["HandGrenade", 2], ["SmokeShell", 2],["SmokeShellRed", 1],["SmokeShellGreen", 1],["Chemlight_blue",2],["ACE_HandFlare_Red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["RH_peq2","RH_peq2_top","RH_peq15","RH_peq15_top"];
		_e_mod3 = ["rhsusf_acc_ACOG3","rhsusf_acc_ACOG2","rhsusf_acc_ACOG"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_P07_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles", "Rangefinder","ACE_MapTools"] + _standartMed;
		_e_back = ["tf_rt1523g_rhs", "rhsusf_assault_eagleaiii_ocp","rhsusf_assault_eagleaiii_ucp"];
	};
	case "TL": { // Team Leader
		_e_prim = ["rhs_weap_m4a1_grip","rhs_weap_m4a1"];
		_e_prim_mag = [
			[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 6],["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 3], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2],["ACE_HandFlare_Red",2],["ACE_M84",2]],
			[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 6],["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 3], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2],["ACE_HandFlare_Red",2],["ACE_M84",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["RH_peq2","RH_peq2_top","RH_peq15","RH_peq15_top"];
		_e_mod3 = ["rhsusf_acc_ACOG3","rhsusf_acc_ACOG2","rhsusf_acc_ACOG"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles", "Binocular","ACE_MapTools","ACE_CableTie"] + _standartMed;
		_e_back = ["rhsusf_assault_eagleaiii_ocp","rhsusf_assault_eagleaiii_ucp"];
	};
	case "GL": { // Grenadier
		_e_prim = ["rhs_m4a1_m320"];
		_e_prim_mag = [
			[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8],["rhs_mag_M433_HEDP",6],["rhs_mag_M713_red",2],["HandGrenade", 2],["SmokeShell", 2],["Chemlight_blue",2],["ACE_HandFlare_Red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["RH_peq2","RH_peq2_top","RH_peq15","RH_peq15_top"];
		_e_mod3 = ["rhsusf_acc_compm4","RH_eotech553","rhsusf_acc_EOTECH"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles"] + _standartMed;
		_e_back = ["rhsusf_assault_eagleaiii_ocp","rhsusf_assault_eagleaiii_ucp"];
	};
    case "AR": { // Automatic Rifleman
		_e_prim = ["rhs_weap_m249_pip"];
		_e_prim_mag = [
			[["rhsusf_100Rnd_556x45_soft_pouch", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2],["ACE_HandFlare_Red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["RH_peq2","RH_peq15"];
		_e_mod3 = ["rhsusf_acc_ELCAN","RH_eotech553"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["rhsusf_assault_eagleaiii_ocp","rhsusf_assault_eagleaiii_ucp"];
	};
	case "AT": { // Rifleman (AT)
		_e_prim = ["rhs_weap_m4a1_grip","rhs_weap_m4a1"];
		_e_prim_mag = [
			[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2],["ACE_HandFlare_Red",2]],
			[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2],["ACE_HandFlare_Red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["RH_peq2","RH_peq2_top","RH_peq15","RH_peq15_top"];
		_e_mod3 = ["rhsusf_acc_compm4","RH_eotech553","rhsusf_acc_EOTECH"];
		_e_sec = ["rhs_weap_M136"];
		_e_sec_mag = [[["rhs_m136_mag", 1]]];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["rhsusf_assault_eagleaiii_ocp","rhsusf_assault_eagleaiii_ucp"];
	};
	case "RM": { // Rifleman
		_e_prim = ["rhs_weap_m4a1_grip","rhs_weap_m4a1"];
		_e_prim_mag = [
			[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2],["ACE_HandFlare_Red",2]],
			[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2],["ACE_HandFlare_Red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["RH_peq2","RH_peq2_top","RH_peq15","RH_peq15_top"];
		_e_mod3 = ["rhsusf_acc_compm4","RH_eotech553","rhsusf_acc_EOTECH"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles"] + _standartMed;
		_e_back = ["rhsusf_assault_eagleaiii_ocp","rhsusf_assault_eagleaiii_ucp"];
	};
	case "DM": { // Designated Marksman
		_e_prim = ["rhs_weap_m14ebrri"];
		_e_prim_mag = [
			[["20Rnd_762x51_Mag", 6], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2],["ACE_HandFlare_Red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["RH_peq2","RH_peq15"];
		_e_mod3 = ["rhsusf_acc_LEUPOLDMK4","rhsusf_acc_ACOG3","rhsusf_acc_ACOG2","rhsusf_acc_ACOG"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_P07_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "Binocular","NVGoggles"] + _standartMed;
		_e_back = ["rhsusf_assault_eagleaiii_ocp","rhsusf_assault_eagleaiii_ucp"];
	};	
// -------------------- Weapons Squad ---------------//
	case "MG": { // Machinegunner m240
		_e_prim = ["rhs_weap_m240B"];
		_e_prim_mag = [
			[["rhsusf_100Rnd_762x51", 4], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2],["ACE_HandFlare_Red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = ["rhsusf_acc_ELCAN"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["rhsusf_assault_eagleaiii_ocp","rhsusf_assault_eagleaiii_ucp"];
	};
	case "MGA": { // Machinegunner Assistant
		_e_prim = ["rhs_weap_m4a1_grip","rhs_weap_m4a1"];
		_e_prim_mag = [
			[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2],["ACE_HandFlare_Red",2],["rhsusf_100Rnd_762x51",5]],
			[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2],["ACE_HandFlare_Red",2],["rhsusf_100Rnd_762x51",5]]
		];
		_e_mod1 = [];
		_e_mod2 = ["RH_peq2","RH_peq2_top","RH_peq15","RH_peq15_top"];
		_e_mod3 = ["rhsusf_acc_compm4","RH_eotech553","rhsusf_acc_EOTECH"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles", "Binocular", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["rhsusf_assault_eagleaiii_ocp","rhsusf_assault_eagleaiii_ucp"];
	};
	case "ATT": { // Rifleman (Javelin)
		_e_prim = ["rhs_weap_m4a1_grip","rhs_weap_m4a1"];
		_e_prim_mag = [
			[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2],["ACE_HandFlare_Red",2]],
			[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2],["ACE_HandFlare_Red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["RH_peq2","RH_peq2_top","RH_peq15","RH_peq15_top"];
		_e_mod3 = ["rhsusf_acc_compm4","RH_eotech553","rhsusf_acc_EOTECH"];
		_e_sec = ["rhs_weap_fgm148"];
		_e_sec_mag = [[["rhs_fgm148_magazine_AT", 1]]];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch", "NVGoggles", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["rhsusf_assault_eagleaiii_ocp","rhsusf_assault_eagleaiii_ucp"];
	};
// ------------------ Medic Squad ------------------//
	case "MED_SL": { // EMERG. CARE SGT.
		_e_prim = ["rhs_weap_m4a1_grip","rhs_weap_m4a1"];
		_e_prim_mag = [
			[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 4],["Chemlight_blue",2],["ACE_HandFlare_Red",2]],
			[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 4],["Chemlight_blue",2],["ACE_HandFlare_Red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["RH_peq2","RH_peq2_top","RH_peq15","RH_peq15_top"];
		_e_mod3 = ["rhsusf_acc_ACOG3","rhsusf_acc_ACOG2","rhsusf_acc_ACOG"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles", "Binocular","ACE_MapTools"] + _extendedMed;
		_e_back = ["tf_rt1523g_rhs","rhsusf_assault_eagleaiii_ocp","rhsusf_assault_eagleaiii_ucp"];
	};
	case "MED": { // Combat Medic
		_e_prim = ["rhs_weap_m4a1_grip","rhs_weap_m4a1"];
		_e_prim_mag = [
			[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 4],["Chemlight_blue",2],["ACE_HandFlare_Red",2]],
			[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 4],["Chemlight_blue",2],["ACE_HandFlare_Red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["RH_peq2","RH_peq2_top","RH_peq15","RH_peq15_top"];
		_e_mod3 = ["rhsusf_acc_compm4","RH_eotech553","rhsusf_acc_EOTECH"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch","NVGoggles"] + _extendedMed;
		_e_back = ["rhsusf_assault_eagleaiii_ocp","rhsusf_assault_eagleaiii_ucp"];
	};
// ------------------ Sniper Team -------------//
	case "SNP_H": { // Heavy Sniper
		_e_prim = ["srifle_LRR_camo_F"];
		_e_prim_mag = [
			[["7Rnd_408_Mag", 6], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2],["ACE_HandFlare_Red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = [];
		_e_mod3 = ["optic_SOS","optic_LRPS"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Pistol_heavy_01_snds_F"];
		_e_side_mag = [[["11Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "Binocular", "NVGoggles", "ACE_EarPlugs"] + _standartMed;
		_e_back = [];
	};
	case "SNP": { // Sniper
		_e_prim = ["rhs_weap_m14ebrri"];
		_e_prim_mag = [
			[["20Rnd_762x51_Mag", 9], ["HandGrenade", 2], ["SmokeShell", 2], ["7Rnd_408_Mag", 4],["Chemlight_blue",2],["ACE_HandFlare_Red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["RH_peq2","RH_peq15"];
		_e_mod3 = ["rhsusf_acc_LEUPOLDMK4","rhsusf_acc_LEUPOLDMK4_2","rhsusf_acc_ACOG3","rhsusf_acc_ACOG2","rhsusf_acc_ACOG"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Pistol_heavy_01_snds_F"];
		_e_side_mag = [[["11Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles","Rangefinder","ACE_MapTools"] + _standartMed;
		_e_back = ["rhsusf_assault_eagleaiii_ocp","rhsusf_assault_eagleaiii_ucp"];
	};
	case "SNP_AS": { // Sniper Assistant
		_e_prim = ["rhs_m4a1_m320"];
		_e_prim_mag = [
			[["rhs_mag_30Rnd_556x45_M855A1_Stanag",6],["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",3],["rhs_mag_M433_HEDP",6],["rhs_mag_M713_red",2],["HandGrenade", 2],["SmokeShell", 2],["ClaymoreDirectionalMine_Remote_Mag",2],["SLAMDirectionalMine_Wire_Mag",2],["Laserbatteries",1],["Chemlight_blue",2],["ACE_HandFlare_Red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["RH_peq2","RH_peq2_top","RH_peq15","RH_peq15_top"];
		_e_mod3 = ["rhsusf_acc_ACOG3","rhsusf_acc_ACOG2","rhsusf_acc_ACOG"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_Pistol_heavy_01_MRD_F"];
		_e_side_mag = [[["11Rnd_45ACP_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles", "Laserdesignator", "ACE_MapTools", "ACE_EarPlugs"] + _standartMed;
		_e_back = ["tf_rt1523g_rhs","rhsusf_assault_eagleaiii_ocp","rhsusf_assault_eagleaiii_ucp"];
	};
// ------------------ Other -------------------//	
	case "CREW": { // Crewman
		_e_prim = ["rhs_weap_m4a1"];
		_e_prim_mag = [
			[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 6], ["HandGrenade", 2],["SmokeShell", 2],["Chemlight_blue",2],["ACE_HandFlare_Red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["RH_eotech553"];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch", "NVGoggles"] + _standartMed;
		_e_back = [];
	};
	case "PILOT": { // Helicopter Pilot / Crew
		_e_prim = ["rhs_weap_m4a1"];
		_e_prim_mag = [
			[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 6], ["HandGrenade", 2],["SmokeShellOrange",1],["SmokeShellPurple",1],["SmokeShellGreen",1],["Chemlight_blue",2],["ACE_HandFlare_Red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["RH_eotech553"];
		_e_mod3 = [];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = ["hgun_P07_F"];
		_e_side_mag = [[["16Rnd_9x21_Mag", 3]]];
		_e_items = ["ItemCompass", "ItemGPS", "ItemMap", "ItemWatch","NVGoggles"] + _standartMed;
		_e_back = [];
	};
	case "PILOT_P": { // Pilot Plane
		_e_prim = ["SMG_01_F"];
		_e_prim_mag = [
			[["30Rnd_45ACP_Mag_SMG_01", 2], ["HandGrenade", 2],["SmokeShellOrange",1],["SmokeShellPurple",1],["SmokeShellGreen",1],["Chemlight_blue",2],["ACE_HandFlare_Red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["RH_eotech553_smg"];
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
		_e_prim = ["rhs_weap_m4a1_grip"];
		_e_prim_mag = [
			[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2],["ACE_HandFlare_Red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["RH_peq2","RH_peq2_top","RH_peq15","RH_peq15_top"];
		_e_mod3 = ["rhsusf_acc_compm4","RH_eotech553","rhsusf_acc_EOTECH"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass","B_UavTerminal", "ItemMap", "ItemWatch","NVGoggles"] + _standartMed;
		_e_back = ["B_UAV_01_backpack_F","rhsusf_assault_eagleaiii_ocp","rhsusf_assault_eagleaiii_ucp"];
	};
	case "AA": { // Rifleman (AA) (Titan Launcher)
		_e_prim = ["rhs_weap_m4a1_grip","rhs_weap_m4a1"];
		_e_prim_mag = [
			[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2],["ACE_HandFlare_Red",2]],
			[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2],["ACE_HandFlare_Red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["RH_peq2","RH_peq2_top","RH_peq15","RH_peq15_top"];
		_e_mod3 = ["rhsusf_acc_compm4","RH_eotech553","rhsusf_acc_EOTECH"];
		_e_sec = ["rhs_weap_fim92"];
		_e_sec_mag = [[["rhs_fim92_mag", 1]]];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass", "ItemMap", "ItemWatch","NVGoggles"] + _standartMed;
		_e_back = ["rhsusf_assault_eagleaiii_ocp","rhsusf_assault_eagleaiii_ucp"];
	};
	case "SAP": { // Sapper
		_e_prim = ["rhs_weap_m4a1_grip"];
		_e_prim_mag = [
			[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2],["ATMine_Range_Mag",1],["APERSMine_Range_Mag",2],["APERSBoundingMine_Range_Mag",2],["SLAMDirectionalMine_Wire_Mag",2],["APERSTripMine_Wire_Mag",4],["ACE_HandFlare_Red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["RH_peq2","RH_peq2_top","RH_peq15","RH_peq15_top"];
		_e_mod3 = ["rhsusf_acc_compm4","RH_eotech553","rhsusf_acc_EOTECH"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass","ItemGPS", "ItemMap", "ItemWatch","NVGoggles","ACE_Clacker","ACE_DefusalKit"] + _standartMed;
		_e_back = ["B_Carryall_mcamo","B_Carryall_cbr","B_Kitbag_mcamo","B_Kitbag_cbr"];
	};
	case "ENG": { // Engineer
		_e_prim = ["rhs_weap_m4a1_grip"];
		_e_prim_mag = [
			[["rhs_mag_30Rnd_556x45_M855A1_Stanag", 8], ["HandGrenade", 2], ["SmokeShell", 2],["Chemlight_blue",2],["ACE_HandFlare_Red",2]]
		];
		_e_mod1 = [];
		_e_mod2 = ["RH_peq2","RH_peq2_top","RH_peq15","RH_peq15_top"];
		_e_mod3 = ["rhsusf_acc_compm4","RH_eotech553","rhsusf_acc_EOTECH"];
		_e_sec = [];
		_e_sec_mag = [];
		_e_sec_mods = [];
		_e_side = [];
		_e_side_mag = [];
		_e_items = ["ItemCompass","ItemGPS", "ItemMap", "ItemWatch","NVGoggles","ToolKit"] + _standartMed;
		_e_back = ["rhsusf_assault_eagleaiii_ocp","rhsusf_assault_eagleaiii_ucp"];
	};
};

if (_wrong) then {
	[_e_prim, _e_prim_mag, _e_mod1, _e_mod2, _e_mod3, _e_sec, _e_sec_mag, _e_sec_mods, _e_side, _e_side_mag, _e_items, _e_back, _wrong]
} else {
	[_e_prim, _e_prim_mag, _e_mod1, _e_mod2, _e_mod3, _e_sec, _e_sec_mag, _e_sec_mods, _e_side, _e_side_mag, _e_items, _e_back]
};