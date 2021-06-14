// import stuff
#include "..\..\functions\macros.hpp" // import macros

// define stuff
#define ST_CENTER 0x02
#define IDD_PDT_MEDICALSIMULATOR_MENU 9985001 // simulator menu IDD
#define IDC_LIST_BOX_01 9985002               // listbox IDC
#define IDC_TOOL_BOX_01 9985006               // toolbox IDC

/*
 *	Author: PDT
 *	adds items to a lisbox
 *
 *	Arguments:
 *  None
 *
 *	Return Value:
 *  None
 *
 */

// the listbox
private _listbox = (uiNamespace getVariable "PDT_MedicalSimulator_Menu") displayCtrl IDC_LIST_BOX_01;

// locations
private _stretchers = GETCFGVALUE("stretchers");

if (_stretchers isEqualTo []) exitWith {};

//add the items to the dropdown menu
{
	_item = _listBox lbAdd (_x select 0);
	_listBox lbSetData [_item, (_x select 1)];
} forEach _stretchers;

_listBox lbSetCurSel 0;


//add lbSelChanged eventhandlers
private _lbSelChanged = _listBox ctrlAddEventHandler ["LBSelChanged",
	{
	  params ["_control", "_selectedIndex"];
		[_control, _selectedIndex] call PDT_MedicalSimulator_fnc_lbSelChanged;
	}
];

[] spawn PDT_MedicalSimulator_fnc_createCamera;
