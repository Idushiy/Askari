// author: Idushiy
// fact: US Army 
// desc: Machinegunner
#include "macros.hpp"
_unit = _this select 0;

REMOVEWPNS();
REMOVEGEAR();
_unit addHeadgear "usm_helmet_pasgt_g_d";

_unit forceAddUniform "usm_bdu_d";

_unit addVest "usm_vest_pasgtdes_lbe_mg";
	for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_100Rnd_762x51";};
GRENADES_STD();
_unit addWeapon "rhs_weap_m240G";
_unit addBackpack "usm_pack_762x51_ammobelts";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemRadio";
_unit addWeapon "Binocular";