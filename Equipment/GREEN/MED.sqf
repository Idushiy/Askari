﻿// author: Idushiy
// fact: Takistan
// desc: Медик
#include "macros.hpp"
_unit = _this select 0;

REMOVEWPNS();
REMOVEGEAR();

RANDOM_HEAD();


_unit forceAddUniform "LOP_U_TAK_Civ_Fatigue_02";

GRENADES_STD();

_unit addVest "LOP_6sh46";
	for "_i" from 1 to 5 do {_unit addItemToVest "rhs_30Rnd_762x39mm";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_30Rnd_762x39mm_tracer";};
	
_unit addBackpack "usm_pack_m5_medic";
if (isserver) then {clearAllItemsFromBackpack _unit;};

RANDOM_AKM();

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemRadio";