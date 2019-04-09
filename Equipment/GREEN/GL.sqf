// author: Idushiy
// fact: Takistan
// desc: Стрелок ГП
#include "macros.hpp"
_unit = _this select 0;

REMOVEWPNS();
REMOVEGEAR();

RANDOM_HEAD();


_unit forceAddUniform "LOP_U_TAK_Civ_Fatigue_04";

GRENADES_STD();

_unit addVest "LOP_6sh46";
	for "_i" from 1 to 5 do {_unit addItemToVest "rhs_30Rnd_762x39mm";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_30Rnd_762x39mm_tracer";};

_unit addBackpack "rhs_sidor";	
	for "_i" from 1 to 16 do {_unit addItemToBackpack "rhs_VOG25";};
	for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_VG40OP_white";};
	
_unit addWeapon "rhs_weap_akm_gp25";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemRadio";