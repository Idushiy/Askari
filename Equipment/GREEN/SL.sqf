// author: Idushiy
// fact: Takistan
// desc: Командир отделения
#include "macros.hpp"
_unit = _this select 0;

REMOVEWPNS();
REMOVEGEAR();

_unit addHeadgear "LOP_H_Turban";
_unit forceAddUniform "LOP_U_ISTS_Fatigue_02";
_unit addBackpack "rhs_sidor";
_unit addGoggles "TRYK_Beard_BK4";

GRENADES_STD();

_unit addVest "LOP_6sh46";
	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_30Rnd_762x39mm";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_30Rnd_762x39mm_tracer";};


_unit addWeapon "rhs_weap_akm";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemRadio";
_unit addWeapon "Binocular";
