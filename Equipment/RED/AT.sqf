
// fact: SPN
// desc: Стрелок РПГ
#include "macros.hpp"
_unit = _this select 0;
removeallassigneditems _unit;
removeallWeapons _unit;
removeallItems _unit;
removeBackpack _unit;
removeUniform _unit;
removeVest _unit;
removeHeadgear _unit;
removeGoggles _unit;

_unit addHeadgear "H_Bandanna_sand";

_unit forceAddUniform "rhs_uniform_m88_patchless";
	for "_i" from 1 to 3 do {_unit addItemToUniform "ACE_quikclot";};
	for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
	for "_i" from 1 to 3 do {_unit addItemToUniform "ACE_elasticBandage";};
	for "_i" from 1 to 3 do {_unit addItemToUniform "ACE_packingBandage";};
	for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
	for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_epinephrine";};
	for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_tourniquet";};

_unit addVest "rhs_6b23_ML_6sh92";

	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rgd5";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rdg2_white";};
	for "_i" from 1 to 4 do {_unit addItemToVest "rhs_30Rnd_762x39mm";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_30Rnd_762x39mm_tracer";};
	
_unit addBackpack "rhs_sidor";
	for "_i" from 1 to 1 do {_unit addItemToBackpack "rhs_weap_rshg2";};
	
_unit addWeapon "rhs_weap_akm";
_unit addWeapon "rhs_weap_rpg26";
	
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemRadio";
