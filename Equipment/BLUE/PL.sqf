// author: Idushiy
// fact: US Army 
// desc: Platoon Leader
#include "macros.hpp"
_unit = _this select 0;

REMOVEWPNS();
REMOVEGEAR();

_unit addHeadgear "usm_bdu_8point_des";
_unit forceAddUniform "usm_bdu_d";
_unit addVest "usm_vest_rba_lbv_rmp";
_unit addBackpack "tf_rt1523g_sage";

	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow";};
	for "_i" from 1 to 3 do {_unit addItemToVest "RH_7Rnd_45cal_m1911";};
GRENADES_STD();

_unit addWeapon "RH_M16A2";
_unit addWeapon "RH_m1911";

_unit addItemToUniform "ACE_Flashlight_MX991";
_unit linkItem "ItemGPS";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemRadio";
_unit addWeapon "Binocular";


