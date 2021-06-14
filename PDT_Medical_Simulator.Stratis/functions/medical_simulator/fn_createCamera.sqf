// import stuff
#include "..\macros.hpp" // import macros

//define stuff
#define IDD_PDT_MEDICALSIMULATOR_MENU 9985001 // simulator menu IDD
/*
 *	Author: PDT
 *	creates the view camera
 *
 *	Arguments:
 *  None
 *
 *	Return Value:
 *	None
 *
 * example:
 * call PDT_MedicalSimulator_fnc_createCamera;
 */

private _cameraInfo = GETCFGVALUE("cameraInfo"); // camera position and target

if (_cameraInfo isEqualTo []) exitWith {};

private _cameraPosition = getMarkerPos [_cameraInfo select 0, true];
private _cameraTarget   = getMarkerPos [_cameraInfo select 1, true];

private _camera = "camera" camCreate (_cameraPosition);
_camera cameraEffect ["INTERNAL","BACK"];
_camera camPrepareFOV 0.700;
_camera camPrepareTarget (_cameraTarget);
_camera camCommitPrepared 0;

uiSleep 1; // wait a second before closing; gives time for the display to load
waitUntil {!dialog};
_camera cameraEffect ["terminate", "back"];
camDestroy _camera;
