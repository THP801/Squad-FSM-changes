params [
    ["_man", objNull, [objNull]],
    // If true => enable external AI (so excluded == false)
    ["_enableExternalAI", true, [true]]
];

if (_man isEqualTo objNull) exitWith { false };

// excluded = true when external AI is NOT enabled
private _excluded = !_enableExternalAI;

// Only set variables when they actually change (optimization below shows this)
_man setVariable ["lambs_danger_disableAI",  _excluded, true];
_man setVariable ["SFSM_Excluded",           _excluded, true];
_man setVariable ["SQFM_externalAiExcluded", _excluded, true];

true;
