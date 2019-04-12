// author: Idushiy
// fact: Takistan
// desc: Старший стрелок
#include "macros.hpp"
_unit = _this select 0;


REMOVEWPNS();
REMOVEGEAR();


RANDOM_HEAD();


_unit forceAddUniform "LOP_U_AM_Fatigue_03";
_unit addVest "LOP_6sh46";
GRENADES_STD();


	for "_i" from 1 to 5 do {_unit addItemToVest "rhs_30Rnd_762x39mm";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_30Rnd_762x39mm_tracer";};
	for "_i" from 1 to 10 do {_unit addItemToVest "rhs_VOG25";};

_unit addWeapon "rhs_weap_akm_gp25";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemRadio";
_unit addWeapon "Binocular";