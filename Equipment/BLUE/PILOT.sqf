// fact: BLU_F
// desc: Pilot
#include "macros.hpp"
_unit = _this select 0;

REMOVEWPNS();
REMOVEGEAR();

_unit addUniform "usm_bdu_odg";
_unit addVest "FGN_CauR_Tactical_Vest_Khaki";
_unit addHeadgear "CUP_H_BAF_Helmet_Pilot";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemRadio";


_unit addItemToUniform "ACE_Flashlight_MX991";

for "_i" from 1 to 4 do {_unit addItemToVest "RH_6Rnd_454_Mag";};

_unit addWeapon "RH_bull";