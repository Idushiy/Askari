// author: Idushiy
// fact: US Army 
// desc: Platoon Sergeant
#include "macros.hpp"
_unit = _this select 0;

REMOVEWPNS();
REMOVEGEAR();

_unit addHeadgear "usm_bdu_boonie_des";
_unit forceAddUniform "usm_bdu_d";
_unit addVest "usm_vest_pasgtdes_lbv_rm";

	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
	_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow";

	for "_i" from 1 to 3 do {_unit addItemToVest "RH_7Rnd_45cal_m1911";};
	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_M433_HEDP";};
GRENADES_STD();


_unit addWeapon "RH_M16A2gl";
_unit addWeapon "RH_m1911";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemRadio";
_unit addWeapon "Binocular";