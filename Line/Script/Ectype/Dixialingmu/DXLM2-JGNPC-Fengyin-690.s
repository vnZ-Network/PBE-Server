	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479??NPC?????
	//		TaskID:DXLM2-JGNPC-Fengyin-690.s
	//
	//****************************************

	function OnRequest(){

	//???????????
	$is = GetEctypeVar(-1, 14)
	if $is == 1
		DisableNpcOption(0)
	endif
	
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

	//????????
	AddNPC(-1, 621)
	PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
	
	//??????????1
	SetEctypeVar(-1, 14, 1)	
	
}