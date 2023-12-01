 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/3/09
	//		Author:???
	//		TaskName:ITEM-xiaochouyinjian-12354.s
	//		TaskID:115 ????
	//****************************************
	
	function OnUseItem(){
	
	//--------------------	????---------------------------

		$mapid = 153
		$player_mapid = GetPlayerInfo ( -1 , "mapid" )
		$player_x = GetPlayerInfo ( -1 , "mapx" )
		$player_y = GetPlayerInfo ( -1 , "mapy" )
		$a = $player_x
		$b = $player_x + 1
		$c = $player_x - 1
		$e = $player_y + 1
		$f = $player_y - 1
	//-----????-----
		if $player_mapid != $mapid
			BC( "screen", "player", -1, "The Clown Seal is not available here." )
			return
		endif
		if $player_x < 43
			BC( "screen", "player", -1, "The Clown Seal is available at a specific location." )
			return
		endif
		if $player_x > 45
			BC( "screen", "player", -1, "The Clown Seal is available at a specific location." )
			return
		endif
		if $player_y < 53
			BC( "screen", "player", -1, "The Clown Seal is available at a specific location." )
			return
		endif
		if $player_y > 55
			BC( "screen", "player", -1, "The Clown Seal is available at a specific location." )
			return
		endif
		AddMonster (30031,1,153,$a,$f,0)
		AddMonster (30032,1,153,$c,$e,0)
		AddMonster (30033,1,153,$b,$e,0)
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		BC( "screen", "player", -1, "The Trio of Clowns has been summoned!" )
	}