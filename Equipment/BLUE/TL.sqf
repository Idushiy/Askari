﻿// author: Idushiy
// fact: US Army 
// desc: Team Leader
#include "macros.hpp"
_unit = _this select 0;

REMOVEWPNS();
REMOVEGEAR();

_unit addHeadgear "usm_helmet_pasgt_g_d";

_unit forceAddUniform "usm_bdu_d";

_unit addVest "usm_vest_pasgtdes_lbe_rm";
	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow";};
	for "_i" from 1 to 9 do {_unit addItemToVest "rhs_mag_M433_HEDP";};
	for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_m714_White";};	
	
GRENADES_STD();

_unit addWeapon "RH_M16A2gl";


_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemRadio";
_unit addWeapon "Binocular";
