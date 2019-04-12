// author: Idushiy
// fact: Takistan
// desc: Помощник пулемётчика
#include "macros.hpp"
_unit = _this select 0;

REMOVEWPNS();
REMOVEGEAR();

RANDOM_HEAD();


_unit forceAddUniform "LOP_U_TAK_Civ_Fatigue_04";

_unit addBackpack "rhs_sidor";
	
_unit addVest "LOP_6sh46";
GRENADES_STD();
	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_30Rnd_762x39mm";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_30Rnd_762x39mm_tracer";};



	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_100Rnd_762x54mmR";};

RANDOM_AKM();

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemRadio";
_unit addWeapon "Binocular";