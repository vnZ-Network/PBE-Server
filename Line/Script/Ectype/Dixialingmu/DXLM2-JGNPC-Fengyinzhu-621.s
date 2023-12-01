	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479??NPC??????
	//		TaskID:DXLM2-JGNPC-Fengyinzhu-621.s
	//
	//****************************************

	function OnRequest(){

	//???????????
	$is = GetEctypeVar(-1, 15)
	if $is == 1
		DisableNpcOption(0)
	endif
	
	}	
	
	function OnOption0(){

	//??????????,????,???????
	$team = IsPlayerInTeam(-1)
		if $team == -1
			BC( "screen", "player", -1, "Please form a party first." )
			return
		endif

	$headerID = GetTeamHeaderID( -1 )
	$playerid = GetPlayerID()
		if $playerid != $headerID
			BC( "screen", "player", -1, "You are not the Party Leader!" )
			return
		endif

	$size = GetTeamAreaSize(-1)
		if $size > 10
			BC( "screen", "player", -1, "Your party members are too far away from you. It is dangerous to go alone!" )
			return
		endif
	
	//??BOSS????
	//??????
	$dif = GetEctypeVar(-1, 1)
//	$ectype = GetEctypeID(-1, $mapid )
	
	//???????
	if $dif == 1
//		AddLevelMonster( 51800,$monsterstatusID,$level, 1,$ectype,$mapX,$mapY,$mapR)
		BC( "screen", "map", -1, "The Sealed Beast who guards the Seal Pillar appears.")
	endif
	
	if $dif == 2
//		AddLevelMonster( 51800,$monsterstatusID,$level, 1,$ectype,$mapX,$mapY,$mapR)
		BC( "screen", "map", -1, "The Sealed Beast who guards the Seal Pillar appears.")
	endif

}