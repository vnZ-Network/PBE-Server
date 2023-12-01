
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/9/19
	//		Author:???
	//		TaskName:90-TMainLine-Item-12677.s
	//		TaskID:   ?????
	//****************************************
	
	function OnUseItem(){
		
		$result = IsTaskAccept( -1 , 125 )
		if $result != 0
			return
		endif
		$mapid = GetPlayerInfo( -1 , "mapid" )
		$x = GetPlayerInfo( -1 , "mapx" )
		$y = GetPlayerInfo( -1 , "mapy" )
		if $mapid != 245
			BC( "screen" , "player" , -1 , "Here's a hint, Lester is deep in the Khufu Desert." )
			BC( "chat" , "player" , -1 , "Here's a hint, Lester is deep in the Khufu Desert." )
			return
		endif
		if $x < 34
			BC( "screen" , "player" , -1 , "You can only use Fire Element Piece when Tomb Keeper Lester is beside you." )
			BC( "chat" , "player" , -1 , "You can only use Fire Element Piece when Tomb Keeper Lester is beside you." )
			return
		endif
		if $x > 38
			BC( "screen" , "player" , -1 , "You can only use Fire Element Piece when Tomb Keeper Lester is beside you." )
			BC( "chat" , "player" , -1 , "You can only use Fire Element Piece when Tomb Keeper Lester is beside you." )
			return
		endif
		if $y < 33
			BC( "screen" , "player" , -1 , "You can only use Fire Element Piece when Tomb Keeper Lester is beside you." )
			BC( "chat" , "player" , -1 , "You can only use Fire Element Piece when Tomb Keeper Lester is beside you." )
			return
		endif
		if $y > 37
			BC( "screen" , "player" , -1 , "You can only use Fire Element Piece when Tomb Keeper Lester is beside you." )
			BC( "chat" , "player" , -1 , "You can only use Fire Element Piece when Tomb Keeper Lester is beside you." )
			return
		endif
		
		$info = SubPlayerInfo( -1, "item", 12677 , 1  )
		if $info != 0
			return
		endif
		AddPlayerInfo( -1 , "item" , 12708 , 1 )
		ChangeNpcMode( -1, 245, 224, ..\Data\Character\Monster\Story\villager1\villager1_a.m4f , "" )
		PlayEffect( -1, "\common\story\lightpillar2\fire\tx_lightpillar2_fire.ini", 0 )
		
	}