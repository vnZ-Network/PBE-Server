 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/5/19
	//		Author:???
	//		TaskName:ITEM-whitechui-12549.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
	
	//--------------------	?????---------------------------
		$mapid = GetPlayerInfo ( -1 , "mapid" )
		$player_x = GetPlayerInfo ( -1 , "mapposx" )
		$player_y = GetPlayerInfo ( -1 , "mapposy" )
		$x = GetPlayerInfo ( -1 , "mapx" )
		$y = GetPlayerInfo ( -1 , "mapy" )

		if $mapid != 90
			BC( "screen", "player", -1, "Stone of Memory is not here!" )
			return
		endif
		//-----------------
		if $player_x < 240
			BC( "screen", "player", -1, "No Stone of Memory to be smashed!" )
			return
		endif
		if $player_x > 256
			BC( "screen", "player", -1, "No Stone of Memory to be smashed!" )
			return
		endif
		if $player_y < 65
			BC( "screen", "player", -1, "No Stone of Memory to be smashed!" )
			return
		endif
		if $player_y > 81
			BC( "screen", "player", -1, "No Stone of Memory to be smashed!" )
			return
		endif
		
		//----???item------
		AddMonster( 30211, 1, 90, $x, $y, 1 )
		BC( "screen", "player", -1, "Osiris's Memory Segment has appeared!" )
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
	}