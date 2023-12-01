	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479NPC??
	//		TaskID:DXLM2-NPC-Yuntian-585.s
	//
	//****************************************





	function OnRequest(){		
		
}

  //??????
	function OnOption0(){
		
	//??????????,????,???????

			$headerID = GetTeamHeaderID( -1 )
			$playerid = GetPlayerID()
			if $playerid != $headerID
				BC( "dialogbox", "player", -1, "You are not a leader. I want no more words from you!" )
				return
			endif

			$size = GetTeamAreaSize(-1)
			if $size > 10
				BC( "dialogbox", "player", -1, "It is a strange place. Take care of each other." )
				return
			endif

	//????NPC??9?	
	AddNPC(-1, 598 )
	AddNPC(-1, 599 )
	AddNPC(-1, 600 )
	AddNPC(-1, 601 )
	AddNPC(-1, 602 )
	AddNPC(-1, 603 )
	AddNPC(-1, 604 )
	AddNPC(-1, 605 )
	AddNPC(-1, 606 )			

	//????
	OpenMask(12, -1)
	
}
	
	function OnOption1(){
		
	//??????????,????,???????

	$headerID = GetTeamHeaderID( -1 )
	$playerid = GetPlayerID()
		if $playerid != $headerID
			BC( "dialogbox", "player", -1, "You are not the Party Leader!" )
			return
		endif

	//??????
	$dif = GetEctypeVar(-1, 1)
	
	//???????
//	if $dif == 1
//		AddPlayerInfo(-1, "item", ??????ID, 1)
//		AddPlayerInfo(-1, "item", ?????ID, 1)
//		BC( "screen", "player", -1, "GUID:04044000003")
//		BC( "screen", "player", -1, "GUID:04044000004")
//	endif

	//???????	
//	if $dif == 2
//		$teamplayer1_id = GetTeamMemberID( -1, 0 )
//		$teamplayer2_id = GetTeamMemberID( -1, 1 )
//		$teamplayer3_id = GetTeamMemberID( -1, 2 )
//		$teamplayer4_id = GetTeamMemberID( -1, 3 )
//		$teamplayer5_id = GetTeamMemberID( -1, 4 )
//		$teamplayer6_id = GetTeamMemberID( -1, 5 )
//			AddPlayerInfo($teamplayer1_id, "item", ??????ID, 1)
//			AddPlayerInfo($teamplayer2_id, "item", ??????ID, 1)
//			AddPlayerInfo($teamplayer3_id, "item", ??????ID, 1)
//			AddPlayerInfo($teamplayer4_id, "item", ??????ID, 1)
//			AddPlayerInfo($teamplayer5_id, "item", ??????ID, 1)
//			AddPlayerInfo($teamplayer6_id, "item", ??????ID, 1)
//			AddPlayerInfo($teamplayer1_id, "item", ?????ID, 1)
//			AddPlayerInfo($teamplayer2_id, "item", ?????ID, 1)
//			AddPlayerInfo($teamplayer3_id, "item", ?????ID, 1)
//			AddPlayerInfo($teamplayer4_id, "item", ?????ID, 1)
//			AddPlayerInfo($teamplayer5_id, "item", ?????ID, 1)
//			AddPlayerInfo($teamplayer6_id, "item", ?????ID, 1)			
//			BC( "screen", "map", -1, "GUID:04044000005")
//	endif
//	
}
			