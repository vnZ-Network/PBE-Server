
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/3/13
	//		Author:???
	//		TaskName:Swb-Mjmy-Item-12779.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
	
		$ectype_id = GetEctypeID( -1 , 254 )
		$mapid = GetPlayerInfo( -1 , "mapid" )
		$posx = GetPlayerInfo( -1 , "mapposx" )
		$posy = GetPlayerInfo( -1 , "mapposy" )
		if $ectype_id <= 0
			BC( "screen" , "player" , -1 , "Mjollnir, Thor's Hammer can only be used in the Nightmare Domain" )
			BC( "chat" , "player" , -1 , "Mjollnir, Thor's Hammer can only be used in the Nightmare Domain" )
			return
		endif
		if $mapid <= 10000
			BC( "screen" , "player" , -1 , "Mjollnir, Thor's Hammer can only be used in the Nightmare Domain" )
			BC( "chat" , "player" , -1 , "Mjollnir, Thor's Hammer can only be used in the Nightmare Domain" )
			return
		endif
		
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
		AddStatus( -1 , 7502 , 1 )
		
	}
	