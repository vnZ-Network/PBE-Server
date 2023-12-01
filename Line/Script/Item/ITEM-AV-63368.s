	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/12
	//		Author:???
	//		TaskName:ITEM-AV-63368.s                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
		
		
		$a = 96
		$b = 81
		$mapid = GetPlayerInfo( -1, "mapid" )
		$player_x = GetPlayerInfo ( -1 , "mapposx" )
		$player_y = GetPlayerInfo ( -1 , "mapposy" )
		$x = GetPlayerInfo ( -1 , "mapx" )
		$y = GetPlayerInfo ( -1 , "mapy" )
		$x1 = $a - 4
		$x2 = $a + 4
		$y1 = $b - 4
		$y2 = $b + 4
	
		if $mapid != 188
			BC( "screen", "player", -1, "Available only in Cave of Haze" )
			return
		endif
		if $player_x < $x1
			BC( "screen", "player", -1, "It's not a location described in the map here!" )
			return
		endif
		if $player_x > $x2
			BC( "screen", "player", -1, "It's not a location described in the map here!" )
			return
		endif
		if $player_y < $y1
			BC( "screen", "player", -1, "It's not a location described in the map here!" )
			return
		endif
		if $player_y > $y2
			BC( "screen", "player", -1, "It's not a location described in the map here!" )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" ,63368, 1 )
		if  $info != 0
			return
		endif
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		AddMonster( 32128,1,$mapid,$x,$y,0,-1)
		BC( "screen", "player", -1, "Archlich has been spotted!" )
	}