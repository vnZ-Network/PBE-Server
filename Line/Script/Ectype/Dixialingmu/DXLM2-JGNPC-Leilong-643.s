	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/01
	//		Author:???(??,??,??)
	//		TaskName:???479??????NPC????
	//		TaskID:DXLM2-JGNPC-Leishe-643.s
	//
	//****************************************
	
	function OnRequest(){
	//???????????
	$is_done = GetEctypeVar(-1, 23)
	if $is_done == 1
		DisableNpcOption(0)
		return
	endif
		
}
	
	function OnOption0(){

	$Ectype_ID = GetEctypeID(-1, 479)	
		
//	//??????????,????,???????
//	$team = IsPlayerInTeam(-1)
//	if $team == -1
//		BC( "screen", "player", -1, "GUID:04028000000" )
//		return
//	endif
//
//	$headerID = GetTeamHeaderID( -1 )
//	$playerid = GetPlayerID()
//	if $playerid != $headerID
//		BC( "screen", "player", -1, "GUID:04028000001" )
//		return
//	endif
//
//	$size = GetTeamAreaSize(-1)
//	if $size > 10
//		BC( "screen", "player", -1, "GUID:04028000002" )
//		return
//	endif
	
	//????????
	DeleteMonster($Ectype_ID, 51808)	
	BC( "screen", "map", $Ectype_ID, "Trigger Thunderdragon has been activated. Skysupreme Thunderdragon is bound. You can pass now.")
	BC( "chat", "team", -1, "Skysupreme Thunderdragon is bound. You can pass now.")	

	//??NPC??
	DeleteNPC(643, -1)
	AddNPC(686, -1)
	PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )

	
	//??????	
	SetEctypeVar(-1, 23, 1)
	
	
}