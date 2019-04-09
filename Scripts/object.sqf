private ["_obj","_dat","_cString","_adString"];

_obj = objNull;_dat = [];_adString = "CAN_COLLIDE";
_cString = 
{
	_obj = createVehicle [(_dat select 0), [0,0,0], [], 0, _adString];
	_obj setdir (_dat select 2);
	if((_dat select 3) == -100) then
	{
		_obj setposATL (call compile (_dat select 1));
		if((_dat select 5) == 0) then {_obj setVectorUp [0,0,1]} else {_obj setVectorUp (surfacenormal (getPosATL _obj))};
	}
	else
	{
		_obj setposworld [((call compile (_dat select 1)) select 0),((call compile (_dat select 1)) select 1),(_dat select 3)];
		[_obj,((_dat select 7) select 0),((_dat select 7) select 1)] call BIS_fnc_setPitchBank;
	};
	if(count (_dat select 6) > 0) then {{call _x} foreach (_dat select 6)};
	_obj hideobject false;
};

_lString = 
{
	_obj = (_dat select 0) createVehicleLocal (call compile (_dat select 1));
	_obj setdir (_dat select 2);
	if((_dat select 3) == -100) then
	{
		_obj setposATL (call compile (_dat select 1));
		if((_dat select 5) == 0) then {_obj setVectorUp [0,0,1]} else {_obj setVectorUp (surfacenormal (getPosATL _obj))};
	}
	else
	{
		_obj setposworld [((call compile (_dat select 1)) select 0),((call compile (_dat select 1)) select 1),(_dat select 3)];
		[_obj,((_dat select 7) select 0),((_dat select 7) select 1)] call BIS_fnc_setPitchBank;
	};
	if(count (_dat select 6) > 0) then {{call _x} foreach (_dat select 6)};
	_obj allowDamage false;
	_obj hideobject false;
};

_gString = 
{
	_obj = createVehicle [(_dat select 0), [0,0,0], [], 0, _adString];
	_obj setdir (_dat select 2);
	if((_dat select 3) == -100) then
	{
		_obj setposATL (call compile (_dat select 1));
		if((_dat select 5) == 0) then {_obj setVectorUp [0,0,1]} else {_obj setVectorUp (surfacenormal (getPosATL _obj))};
	}
	else
	{
		_obj setposworld [((call compile (_dat select 1)) select 0),((call compile (_dat select 1)) select 1),(_dat select 3)];
		[_obj,((_dat select 7) select 0),((_dat select 7) select 1)] call BIS_fnc_setPitchBank;
	};
	if(count (_dat select 6) > 0) then {{call _x} foreach (_dat select 6)};
	_obj allowDamage false;
	_obj hideobject false;
};


if (isServer) then { 
_dat = ["Land_Cargo_Patrol_V3_F","[8344.546875,10688.40625,-0.0687327]",160.562,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Cargo_HQ_V3_F","[8342.484375,10667.475586,0.97789]",159.455,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_MilOffices_V1_F","[8366.811523,10635.720703,0.159697]",247.662,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Mil_WiredFence_F","[8364.536133,10611.670898,-0.255131]",67.2216,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Mil_WiredFence_F","[8367.556641,10604.520508,-0.254918]",67.2216,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Mil_WiredFence_F","[8370.558594,10597.331055,-0.294041]",67.2216,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Mil_WiredFence_F","[8375.0830078,10595.470703,-0.289311]",-22.5324,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Mil_WiredFence_F","[8384.885742,10599.519531,-0.256701]",-22.5324,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Mil_WiredFence_F","[8386.6875,10604.0107422,-0.254811]",-113.657,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Mil_WiredFence_F","[8383.580078,10611.0888672,-0.256581]",-113.657,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Mil_WiredFence_F","[8380.428711,10618.179688,-0.256686]",246.343,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Cargo_Patrol_V3_F","[8380.648438,10697.334961,-0.0157178]",178.156,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Shed_Small_F","[8394.498047,10676.905273,-0.266438]",68.7556,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Shed_Small_F","[8409.0898438,10640.283203,-0.245381]",249.446,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Cargo_Patrol_V3_F","[8469.484375,10648.959961,-0.248509]",250.733,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Cargo_Patrol_V3_F","[8473.871094,10605.368164,-0.298659]",305.376,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Misc_Cargo1Ao_EP1","[8521.222656,10631.811523,-0.00102234]",26.2369,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Fuel_tank_stairs_ep1","[8413.282227,10635.416992,0]",339.34,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Fuel_tank_stairs_ep1","[8423.148438,10638.973633,0]",339.275,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Cargo_Patrol_V3_F","[8394.983398,10572.540039,-0.318959]",362.437,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Misc_Cargo2A_EP1","[8528.0166016,10640.624023,-0.00360107]",136.394,-100,1,0,[],[0,0],1];call _cString;

_dat = ["Land_CncWall4_F","[8359.522461,10718.610352,-0.153496]",335.721,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncWall4_F","[8346.443359,10712.109375,-0.134079]",335.721,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncWall4_F","[8350.126953,10703.511719,0.0795133]",335.721,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncWall4_F","[8354.865234,10705.611328,-0.247053]",335.721,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncWall4_F","[8362.666016,10698.761719,0.0415609]",335.721,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncWall4_F","[8367.396484,10700.878906,-0.134079]",335.721,-100,1,0,[],[0,0],1];call _cString;


_dat = ["Land_TTowerBig_1_F","[8375.536133,10608.720703,0.574581]",248.192,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncBarrierMedium_F","[8350.463867,10691.325195,0.0970874]",68.7876,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncBarrierMedium4_F","[8380.344727,10679.820313,0.213592]",68.7876,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncBarrierMedium4_F","[8376.739258,10689.0205078,0.213592]",66.8679,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncBarrierMedium4_F","[8373.90332,10695.90625,0.213592]",66.7355,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncWall4_F","[8406.591797,10686.238281,-0.206453]",338.038,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncWall4_F","[8411.475586,10688.134766,-0.20204]",340.289,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncWall1_F","[8414.544922,10689.272461,-0.240953]",340.415,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncWall1_F","[8415.774414,10689.740234,-0.247913]",340.018,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncWall4_F","[8418.0126953,10687.259766,-0.169383]",426.013,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncWall4_F","[8420.160156,10682.487305,-0.0431698]",426.013,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncWall4_F","[8422.217773,10677.712891,-0.0422872]",67.6678,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncWall4_F","[8424.169922,10672.842773,-0.0431698]",68.7929,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncBarrierMedium_F","[8416.234375,10695.738281,0.0970874]",86.0647,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncBarrierMedium_F","[8416.361328,10693.84082,0.0970874]",86.0647,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncBarrierMedium_F","[8425.490234,10667.893555,0.102383]",71.0382,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncWall4_F","[8427.498047,10662.977539,-0.334432]",71.7055,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncWall4_F","[8429.176758,10658.0498047,-0.261175]",71.7055,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncWall4_F","[8430.811523,10653.0390625,-0.247053]",72.0365,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncWall4_F","[8432.374023,10648.0126953,-0.0422872]",73.7576,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncWall4_F","[8425.47168,10642.124023,-0.0608221]",158.554,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncWall4_F","[8430.345703,10644.03125,-0.105835]",159.415,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncWall1_F","[8422.443359,10640.901367,-0.200353]",517.29,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncBarrierMedium_F","[8464.625977,10624.977539,0.102383]",202.172,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncBarrierMedium_F","[8462.874023,10625.691406,0.0494262]",202.172,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncBarrierMedium_F","[8461.455078,10623.212891,0.0494262]",294.052,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncWall4_F","[8405.566406,10581.0253906,-0.143788]",92.6413,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncWall4_F","[8402.693359,10584.135742,-0.260292]",0.562796,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncWall1_F","[8399.777344,10579.256836,-0.144748]",268.329,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_CncWall1_F","[8399.746094,10580.582031,-0.144748]",-91.6713,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Cargo20_military_green_F","[8416.913086,10581.263672,-0.311569]",180.637,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Cargo20_military_green_F","[8424.698242,10581.188477,-0.311569]",181.365,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Cargo20_military_green_F","[8432.287109,10581.0283203,-0.311569]",181.365,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Cargo20_military_green_F","[8443.982422,10645.266602,-0.252434]",249.415,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Cargo20_military_green_F","[8440.577148,10643.916016,-0.225073]",249.415,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Cargo20_military_green_F","[8437.0537109,10642.647461,-0.182708]",249.415,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Cargo20_military_green_F","[8427.519531,10646.873047,-0.0785597]",340.765,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Cargo20_military_green_F","[8426.242188,10650.679688,-0.115629]",340.765,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Cargo20_military_green_F","[8425.0585938,10654.208984,-0.11916]",340.765,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Cargo20_military_green_F","[8423.803711,10657.894531,-0.161525]",340.765,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Army_hut3_long","[8387.612305,10683.462891,-0.285084]",248.054,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_smd_army_hut_int","[8402.0566406,10689.193359,-0.503972]",69.2588,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_smd_army_hut2_int","[8418.208008,10674.498047,-0.329215]",246.028,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_smd_army_hut2_int","[8414.394531,10682.445313,-0.362754]",246.558,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Cargo20_military_green_F","[8351.65332,10650.71875,-0.182708]",336.992,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_Cargo20_military_green_F","[8358.922852,10653.820313,-0.182708]",336.992,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_dp_bigTank_F","[8423.862305,10621.662109,0.246248]",305.018,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_dp_smallTank_F","[8412.942383,10613.369141,0.117387]",285.481,-100,1,0,[],[0,0],1];call _cString;
_dat = ["Land_dp_smallTank_F","[8409.969727,10622.107422,0.117387]",287.798,-100,1,0,[],[0,0],1];call _cString;


};


//local
_dat = ["CUP_A2_OA_dirt1_6konec","[8355.205078,10711.683594,0.0361871]",334.581,-100,1,0,[],[0,0],1];call _lString;
_dat = ["CUP_A2_OA_dirt1_7100","[8351.460938,10720.615234,0]",334.581,-100,1,0,[],[0,0],1];call _lString;
_dat = ["CUP_A2_OA_dirt1_6010","[8348.585938,10732.854492,0]",343.385,-100,1,0,[],[0,0],1];call _lString;
_dat = ["CUP_A2_OA_dirt1_3025","[8357.707031,10740.50293,0]",43.2921,-100,1,0,[],[0,0],1];call _lString;
_dat = ["CUP_A2_OA_dirt1_25","[8374.198242,10746.355469,0]",73.8747,-100,1,0,[],[0,0],1];call _LString;
_dat = ["CUP_A2_OA_dirt1_25","[8398.214844,10753.298828,0]",73.8747,-100,1,0,[],[0,0],1];call _LString;
_dat = ["CUP_A2_OA_dirt1_25","[8422.231445,10760.242188,0]",73.8747,-100,1,0,[],[0,0],1];call _LString;
_dat = ["CUP_A2_OA_dirt1_3025","[8441.734375,10764.50293,0]",73.8747,-100,1,0,[],[0,0],1];call _LString;
_dat = ["Land_CncBarrier_stripes_F","[8429.182617,10769.133789,0]",343.292,-100,1,0,[],[0,0],1];call _LString;
_dat = ["Land_CncBarrier_stripes_F","[8417.135742,10765.829102,0]",343.292,-100,1,0,[],[0,0],1];call _LString;
_dat = ["Land_CncBarrier_stripes_F","[8407.201172,10762.439453,0]",343.292,-100,1,0,[],[0,0],1];call _LString;
_dat = ["Land_CncBarrier_stripes_F","[8395.510742,10759.103516,0]",343.292,-100,1,0,[],[0,0],1];call _LString;
_dat = ["Land_CncBarrier_stripes_F","[8383.807617,10755.75,0]",343.292,-100,1,0,[],[0,0],1];call _LString;
_dat = ["Land_CncBarrier_stripes_F","[8370.84082,10752.147461,0]",343.292,-100,1,0,[],[0,0],1];call _LString;
_dat = ["Land_CncBarrier_stripes_F","[8358.59375,10747.626953,0]",334.952,-100,1,0,[],[0,0],1];call _LString;
_dat = ["Land_CncBarrier_stripes_F","[8346.25,10739.5,0]",303.111,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_CncBarrier_stripes_F","[8345.374023,10719.143555,0]",246.779,-100,1,0,[],[0,0],1];call _LString;
_dat = ["Land_CncBarrier_stripes_F","[8433.499023,10755.258789,0]",-16.7078,-100,1,0,[],[0,0],1];call _LString;
_dat = ["Land_CncBarrier_stripes_F","[8420.160156,10751.65918,0]",343.292,-100,1,0,[],[0,0],1];call _LString;
_dat = ["Land_CncBarrier_stripes_F","[8410.586914,10749.0517578,0]",343.292,-100,1,0,[],[0,0],1];call _LString;
_dat = ["Land_CncBarrier_stripes_F","[8398.430664,10745.666016,0]",-16.7078,-100,1,0,[],[0,0],1];call _LString;
_dat = ["Land_CncBarrier_stripes_F","[8387.56543,10742.161133,0]",-16.7078,-100,1,0,[],[0,0],1];call _LString;
_dat = ["Land_CncBarrier_stripes_F","[8374.488281,10739.808594,0]",343.292,-100,1,0,[],[0,0],1];call _LString;
_dat = ["Land_CncBarrier_stripes_F","[8362.483398,10735.511719,0]",315.225,-100,1,0,[],[0,0],1];call _LString;
_dat = ["Land_CncBarrier_stripes_F","[8357.160156,10724.935547,0]",256.113,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_CncBarrier_stripes_F","[8341.926758,10730.185547,0]",271.801,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_CncBarrierMedium_F","[8357.393555,10674.25293,0.0229479]",68.7876,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_CncBarrierMedium4_F","[8364.136719,10657.624023,0.213592]",68.7876,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_CncBarrierMedium4_F","[8361.354492,10664.504883,0.213592]",68.7876,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_CncBarrierMedium_F","[8358.750977,10670.637695,0.0361871]",68.7876,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier5","[8469.527344,10613.177734,0.0361871]",30.3098,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier3","[8473.482422,10610.942383,0.127096]",211.713,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier1","[8465.27832,10615.452148,0.0934747]",208.933,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier5","[8477.109375,10608.119141,0.0873787]",39.18,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier3","[8479.850586,10603.0146484,0.112092]",270.892,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier1","[8479.271484,10600.667969,0.202036]",304.255,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier3","[8477.169922,10599.539063,0.127979]",341.722,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier1","[8479.569336,10605.470703,0.202036]",161.007,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier3","[8473.717773,10599.874023,0.0997351]",208.734,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier5","[8469.856445,10602.251953,0.0282436]",34.4801,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier5","[8465.120117,10605.365234,-0.0370697]",34.4801,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier1","[8460.27832,10608.389648,0.151727]",117.318,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceLong","[8416.8125,10569.780273,1.28915]",135.025,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceEnd","[8477.742188,10600.0546875,1.38377]",147.694,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceRound","[8479.0117188,10601.338867,1.4227]",302.631,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceEnd","[8479.382813,10603.0361328,1.38377]",268.992,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceEnd","[8476.115234,10599.571289,1.38377]",21.7897,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceShort","[8474.921875,10599.962891,1.32279]",203.536,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceLong","[8472.735352,10600.925781,1.32]",206.318,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceShort","[8470.803711,10602.0966797,1.32279]",219.092,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceEnd","[8469.736328,10602.608398,1.32993]",196.878,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceLong","[8467.349609,10604.424805,1.16115]",212.077,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceEnd","[8465.674805,10605.326172,1.32993]",214.949,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceEnd","[8468.727539,10603.446289,1.32993]",65.3462,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceLong","[8475.705078,10608.884766,1.32]",218.895,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceEnd","[8474.126953,10609.961914,1.38377]",208.925,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceEnd","[8477.205078,10607.714844,1.38377]",21.7897,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceLong","[8471.34668,10611.982422,1.23794]",210.952,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceEnd","[8469.586914,10612.717773,1.18871]",186.352,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier1","[8419.230469,10575.376953,0.151727]",179.741,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier3","[8417.288086,10569.589844,0.136805]",311.934,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier1","[8418.55957,10571.689453,0.171144]",187.817,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier5","[8413.263672,10567.737305,0.112092]",348.474,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier5","[8407.5,10567.0605469,0.159753]",-1.06715,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier5","[8401.726563,10566.932617,0.164166]",-1.06715,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier5","[8395.993164,10567.251953,0.164166]",7.80311,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier3","[8391.463867,10568.204102,0.120918]",20.711,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier3","[8388.463867,10570.0410156,0.187114]",49.507,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier1","[8387.142578,10572.123047,0.159671]",66.0822,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier3","[8387.197266,10574.540039,0.0812004]",88.695,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier1","[8387.201172,10576.9375,0.0943576]",88.9198,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceCorner","[8387.485352,10577.0166016,1.19483]",262.119,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceEnd","[8387.302734,10576.0703125,1.12869]",83.4182,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceEnd","[8415.395508,10568.657227,1.28485]",161.617,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceEnd","[8418.138672,10571.120117,1.19401]",291.869,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceShort","[8404.491211,10567.461914,1.27008]",179.97,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceEnd","[8403.230469,10567.519531,1.22836]",197.694,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceEnd","[8405.750977,10567.576172,1.19401]",348.665,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceLong","[8398.697266,10567.464844,1.32004]",182.355,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceLong","[8395.102539,10567.90332,1.43302]",187.717,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceEnd","[8396.818359,10567.644531,1.22836]",191.538,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceLong","[8392.168945,10568.358398,1.30945]",196.124,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceEnd","[8400.568359,10567.463867,1.22836]",358.153,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceEnd","[8390.374023,10568.930664,1.16834]",216.891,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceShort","[8387.924805,10571.575195,1.27008]",248.814,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceEnd","[8387.494141,10572.81543,1.16834]",259.124,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_BagFenceEnd","[8388.59668,10570.546875,1.22042]",404.623,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier5","[8466.489258,10658.208984,0.263901]",343.708,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier5","[8460.943359,10656.688477,0.203001]",343.708,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier5","[8441.301758,10649.831055,0.205649]",339.67,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier5","[8435.995117,10647.694336,0.177405]",337.949,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier3","[8447.609375,10652.474609,0.185218]",341.987,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_HBarrier1","[8455.977539,10655.137695,0.202036]",249.908,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_IronPipes_F","[8539.571289,10627.374023,0.0661958]",79.6607,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_Pipes_large_F","[8523.722656,10631.178711,0]",117.392,-100,1,0,[],[0,0],1];call _lString;
_dat = ["Land_Pipes_large_F","[8523.961914,10635.632813,0]",50.6669,-100,1,0,[],[0,0],1];call _lString;
