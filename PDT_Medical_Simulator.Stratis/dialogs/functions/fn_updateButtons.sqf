// define stuff
#define IDC_BUTTON_01 9985003 // button 01 IDC
#define IDC_BUTTON_02 9985004 // button 02 IDC
#define IDC_BUTTON_03 9985005 // button 03 IDC

/*
 *	Author: PDT
 *	updates dialog buttons
 *
 *	Arguments:
 *  0: _stretcher <OBJECT> - the selected stretcher
 *
 *	Return Value:
 *	None
 *
 */

params [["_stretcher", ""]];

if (_stretcher isEqualTo "") exitWith {};

_stretcher = [_stretcher] call PDT_MedicalSimulator_fnc_getObject;

// if the stretcher has patient
private _hasPatient     = _stretcher getVariable["PDT_MedicalSimulator_Has_Patient", false];

// button to spawn patient
private _spawnButton    = (uiNamespace getVariable "PDT_MedicalSimulator_Menu") displayCtrl IDC_BUTTON_01;

// button to clear patient
private _clearButton    = (uiNamespace getVariable "PDT_MedicalSimulator_Menu") displayCtrl IDC_BUTTON_02;

// button to clear all patients
private _clearAllButton = (uiNamespace getVariable "PDT_MedicalSimulator_Menu") displayCtrl IDC_BUTTON_03;

if (_hasPatient) then {
  _spawnButton ctrlEnable false;
  _clearButton ctrlEnable true;
} else {
  _spawnButton ctrlEnable true;
  _clearButton ctrlEnable false;
};
