// ARMA3.RU Mission Template
enableSaving [false, false];

if (!isDedicated) then {
	waitUntil {!(isNull player)};
	player addEventHandler ["inventoryOpened","_nul=execVM 'script.sqf'"];
};



//Подключение вкладки Условности миссии в брифинге
player createDiaryRecord ["diary", ["Условности миссии", loadFile "A3A_BRIEFING\briefing_MISSC.html"]];

// Init modules
#include "a3a_modules.hpp"
{
	[] execVM "A3A_MODULES\" + _x + "\init.sqf";
} forEach A3A_MODULES;

//Подключение скрипта выдачи медицины
0 = execVM "add_med.sqf";

//Четкость прориросовки контуров границ на поверхности высот
setTerrainGrid 2;



// Учим людей стягивать и натягивать флаги.
if (!isDedicated) then {
	waitUntil {!(isNull player)};
  [] execVM "scripts\actions.sqf";
};

//Запуск всех построенных объектов
[] execVM "scripts\object.sqf";


//Время на миссию 60*60; 1 час
if (isServer) then {
	[] spawn {
		waitUntil { sleep 10; a3a_var_started};
		_missionEndTime = 60*60;
		_srv_gameStart = diag_tickTime;
		while {isNil "srv_triggerFinished"} do {
			if (((diag_tickTime - _srv_gameStart) > _missionEndTime)) then {
				srv_triggerFinished = true;
				["<t  color='#fafc97'>Время вышло. База осталась под контролем Американцев.", west] call a3a_fnc_endMission;
			};
		};
	};
};


// подсчитывает потери
[] spawn {
	waitUntil { sleep 10; a3a_var_started};
		//if (independent countside playableUnits < 5) then {[" <t color='#fafc97'>Талибы разбиты! База под контролем!", west] call a3a_fnc_endMission;};
		//if (west countside playableUnits < 1) then {[" <t color='#fafc97'>Американцы разбиты! База беззащитна", independent] call a3a_fnc_endMission;};
		false
};

//приветствие после фриз-тайма
waitUntil{sleep 28; a3a_var_started};
["Серьезные игры","Аскари", "Где-то в жарких странах"] spawn BIS_fnc_infoText;