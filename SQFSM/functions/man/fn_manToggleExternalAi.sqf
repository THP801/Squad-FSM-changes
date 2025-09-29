params [
    ["_man", objNull, [objNull]],
    // explicit: pass true to enable external AI handling (i.e., not excluded)
    ["_enableExternalAI", true, [true]]
];

if (_man isEqualTo objNull) exitWith { false };

private _excluded = !_enableExternalAI;

private _vars = [
    "lambs_danger_disableAI",
    "SFSM_Excluded",
    "SQFM_externalAiExcluded"
];

{
    // only set if current value differs
    private _cur = _man getVariable [_x, nil];
    if ((_cur isEqualTo nil) || (_cur != _excluded)) then {
        // third arg true if you need this variable broadcast to all machines
        _man setVariable [_x, _excluded, true];
    };
} forEach _vars;

true;
