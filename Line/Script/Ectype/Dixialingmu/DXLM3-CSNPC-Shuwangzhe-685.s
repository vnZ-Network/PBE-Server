	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479??NPC???
	//		TaskID:DXLM-CSNPC-Shuwangzhe-685.s
	//
	//****************************************

	function OnRequest(){
		
	}	
	
	function OnOption0(){

	//??????????,????,???????
	$team = IsPlayerInTeam(-1)
		if $team == -1
			BC( "dialogbox", "player", -1, "Please form a party first." )
			return
		endif

	$headerID = GetTeamHeaderID( -1 )
	$playerid = GetPlayerID()
		if $playerid != $headerID
			BC( "dialogbox", "player", -1, "You are not the Party Leader!" )
			return
		endif

	$size = GetTeamAreaSize(-1)
		if $size > 10
			BC( "dialogbox", "player", -1, "Your party members are too far away!" )
			return
		endif
	
//	MapPlayerFlyToMap( 479, 479, $mapX, $mapY)	
	
}