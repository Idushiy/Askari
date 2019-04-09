// author: Idushiy
// fact: Takistan
// desc: Стрелок РПК
#include "macros.hpp"
_unit = _this select 0;

REMOVEWPNS();
REMOVEGEAR();

RANDOM_HEAD();


_unit forceAddUniform "LOP_U_AM_Fatigue_01";

GRENADES_STD();

_unit addVest "LOP_6sh46";
	for "_i" from 1 to 5 do {_unit addItemToVest "rhs_pzn_75Rnd_762x39mm_89";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_pzn_75Rnd_762x39mm_tracer";};

_unit addWeapon "rhs_pzn_weap_rpk";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemRadio";