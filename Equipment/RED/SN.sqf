// author: Andy
// fact: SPN
// desc: Снайпер
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

_unit addHeadgear "H_Booniehat_tan";

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
	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_10Rnd_762x54mmR_7N1";};
	for "_i" from 1 to 2 do {_unit addItemToVest "RH_8Rnd_9x18_Mak";};
	
_unit addWeapon "rhs_weap_svdp_wd";
	_unit addPrimaryWeaponItem "rhs_acc_pso1m2";
	_unit addPrimaryWeaponItem "rhs_acc_tgpv";
_unit addWeapon "RH_mak";
	_unit addHandgunItem "RH_pmsd";
	
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemRadio";
_unit addWeapon "Binocular";


