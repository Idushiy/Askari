// author: Idushiy
// fact: People of Takistan
// desc: Снайпер
#include "macros.hpp"
_unit = _this select 0;

REMOVEWPNS();
REMOVEGEAR();

RANDOM_HEAD();

_unit forceAddUniform "LOP_U_AM_Fatigue_03";
_unit addVest "LOP_6sh46";
GRENADES_STD();
	for "_i" from 1 to 3 do {_unit addItem "RH_8Rnd_762_tt33";};

	for "_i" from 1 to 8 do {_unit addItemToVest "rhsgref_10Rnd_792x57_m76";};

_unit addWeapon "rhs_weap_m76";
_unit addPrimaryWeaponItem "rhs_acc_pso1m2";
_unit addWeapon "RH_tt33";
_unit addWeapon "Binocular";


_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit addWeapon "Binocular";