/* fn_manToggleExternalAi.sqf
   params:
     _man - unit to toggle
     _enableExternalAI - true = enable external AI (so unit is excluded from FSM)
*/
params [
    ["_man", objNull, [objNull]],
    // Explicit: true => external AI *enabled* (we mark unit as excluded from FSM)
    ["_enableExternalAI", true, [true]]
];

if (_man isEqualTo objNull) exitWith { false };

// excluded when external AI is enabled
private _excluded = _enableExternalAI;

private _vars = [
    "lambs_danger_disableAI",
    "SFSM_Excluded",
    "SQFM_externalAiExcluded"
];

{
    private _cur = _man getVariable [_x, nil];
    if ((_cur isEqualTo nil) || (_cur != _excluded)) then {
        // third param true if other machines rely on this being public
        _man setVariable [_x, _excluded, true];
    };
} forEach _vars;
