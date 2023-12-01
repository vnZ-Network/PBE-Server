	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/28
	//		Author:???
	//		TaskName:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
	//		TaskID:1407 ????
	//
	//****************************************
	
	function OnUseItem(){
		
	//------------????????-------------
		$count = GetPlayerInfo( -1, "item", 12476 )
		if $count < 1
			BC( "screen", "player", -1, "You don't have Naga's Holy Water!" )
			return
		endif
	//-------------????ID----------------------	
		$Player_mapid = GetPlayerInfo( -1, "mapid" )
		if $Player_mapid != 6
			BC( "screen", "player", -1, "You cannot use Naga's Holy Water outside Grand Rift!" )
			return
		endif
	//-------------?????????-----------------------
	//-----------??????,?XY?????????-------
		$player_x = GetPlayerInfo ( -1 , "mapposx" )
		$player_y = GetPlayerInfo ( -1 , "mapposy" )
		
		if $player_x < 269
			BC( "screen", "player", -1, "You are not at the required location!" )
			return
		endif
		if $player_x > 279
			BC( "screen", "player", -1, "You are not at the required location!" )
			return
		endif
		if $player_y < 53
			BC( "screen", "player", -1, "You are not at the required location!" )
			return
		endif
		if $player_y > 63
			BC( "screen", "player", -1, "You are not at the required location!" )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" ,12476, 1 )
		if  $info != 0
			return
		endif
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		AddMonster( 30149,1,6,107,23,1,-1)
		BC( "screen", "player", -1, "Princess's Evil Spirit has been summoned!" )
	}