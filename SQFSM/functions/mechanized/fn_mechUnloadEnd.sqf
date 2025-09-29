params[
    ["_vehicle",   nil,[objNull]],
    ["_men",       nil,     [[]]],
    ["_menDelay",    0,      [0]],
    ["_waitForMen",nil,   [true]]
];

private _group  = group (_men#0);
private _driver = driver _vehicle;

// indicate we are starting unload
_vehicle setVariable ["SQFM_mechUnloading", true, true];

_group enableAttack true;
_driver enableAI "path";

if (_waitForMen) then {
    // This is synchronous: call will return when activation completes
    [_men,_menDelay] call SQFM_fnc_mechUnloadActivateMen;
    // Now deactivate the flag
    _vehicle setVariable ["SQFM_mechUnloading", false, true];
} else {
    // Spawn the async activation and have it clear the flag when finished.
    [_vehicle, _men, _menDelay] spawn {
        params ["_v","_m","_d"];
        // run activation (non-blocking spawn inside already spawned thread)
        [_m, _d] call SQFM_fnc_mechUnloadActivateMen;
        // clear flag when done
        _v setVariable ["SQFM_mechUnloading", false, true];
    };
};

true;
