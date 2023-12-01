
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/2/3
	//		Author:???
	//		TaskName:Swb-Mjmy-Item-12794.s
	//		TaskID: ??????
	//****************************************
	
	function OnUseItem(){
		
		$ectype_id = GetEctypeID( -1 , 254 )
		
		$mapid = GetPlayerInfo( -1 , "mapid" )
		$posx = GetPlayerInfo( -1 , "mapposx" )
		$posy = GetPlayerInfo( -1 , "mapposy" )
		
		if $posx < 116
			BC( "screen" , "player" , -1 , "Ammit's key can be used near the next passage door." )
			BC( "chat" , "player" , -1 , "Ammit's key can be used near the next passage door." )
			return
		endif
		if $posx > 121
			BC( "screen" , "player" , -1 , "Ammit's key can be used near the next passage door." )
			BC( "chat" , "player" , -1 , "Ammit's key can be used near the next passage door." )
			return
		endif
		if $posy < 96
			BC( "screen" , "player" , -1 , "Ammit's key can be used near the next passage door." )
			BC( "chat" , "player" , -1 , "Ammit's key can be used near the next passage door." )
			return
		endif
		if $posy > 104
			BC( "screen" , "player" , -1 , "Ammit's key can be used near the next passage door." )
			BC( "chat" , "player" , -1 , "Ammit's key can be used near the next passage door." )
			return
		endif
		$info = SubPlayerInfo( -1, "item", 12794 , 1 )
		if $info != 0
			return
		endif
		OpenMask( 4 , $ectype_id )
		SetPlayerVar( -1 , 55 , 1 )
		
	}