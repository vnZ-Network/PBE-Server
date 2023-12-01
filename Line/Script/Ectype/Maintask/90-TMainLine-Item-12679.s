
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/19
	//		Author:???
	//		TaskName:90-TMainLine-Item-12679.s
	//		TaskID:   ?????
	//****************************************
	
	function OnUseItem(){
		
		$result = IsTaskAccept( -1 , 127 )
		if $result != 0
			return
		endif
		$mapid = GetPlayerInfo( -1 , "mapid" )
		$x = GetPlayerInfo( -1 , "mapx" )
		$y = GetPlayerInfo( -1 , "mapy" )
		if $mapid != 245
			BC( "screen" , "player" , -1 , "Here's a hint, Boto is deep in the Khufu Desert." )
			BC( "chat" , "player" , -1 , "Here's a hint, Boto is deep in the Khufu Desert." )
			return
		endif
		if $x < 26
			BC( "screen" , "player" , -1 , "You can only use Earth Element Piece when Tomb Keeper Boto is beside you." )
			BC( "chat" , "player" , -1 , "You can only use Earth Element Piece when Tomb Keeper Boto is beside you." )
			return
		endif
		if $x > 30
			BC( "screen" , "player" , -1 , "You can only use Earth Element Piece when Tomb Keeper Boto is beside you." )
			BC( "chat" , "player" , -1 , "You can only use Earth Element Piece when Tomb Keeper Boto is beside you." )
			return
		endif
		if $y < 30
			BC( "screen" , "player" , -1 , "You can only use Earth Element Piece when Tomb Keeper Boto is beside you." )
			BC( "chat" , "player" , -1 , "You can only use Earth Element Piece when Tomb Keeper Boto is beside you." )
			return
		endif
		if $y > 34
			BC( "screen" , "player" , -1 , "You can only use Earth Element Piece when Tomb Keeper Boto is beside you." )
			BC( "chat" , "player" , -1 , "You can only use Earth Element Piece when Tomb Keeper Boto is beside you." )
			return
		endif
		
		$info = SubPlayerInfo( -1, "item", 12679 , 1  )
		if $info != 0
			return
		endif
		AddPlayerInfo( -1 , "item" , 12708 , 1 )
		ChangeNpcMode( -1, 245, 225, ..\Data\Character\Monster\Story\villager1\villager1_a.m4f , "" )
		PlayEffect( -1, "\common\story\lightpillar4\fire\tx_lightpillar4_fire.ini", 0 )
		
	}