/*
 *	Author: PDT
 *	aconverts string to object
 *
 *	Arguments:
 *  0: _stretcher <STRING> - the selected stretcher
 *
 *	Return Value:
 *	0: _stretcher <OBJECT> - stretcher object
 *
 */

params [["_stretcher", ""]];

if (_stretcher isEqualTo "") exitWith {};

// lbData only returns strings so this fixes that
switch (_stretcher) do {
    case "PDT_MedicalSimulator_Stretcher_01": {_stretcher = PDT_MedicalSimulator_Stretcher_01};
    case "PDT_MedicalSimulator_Stretcher_02": {_stretcher = PDT_MedicalSimulator_Stretcher_02};
    case "PDT_MedicalSimulator_Stretcher_03": {_stretcher = PDT_MedicalSimulator_Stretcher_03};
    case "PDT_MedicalSimulator_Stretcher_04": {_stretcher = PDT_MedicalSimulator_Stretcher_04};
    case "PDT_MedicalSimulator_Stretcher_05": {_stretcher = PDT_MedicalSimulator_Stretcher_05};
    case "PDT_MedicalSimulator_Stretcher_06": {_stretcher = PDT_MedicalSimulator_Stretcher_06};
    case "PDT_MedicalSimulator_Stretcher_07": {_stretcher = PDT_MedicalSimulator_Stretcher_07};
    case "PDT_MedicalSimulator_Stretcher_08": {_stretcher = PDT_MedicalSimulator_Stretcher_08};
    case "PDT_MedicalSimulator_Stretcher_09": {_stretcher = PDT_MedicalSimulator_Stretcher_09};
};

_return = _stretcher;
_return
