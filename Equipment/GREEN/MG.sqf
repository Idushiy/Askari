// author: Idushiy
// fact: Takistan
// desc: Пулемётчик
#include "macros.hpp"
_unit = _this select 0;

REMOVEWPNS();
REMOVEGEAR();

RANDOM_HEAD();

_unit forceAddUniform "LOP_U_AM_Fatigue_04";
_unit addVest "LOP_6sh46";
_unit addBackpack "rhs_sidor";
GRENADES_STD();

	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_100Rnd_762x54mmR";};

_unit addWeapon "rhs_weap_pkm";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemRadio";