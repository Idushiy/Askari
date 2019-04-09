// author: Idushiy
// fact: Takistan
// desc: Полевой командир
#include "macros.hpp"
_unit = _this select 0;

REMOVEWPNS();
REMOVEGEAR();


_unit addHeadgear "LOP_H_Turban";
_unit addGoggles "TRYK_Beard_BK4";

_unit forceAddUniform "LOP_U_UA_Fatigue_02";

GRENADES_STD();

_unit addVest "TAC_Jvest_B2O";
	for "_i" from 1 to 5 do {_unit addItemToVest "rhs_30Rnd_762x39mm";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_30Rnd_762x39mm_tracer";};
	for "_i" from 1 to 10 do {_unit addItemToVest "rhs_VOG25";};
	
_unit addWeapon "rhs_weap_akm_gp25";

_unit addBackpack "tf_anprc155";

_unit linkItem "ItemGPS";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemRadio";
_unit addWeapon "Binocular";
