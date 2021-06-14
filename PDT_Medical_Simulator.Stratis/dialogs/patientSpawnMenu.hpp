// define stuff
#define ST_CENTER 0x02
#define IDD_PDT_MEDICALSIMULATOR_MENU 9985001 // teleport menu IDD
#define IDC_LIST_BOX_01 9985002               // listbox IDC
#define IDC_BUTTON_01 9985003                 // button 01 IDC
#define IDC_BUTTON_02 9985004                 // button 02 IDC
#define IDC_BUTTON_03 9985005                 // button 03 IDC
#define IDC_TOOL_BOX_01 9985006               // toolbox IDC

/*
 *	Author: PDT
 *	defines how the patient menu looks
 *
 *	Arguments:
 *  None
 *
 *	Return Value:
 *	None
 *
 */

class PDT_MedicalSimulator_Menu {
  idd = IDD_PDT_MEDICAL_SIMULATOR_MENU;
  duration = 10e10;
  movingEnable = 0;
  fadein = 0;
  fadeout = 0;
  name = "PDT_MedicalSimulator_Menu";
  onLoad = "uiNamespace setVariable ['PDT_MedicalSimulator_Menu', _this select 0]; call PDT_MedicalSimulator_fnc_lbAdd;";
  objects[] = {};

  class controlsBackground {

		class PDT_RscText_TitleBackground: RscText
		{
      idc = -1;
      shadow = 0;
      type = 0;
      style = 0;
      sizeEx = 0.023;
      text = "";
      font = "PuristaMedium";
      colorBackground[] = {1, 1, 1, 1.0};
      colorText[] = {};
      x = 0.0 * safezoneW + safezoneX;
      y = 0.125 * safezoneH + safezoneY;
      h = 0.035 * safezoneH;
      w = 1 * safezoneW;
      tooltipColorText[] = {1,1,1,1};
      tooltipColorBox[] = {1,1,1,1};
      tooltipColorShade[] = {0,0,0,0.65};
		};
  };

  class controls {
    class PDT_RscListBox_01: RscListBox
    {
      idc = IDC_LIST_BOX_01;
      x = 0.01 * safezoneW + safezoneX;
      y = 0.2 * safezoneH + safezoneY;
      w = 0.15 * safezoneW;
      h = 0.50 * safezoneH;
      color[] = {1,1,1,0.6};
      colorActive[] = {1,1,1,1};
      colorDisabled[] = {1,1,1,0.3};
      arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
      arrowFull = "#(argb,8,8,3)color(1,0.5,0,1)";
      border = "#(argb,8,8,3)color(0,0,0,1)";
      colorSelect[] = {1,1,1,1};
      colorText[] = {1,1,1,0.8};
      soundSelect[] = {"",0.1,1};
      sizeEx = 0.0325;
    };

    class PDT_RscButton_Spawn: RscButton
    {
      idc = IDC_BUTTON_01;
      shadow = 0;
      x = 0.18 * safezoneW + safezoneX;
      y = 0.2 * safezoneH + safezoneY;
      w = 0.1 * safezoneW;
      h = 0.03 * safezoneH;
      colorBackground[] = {0,0,0,0.8};
      colorBackgroundFocused[] = {1,1,1,1};
      colorBackground2[] = {0.75,0.75,0.75,1};
      color[] = {1,1,1,1};
      colorFocused[] = {0,0,0,1};
      colorText[] = {1,1,1,1};
      size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
      sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
      text = "Spawn patient";
      action = "call PDT_MedicalSimulator_fnc_spawnPatient";
      class Attributes
      {
        font = "PuristaLight";
        color = "#E5E5E5";
        align = "center";
        shadow = "false";
      };
    };

    class PDT_RscButton_Clear: RscButton
    {
      idc = IDC_BUTTON_02;
      shadow = 0;
      x = 0.18 * safezoneW + safezoneX;
      y = 0.25 * safezoneH + safezoneY;
      w = 0.1 * safezoneW;
      h = 0.03 * safezoneH;
      colorBackground[] = {0,0,0,0.8};
      colorBackgroundFocused[] = {1,1,1,1};
      colorBackground2[] = {0.75,0.75,0.75,1};
      color[] = {1,1,1,1};
      colorFocused[] = {0,0,0,1};
      colorText[] = {1,1,1,1};
      size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
      sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
      text = "Clear patient";
      action = "call PDT_MedicalSimulator_fnc_clearStretcher";
      class Attributes
      {
        font = "PuristaLight";
        color = "#E5E5E5";
        align = "center";
        shadow = "false";
      };
    };

    class PDT_RscButton_ClearAll: RscButton
    {
      idc = IDC_BUTTON_03;
      shadow = 0;
      x = 0.18 * safezoneW + safezoneX;
      y = 0.3 * safezoneH + safezoneY;
      w = 0.1 * safezoneW;
      h = 0.03 * safezoneH;
      colorBackground[] = {0,0,0,0.8};
      colorBackgroundFocused[] = {1,1,1,1};
      colorBackground2[] = {0.75,0.75,0.75,1};
      color[] = {1,1,1,1};
      colorFocused[] = {0,0,0,1};
      colorText[] = {1,1,1,1};
      size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
      sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
      text = "Clear all patients";
      action = "call PDT_MedicalSimulator_fnc_clearAllStretchers";
      class Attributes
      {
        font = "PuristaLight";
        color = "#E5E5E5";
        align = "center";
        shadow = "false";
      };
    };

    class PDT_RscText_DifficultyText: RscText
    {
      idc = -1;
      shadow = 0;
      type = 0;
      style = 0;
      sizeEx = 0.05;
      text = "Difficulty:";
      font = "PuristaMedium";
      colorBackground[] = {1, 1, 1, 0};
      colorText[] = {1, 1, 1, 1};
      x = 0.01 * safezoneW + safezoneX;
      y = 0.127 * safezoneH + safezoneY;
      h = 0.1 * safezoneH;
      w = 0.1 * safezoneW;
      tooltipColorText[] = {1,1,1,1};
      tooltipColorBox[] = {1,1,1,1};
      tooltipColorShade[] = {0,0,0,0.65};
    };

    class PDT_RscToolbox_Difficulty: RscToolbox
    {
    	onLoad = "_this select 0 ctrlSetChecked [0, true];";

    	idc = IDC_TOOL_BOX_01;
    	style = 2; // ST_CENTER

      x = 0.065* safezoneW + safezoneX;
      y = 0.1665 * safezoneH + safezoneY;
      w = 0.1 * safezoneW;
      h = 0.025 * safezoneH;

    	colorText[] = {1, 1, 1, 1};
    	colorTextSelect[] = {1, 0, 0, 1};

    	colorBackground[] = {0, 0, 0, 0.0};
    	colorSelectedBg[] = {1, 1, 1, 0.0};

    	font = "RobotoCondensed";
    	sizeEx = 0.04;

    	onCheckBoxesSelChanged = "";

    	columns = 3;
    	rows = 1;

    	strings[] = {"1", "2", "3"};
    	checked_strings[] = {"[1]", "[2]", "[3]"};
    	values[] = {0, 1, 2};
    	tooltips[] = {"Easy", "Medium","Hard"};
    };
  };
};
