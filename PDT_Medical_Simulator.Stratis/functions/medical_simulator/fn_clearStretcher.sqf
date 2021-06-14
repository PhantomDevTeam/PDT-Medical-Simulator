// define stuff
#define IDC_LIST_BOX_01 9985002 // listbox IDC

/*
 *	Author: PDT
 *	clears patient from a stretcher
 *
 *	Arguments:
 *  None
 *
 *	Return Value:
 *	None
 *
 */

// listbox of stretchers
private _listbox = (uiNamespace getVariable "PDT_MedicalSimulator_Menu") displayCtrl IDC_LIST_BOX_01;

params [["_stretcher", ""]];

if (_stretcher isEqualTo "") then {
  _stretcher = (_listBox lbData (lbCurSel _listBox));
};

_stretcher = [_stretcher] call PDT_MedicalSimulator_fnc_getObject;

deleteVehicle (_stretcher getVariable ["PDT_MedicalSimulator_Patient", objNull]);

_stretcher setVariable ["PDT_MedicalSimulator_Has_Patient", false, true];
_stretcher setVariable ["PDT_MedicalSimulator_Patient", objNull, true];

[_stretcher] call PDT_MedicalSimulator_fnc_updateButtons;
