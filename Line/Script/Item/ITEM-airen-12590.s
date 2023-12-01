	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/06
	//		Author:???
	//		TaskName:ITEM-airen-12590.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
	//-------------????ID----------------------	
		$Player_mapid = GetPlayerInfo( -1, "mapid" )
		if $Player_mapid != 20
			BC( "screen", "player", -1, "You cannot duel with Alves outside Dwarves' Forest!" )
			return
		endif
	//-------------?????????-----------------------
	//-----------??????,?XY?????????-------
		$player_x = GetPlayerInfo ( -1 , "mapposx" )
		$player_y = GetPlayerInfo ( -1 , "mapposy" )
		$x = GetPlayerInfo ( -1 , "mapx" )
		$y = GetPlayerInfo ( -1 , "mapy" )
		
		if $player_x < 45
			BC( "screen", "player", -1, "You cannot have with Alves if you stand too far from him." )
			return
		endif
		if $player_x > 61
			BC( "screen", "player", -1, "You cannot have with Alves if you stand too far from him." )
			return
		endif
		if $player_y < 217
			BC( "screen", "player", -1, "You cannot have with Alves if you stand too far from him." )
			return
		endif
		if $player_y > 233
			BC( "screen", "player", -1, "You are not at the required location!" )
			return
		endif
		
		BC( "screen", "player", -1, " to Alves!" )
		AddMonster( 30225 , 1, 20 , $x , $y , 1)
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
	
	}