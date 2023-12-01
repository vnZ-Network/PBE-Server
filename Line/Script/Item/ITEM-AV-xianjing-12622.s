	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/06/23
	//		Author:???
	//		TaskName:ITEM-AV-xianjing-12622.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
	//-------------????ID----------------------	
		$Player_mapid = GetPlayerInfo( -1, "mapid" )
		if $Player_mapid != 160
			BC( "screen", "player", -1, "Item must be triggered in Darkflame Temple!" )
			return
		endif
	//-------------?????????-----------------------
	//-----------??????,?XY?????????-------
		$player_x = GetPlayerInfo ( -1 , "mapposx" )
		$player_y = GetPlayerInfo ( -1 , "mapposy" )
		$x = GetPlayerInfo ( -1 , "mapx" )
		$y = GetPlayerInfo ( -1 , "mapy" )
		
		if $player_x < 126
			BC( "screen", "player", -1, "Magic trap is available only in X room(131, 175)" )
			return
		endif
		if $player_x > 136
			BC( "screen", "player", -1, "Magic trap is available only in X room(131, 175)" )
			return
		endif
		if $player_y < 170
			BC( "screen", "player", -1, "Magic trap is available only in X room(131, 175)" )
			return
		endif
		if $player_y > 180
			BC( "screen", "player", -1, "Magic trap is available only in X room(131, 175)" )
			return
		endif
		
		BC( "screen", "player", -1, " Wispbiter has been trapped!" )
		AddMonster( 32162 , 1, 160 , $x , $y , 0 )
		PlayEffect( -1 , "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
	
	}