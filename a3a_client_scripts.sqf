// Клиентские скрпты, выполняются после инициализации платформы

///подсчитываем дистанцию от маркера и наличие предмета у персонажа
doc = false;
while {isNil "srv_triggerFinished1"} do {
  if (("tu_decoration_log" in (items player)) && {(player distance (markerPos "place")) > 5}) then {
     //["<t color='#fafc97' size = '.9'>Документы вынесли",] spawn BIS_fnc_dynamicText;
     doc = true;
     publicVariable "doc";
     srv_triggerFinished1 = true;
  };
  sleep 5;
};

//подсчитываем уничтоженные вентили
vent = false;
while {isNil "srv_triggerFinished2"} do {
  if ((!alive v0) && (!alive v1)&& (!alive v2)&& (!alive v3)&& (!alive v4)&& (!alive v5)&& (!alive v6)) then {
     //["<t color='#fafc97' size = '.9'>Все вентили уничтожены"] spawn BIS_fnc_dynamicText;
     vent = true;
     publicVariable "vent";
     srv_triggerFinished2 = true;
  };
  sleep 5;
};
