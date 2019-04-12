// author: Idushiy
// fact: US Army 
// desc: Grenadier
#include "macros.hpp"
_unit = _this select 0;

REMOVEWPNS();
REMOVEGEAR();
_unit addHeadgear "usm_helmet_pasgt_g_d";

_unit forceAddUniform "usm_bdu_d";

_unit addVest "usm_vest_pasgtdes_lbe_gr";
	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow";
	for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_M441_HE";};
	for "_i" from 1 to 12 do {this addItemToVest "rhs_mag_M433_HEDP";};
	for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_M585_white";};
	for "_i" from 1 to 3 do {this addItemToVest "rhs_mag_m661_green";};
GRENADES_STD();
_unit addWeapon "RH_M16A2gl";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemRadio";
