// Standard object definitions:
scope = 2;                                                                // Editor visibility; 2 will show it in the menu, 1 will hide it.
displayName      = "Transport Spawner";                                     // Name displayed in the menu
icon             = "\A3\ui_f\data\map\markers\military\pickup_CA.paa"; // Map icon. Delete this entry to use the default icon.
category         = "SQFSM_modules";
canSetArea       = 0;
canSetAreaHeight = 0;
canSetAreaShape  = 0;

function           = "";    // Name of function triggered once conditions are met
functionPriority   = 0;    // Execution priority, modules with lower number are executed first. 0 is used when the attribute is undefined
isGlobal           = 0;   // 0 for server only execution, 1 for global execution, 2 for persistent global execution
isTriggerActivated = 0;  // 1 for module waiting until all synced triggers are activated
isDisposable       = 1; // 1 if modules is to be disabled once it is activated (i.e. repeated trigger activation won't work)
is3DEN             = 0;// 1 to run init function in Eden Editor as well
// curatorInfoType = "RscDisplayAttributeModuleNuke"; // Menu displayed when the module is placed or double-clicked on by Zeus

