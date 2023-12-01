	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/01
	//		Author:???(??,??,??)
	//		TaskName:???479??????NPC????
	//		TaskID:DXLM2-JGNPC-Leishe-642.s
	//
	//****************************************
	
	function OnRequest(){

	//???????????
	$is_done = GetEctypeVar(-1, 22)
	if $is_done == 1
		DisableNpcOption(0)
		return
	endif
		
}
	
	function OnOption0(){

	$Ectype_ID = GetEctypeID(-1, 479)	

//	//??????????,????,???????
//	$headerID = GetTeamHeaderID( -1 )
//	$playerid = GetPlayerID()
//	if $playerid != $headerID
//		BC( "screen", "player", -1, "GUID:04029000000" )
//		return
//	endif
//
//	$size = GetTeamAreaSize(-1)
//	if $size > 10
//		BC( "screen", "player", -1, "GUID:04029000001" )
//		return
//	endif
	
	//????????
	DeleteMonster($Ectype_ID, 51807)
	BC( "screen", "map", $Ectype_ID, "Skysupreme Thunderdragon is bound. You can pass now.")

	//??NPC??
	DeleteNPC(642, -1)
	AddNPC(687, -1)
	PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
	
	//??????	
	SetEctypeVar(-1, 22, 1)
	
	
}