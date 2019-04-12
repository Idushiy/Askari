\
#define GRENADES_STD() \
	ADDITEM("rhs_mag_f1", 2);\
	ADDITEM("rhs_mag_rdg2_white", 2);

#define RANDOM_AKM() \
	_unit addweapon (["rhs_weap_akm","rhs_weap_akms","rhs_weap_m70ab2","rhs_weap_m70b1"] call BIS_fnc_selectRandom);

#define RANDOM_HEAD() \
	_unit addHeadgear (["LOP_H_Turban","LOP_H_Pakol","TRYK_H_pakol2","H_Bandanna_gry","H_ShemagOpen_khk","H_ShemagOpen_tan","H_Shemag_olive","LOP_H_Shemag_BLK","LOP_H_Turban_mask"] call BIS_fnc_selectRandom);


