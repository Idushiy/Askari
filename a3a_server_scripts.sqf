// Серверные скрипты
// Выполняются после инициализации платформы
// Отличное место чтобы разместить какие-нибудь условия победы/поражения в миссии
// Например: waitUntil { sleep 1; a3a_var_started }; ["60 minutes have passed, NATO wins", 3600] spawn a3a_fnc_endMissionTimer;
// Или: waitUntil { sleep 1; a3a_var_started }; [[["marker1", "ZONE 1 NAME", 1, 1], ["marker2", "ZONE 2 NAME", 1, 1]], 0, true, "UNKNOWN"] spawn a3a_fnc_endMissionZonesCapture;

car1 setHitPointDamage ["HitLFWheel", 1.0];
car1 setHitPointDamage ["HitRFWheel", 1.0];



flags = [flag1];
aliveKo = [ko_1, ko_2, ko_3, ko_4, ko_5, ko_6];

{
	_x setVariable ["controledBy", west, true];
	//_x setFlagTexture "img\usa.jpg";
} forEach flags;


[] spawn {
 waitUntil { sleep 10; a3a_var_started};

			if (alive ko_1) then {
					if (({_x in list home} count [ko_1]) == 1) then {
					{deleteMarker _x} forEach ["a_1"];
					sleep 2;
					  if (playerSide == west) then {
					  ["<t color='#fafc97' size = '.8'>Штаб на базе",0.9,-0.15,4,1,0,789] spawn BIS_fnc_dynamicText;
					};
			};
	};

  while {isNil "srv_triggerFinished"} do {
    private _countKo = {_x in list home} count aliveKo;
    private _countFlags = {(_x getVariable 'controledBy' == independent )} count flags;
    if (_countFlags == 1 && _countKo == 0 ) then{
      srv_triggerFinished = true;
      [" <t color='#fafc97'>Все командиры на базе мертвы и развивается флаг Талибана!.", independent] call a3a_fnc_endMission;
  };
   sleep 6;
    };
};


vent = false;
doc = false;
[] spawn {
 waitUntil { sleep 10; a3a_var_started};
   while {isNil "srv_triggerFinished"} do {
      if (doc && vent) then {
      srv_triggerFinished = true;
        ["<t color='#fafc97'>Русские справились с задачей!", east] call a3a_fnc_endMission;
    };
    sleep 5;
  };
   sleep 5;
};

