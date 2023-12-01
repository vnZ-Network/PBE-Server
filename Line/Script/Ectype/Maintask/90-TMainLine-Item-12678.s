
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/9/19
	//		Author:???
	//		TaskName:90-TMainLine-Item-12678.s
	//		TaskID:   ?????
	//****************************************
	
	function OnUseItem(){
		
		$result = IsTaskAccept( -1 , 123 )
		if $result != 0
			return
		endif
		$mapid = GetPlayerInfo( -1 , "mapid" )
		$x = GetPlayerInfo( -1 , "mapx" )
		$y = GetPlayerInfo( -1 , "mapy" )
		if $mapid != 245
			BC( "screen" , "player" , -1 , "Here's a hint,Kasor is deep in the Khufu Desert." )
			BC( "chat" , "player" , -1 , "Here's a hint,Kasor is deep in the Khufu Desert." )
			return
		endif
		if $x < 26
			BC( "screen" , "player" , -1 , "You can only use Water Element Piece when Tomb Keeper Kasor is beside you." )
			BC( "chat" , "player" , -1 , "You can only use Water Element Piece when Tomb Keeper Kasor is beside you." )
			return
		endif
		if $x > 30
			BC( "screen" , "player" , -1 , "You can only use Water Element Piece when Tomb Keeper Kasor is beside you." )
			BC( "chat" , "player" , -1 , "You can only use Water Element Piece when Tomb Keeper Kasor is beside you." )
			return
		endif
		if $y < 33
			BC( "screen" , "player" , -1 , "You can only use Water Element Piece when Tomb Keeper Kasor is beside you." )
			BC( "chat" , "player" , -1 , "You can only use Water Element Piece when Tomb Keeper Kasor is beside you." )
			return
		endif
		if $y > 37
			BC( "screen" , "player" , -1 , "You can only use Water Element Piece when Tomb Keeper Kasor is beside you." )
			BC( "chat" , "player" , -1 , "You can only use Water Element Piece when Tomb Keeper Kasor is beside you." )
			return
		endif
		
		$info = SubPlayerInfo( -1, "item", 12678 , 1  )
		if $info != 0
			return
		endif
		AddPlayerInfo( -1 , "item" , 12708 , 1 )
		ChangeNpcMode( -1, 245, 220, ..\Data\Character\Monster\Story\villager3\villager3.m4f , "" )
		PlayEffect( -1, "\common\story\lightpillar3\fire\tx_lightpillar3_fire.ini", 0 )
		
	}