
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/9/19
	//		Author:???
	//		TaskName:90-TMainLine-Item-12676.s
	//		TaskID:   ?????
	//****************************************
	
	function OnUseItem(){
		
		$result = IsTaskAccept( -1 , 121 )
		if $result != 0
			return
		endif
		$mapid = GetPlayerInfo( -1 , "mapid" )
		$x = GetPlayerInfo( -1 , "mapx" )
		$y = GetPlayerInfo( -1 , "mapy" )
		if $mapid != 245
			BC( "screen" , "player" , -1 , "Here's a hint,Kawa is deep in the Khufu Desert." )
			BC( "chat" , "player" , -1 , "Here's a hint,Kawa is deep in the Khufu Desert." )
			return
		endif
		if $x < 32
			BC( "screen" , "player" , -1 , "You can only use Light Element Piece when Tomb Keeper Kawa is beside you." )
			BC( "chat" , "player" , -1 , "You can only use Light Element Piece when Tomb Keeper Kawa is beside you." )
			return
		endif
		if $x > 36
			BC( "screen" , "player" , -1 , "You can only use Light Element Piece when Tomb Keeper Kawa is beside you." )
			BC( "chat" , "player" , -1 , "You can only use Light Element Piece when Tomb Keeper Kawa is beside you." )
			return
		endif
		if $y < 24
			BC( "screen" , "player" , -1 , "You can only use Light Element Piece when Tomb Keeper Kawa is beside you." )
			BC( "chat" , "player" , -1 , "You can only use Light Element Piece when Tomb Keeper Kawa is beside you." )
			return
		endif
		if $y > 28
			BC( "screen" , "player" , -1 , "You can only use Light Element Piece when Tomb Keeper Kawa is beside you." )
			BC( "chat" , "player" , -1 , "You can only use Light Element Piece when Tomb Keeper Kawa is beside you." )
			return
		endif
		
		$info = SubPlayerInfo( -1, "item", 12676 , 1  )
		if $info != 0
			return
		endif
		AddPlayerInfo( -1 , "item" , 12708 , 1 )
		ChangeNpcMode( -1, 245, 219, ..\Data\Character\Monster\Story\villager3\villager3.m4f , "" )
		PlayEffect( -1, "\common\story\lightpillar\fire\tx_lightpillar_fire.ini", 0 ) 
		
	}