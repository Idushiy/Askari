_unit = _this select 0;
_faction = _this select 1;
_loadout = _this select 2;

_AI_processor = {
	_this setBehaviour "CARELESS";
	_this allowFleeing 0;
	_this disableAI "AUTOTARGET";
	_this doWatch objNull;
	_this disableAI "MOVE";
	_this stop true;
	_this setVariable ["BIS_noCoreConversations", true];
	_this disableConversation true;
};

_item_processor = {
	removeAllItems _this;
	removeAllWeapons _this;
	removeAllItemsWithMagazines _this;
	removeAllAssignedItems _this;
	removeUniform _this;
	removeBackpack _this;
	removeHeadgear _this;
	removeVest _this;
	removeGoggles _this;
};

if (!isNull _unit) then
{
	_unit call _AI_processor;
};

if (!isServer) exitWith {};

_unit call _item_processor;

_svn = format ["SerP_equipment_codes_%1_%2",_faction, _loadout];
if (isNil _svn) then
{
	missionNamespace setVariable [_svn, 
		compile preprocessFileLineNumbers format ["Equipment\%1\%2.sqf", _faction, _loadout]];
};

[_unit] call (missionNamespace getVariable [_svn, {}]);