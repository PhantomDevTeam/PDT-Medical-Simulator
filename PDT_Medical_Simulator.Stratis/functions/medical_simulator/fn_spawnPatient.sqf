// define stuff
#define IDC_LIST_BOX_01 9985002 // listbox IDC
#define IDC_TOOL_BOX_01 9985006 // toolbox IDC

/*
 *	Author: PDT
 *	spawns a patient
 *
 *	Arguments:
 *  1: _difficulty <NUMBER> - difficulty of the patient.
 *
 *	Return Value:
 *	None
 *
 */

params [["_difficulty", 0]];

// listbox of stretchers
private _listbox = (uiNamespace getVariable "PDT_MedicalSimulator_Menu") displayCtrl IDC_LIST_BOX_01;

// difficulty toolbox
private _toolbox = (uiNamespace getVariable "PDT_MedicalSimulator_Menu") displayCtrl IDC_TOOL_BOX_01;

_difficulty = _toolbox lbValue (lbCurSel _toolbox);

// current stretcher
private _stretcher = (_listBox lbData (lbCurSel _listBox));

_stretcher = [_stretcher] call PDT_MedicalSimulator_fnc_getObject;

_stretcher setVariable ["PDT_MedicalSimulator_Has_Patient", true, true];

private _patient = (createGroup West) createUnit["B_Soldier_unarmed_F", [0,0,0], [], 0, "NONE"];
removeAllWeapons _patient;
removeUniform _patient;
removeVest _patient;
removeHeadgear _patient;
removeAllItems _patient;
removeAllAssignedItems _patient;
_patient switchMove "AinjPpneMstpSnonWnonDnon";
_patient setPos (getPos _stretcher);
[_patient, _difficulty] call PDT_MedicalSimulator_fnc_damagePatient;
[_patient, true, round(random 300), true] call ace_medical_fnc_setUnconscious;

_stretcher setVariable ["PDT_MedicalSimulator_Patient", _patient, true];

[_stretcher] call PDT_MedicalSimulator_fnc_updateButtons;
