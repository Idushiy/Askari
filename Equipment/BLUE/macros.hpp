#define ADDITEM(a,b) for "_i" from 1 to b do {_unit addItem a}

#include "faction_packs.hpp"


#define REMOVEWPNS() \
	removeAllItems _unit; \
	removeAllWeapons _unit;\
	removeAllItemsWithMagazines _unit;\
	removeAllAssignedItems _unit;\

#define REMOVEGEAR() \
	removeUniform _unit;\
	removeGoggles _unit;\
	removeHeadgear _unit;\
	removeVest _unit;
