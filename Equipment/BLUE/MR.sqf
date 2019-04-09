// author: Idushiy
// fact: US Army 
// desc: Marksman
#include "macros.hpp"
_unit = _this select 0;

REMOVEWPNS();
REMOVEGEAR();
_unit addHeadgear "usm_bdu_boonie_des";

_unit forceAddUniform "usm_bdu_d";

_unit addVest "usm_vest_pasgtdes_lbe_mg";
	for "_i" from 1 to 6 do {_unit addItemToVest "rhsusf_20Rnd_762x51_m118_special_Mag";};
	for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_20Rnd_762x51_m62_Mag";};
	for "_i" from 1 to 3 do {_unit addItemToVest "RH_7Rnd_45cal_m1911";};
	_unit addItemToVest "ACE_RangeCard";
GRENADES_STD();
_unit addWeapon "hlc_rifle_m14dmr";
_unit addPrimaryWeaponItem "hlc_optic_LRT_m14";
_unit addWeapon "RH_m1911";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemRadio";
