	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/06
	//		Author:???
	//		TaskName:ITEM-renyuxiangshui-12349.s
	//		TaskID:86 ????
	//
	//****************************************
	
	function OnUseItem(){
	
		$posx = GetPlayerInfo( -1, "mapx" )
		$posy = GetPlayerInfo( -1, "mapy" )
		$mapid = 3
		$x = 90
		$y = 270
		$monster = 30019
		
	//------------????????-------------
		$count = GetPlayerInfo( -1, "item", 12349 )
		if $count < 1
			BC( "screen", "player", -1, "You don't have Mermaid Perfume!" )
			return
		endif
	//-------------????ID----------------------	
		$Player_mapid = GetPlayerInfo( -1, "mapid" )
		if $Player_mapid != $mapid
			BC( "screen", "player", -1, "Mermaid Perfume must be used in the assigned location in Aegean North!" )
			return
		endif
	//-------------?????????-----------------------
	//-----------??????,?XY?????????-------
		$incircle_x1 = $x + 8
		$incircle_y1 = $y + 8
		$incircle_x2 = $x - 8
		$incircle_y2 = $y - 8
		$player_x = GetPlayerInfo ( -1 , "mapposx" )
		$player_y = GetPlayerInfo ( -1 , "mapposy" )
		
		if $player_x < $incircle_x2
			BC( "screen", "player", -1, "You are not at the required location!" )
			return
		endif
		if $player_x > $incircle_x1
			BC( "screen", "player", -1, "You are not at the required location!" )
			return
		endif
		if $player_y < $incircle_y2
			BC( "screen", "player", -1, "You are not at the required location!" )
			return
		endif
		if $player_y > $incircle_y1
			BC( "screen", "player", -1, "You are not at the required location!" )
			return
		endif
		
		BC( "screen", "player", -1, "The mysterious fiend has been summoned!" )
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		AddMonster( 30019, 1, 3 , $posx , $posy , 0 )
	
	}