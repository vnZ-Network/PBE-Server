	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479NPC??584
	//		TaskID:DXLM-CSNPC-Feier-584.s
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
	
	AddNPC(-1, 585)
	AddNPC(-1, 597)
//	MapPlayerFlyToMap(-1, -1,  ,  ,)		
	
}