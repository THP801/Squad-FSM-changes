//Infosharing first test
// potentially useful functions 
//BIS_fnc_diagKnownTargets, BIS_fnc_distance2D, BIS_fnc_distance2Dsqr, BIS_fnc_enemyTargets, BIS_fnc_objectSide, BIS_fnc_objectType, countType, countEnemy, BIS_fnc_dirTo, getRelDir, BIS_fnc_enemyDetected, BIS_fnc_friendlySides, https://community.bistudio.com/wiki/BIS_fnc_threat


//plan: [squad 1, squad 2] call BIS_fnc_distance2D;
// if return >81 then share info



private _distanceSquared = 80 * 80;
if (squad1 distanceSqr squad2 < _distanceSquared) then
{
	hint "units in talking range";
};



private _enemyDetected = [_unit, 500] call BIS_fnc_enemyDetected;

private _targets = _unit call BIS_fnc_enemyTargets;

