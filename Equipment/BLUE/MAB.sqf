// author: Idushiy
// fact: US Army 
// desc: Machinegunner Ammo Bearer
#include "macros.hpp"
_unit = _this select 0;

REMOVEWPNS();
REMOVEGEAR();
_unit addHeadgear "usm_helmet_pasgt_d";

_unit forceAddUniform "usm_bdu_d";

_unit addVest "usm_vest_pasgtdes_lbe_rm";
	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
	_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow";
	_unit addItemToVest "ACE_EarPlugs";
GRENADES_STD();
_unit addBackpack "usm_pack_762x51_ammobelts";
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhsusf_100Rnd_762x51";};

_unit addWeapon "RH_M16A2";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemRadio";