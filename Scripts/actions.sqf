_flags = [flag1];
if (playerside == independent) then
{
	{
		[_x,
		"Поднять флаг Талибан",
		"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_takeOff2_ca.paa",
		"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_takeOff2_ca.paa",
		"(((_this distance _target) < 5) && ((_target getVariable 'controledBy') != independent))",
		"((_this distance _target) < 5)",
		{[_target, 0] call BIS_fnc_animateFlag},
		{},
		{_target setVariable ["controledBy", independent, true]; [_target, "ca\ca_e\data\flag_tkm_co.paa"] remoteExec ["setFlagTexture", _target]; [_target, 1] call BIS_fnc_animateFlag},
		{[_target, 1] call BIS_fnc_animateFlag;},
		[],13,0,false,false] call BIS_fnc_holdActionAdd;
	} forEach _flags;
}
else
{
	{
		[_x,
		"Поднять флаг США",
		"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_takeOff2_ca.paa",
		"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_takeOff2_ca.paa",
		"(((_this distance _target) < 5) && ((_target getVariable 'controledBy') != west))",
		"((_this distance _target) < 5)",
		{[_target, 0] call BIS_fnc_animateFlag},
		{},
		{_target setVariable ["controledBy", west, true]; [_target, "img\usa.jpg"] remoteExec ["setFlagTexture", _target]; [_target, 1] call BIS_fnc_animateFlag},
		{[_target, 1] call BIS_fnc_animateFlag;},
		[],13,0,false,false] call BIS_fnc_holdActionAdd;
	} forEach _flags;
};
