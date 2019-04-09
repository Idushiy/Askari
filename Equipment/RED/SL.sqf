
// fact: SPN
// desc: Командир отделения
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

_unit addHeadgear "rhs_fieldcap_ml";
_unit forceAddUniform "rhs_uniform_m88_patchless";
_unit addVest "rhs_6b23_ML_6sh92_radio";
_unit addBackpack "tf_mr3000_multicam";

	for "_i" from 1 to 3 do {_unit addItemToUniform "ACE_quikclot";};
	for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
	for "_i" from 1 to 3 do {_unit addItemToUniform "ACE_elasticBandage";};
	for "_i" from 1 to 3 do {_unit addItemToUniform "ACE_packingBandage";};
	for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_morphine";};
	for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_epinephrine";};
	for "_i" from 1 to 1 do {_unit addItemToUniform "ACE_tourniquet";};

	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rgd5";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_rdg2_white";};


	for "_i" from 1 to 4 do {_unit addItemToVest "rhs_30Rnd_762x39mm";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_30Rnd_762x39mm_tracer";};

	for "_i" from 1 to 2 do {_unit addItemToVest "RH_8Rnd_9x18_Mak";};
	
 _unit addWeapon "rhs_weap_akm";
	_unit addPrimaryWeaponItem "rhs_acc_1p29";
 _unit addWeapon "RH_mak";
	_unit addHandgunItem "RH_pmsd";
	
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemRadio";
_unit addWeapon "Binocular";


