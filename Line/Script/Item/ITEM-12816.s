 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/9/28
	//		Author:???
	//		TaskName:ITEM-12816.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
		
		$map = GetPlayerInfo( -1, "mapid")
		$task = IsTaskAccept( -1, 1754 )
		$posx = GetPlayerInfo( -1, "mapposx" )
		$posy = GetPlayerInfo( -1, "mapposy" )
		//$x1 == 130
		//$x2 == 135
		//$y1 == 100
		//$y2 == 110
		$rand = RandomNumber( 0, 99 )
		
		if $map != 42
			BC( "screen", "player", -1, "This can't be used here." )
			return
		endif
		
		if $task != 0
			BC( "screen", "player", -1, "You do not have the corresponding quest." )
			return
		endif
		
		if $posx < 130
			BC( "screen", "player", -1, "There is no boneash here." )
			return
		endif
		
		if $posx > 135
			BC( "screen", "player", -1, "There is no boneash here." )
			return
		endif
		
		if $posy < 100
			BC( "screen", "player", -1, "There is no boneash here." )
			return
		endif
		
		if $posy > 110
			BC( "screen", "player", -1, "There is no boneash here." )
			return
		endif
		
		if $rand < 50
			AddPlayerInfo(-1, "item", 12815, 1 )
		endif
		
		if $rand >= 50
			BC( "screen", "player", -1, "The wind blew the boneash away. Try again." )
			PlayEffect(-1 ,"common\\heyao\\tx_heyao_fire_r.ini" , 1)
		endif
		
	}				