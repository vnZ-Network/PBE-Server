
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/9/14
	//		Author:???
	//		TaskName:90-MainLine-Item-12715.s
	//		TaskID:   
	//****************************************
	
	function OnUseItem(){
		
		$mapid = GetPlayerInfo( -1 , "mapid" )
		$posx = GetPlayerInfo( -1 , "mapposx" )
		$posy = GetPlayerInfo( -1 , "mapposy" )
		
		if $mapid != 475
			BC( "screen" , "player" , -1 , "You can only get water in Atlantis." )
			BC( "chat" , "player" , -1 , "You can only get water in Atlantis." )
			return
		endif
		
		if $posx < 122
			BC( "screen" , "player" , -1 , "Please get Puriest Water from the fountain in Atlantis." )
			BC( "chat" , "player" , -1 , "Please get Puriest Water from the fountain in Atlantis." )
			return
		endif
		if $posx > 130
			BC( "screen" , "player" , -1 , "Please get Puriest Water from the fountain in Atlantis." )
			BC( "chat" , "player" , -1 , "Please get Puriest Water from the fountain in Atlantis." )
			return
		endif
		if $posy < 120
			BC( "screen" , "player" , -1 , "Please get Puriest Water from the fountain in Atlantis." )
			BC( "chat" , "player" , -1 , "Please get Puriest Water from the fountain in Atlantis." )
			return
		endif
		if $posy > 128
			BC( "screen" , "player" , -1 , "Please get Puriest Water from the fountain in Atlantis." )
			BC( "chat" , "player" , -1 , "Please get Puriest Water from the fountain in Atlantis." )
			return
		endif
		
		$info = SubPlayerInfo( -1, "item", 12715 , 1  )
		if $info != 0
			return
		endif
		
		AddPlayerInfo( -1 , "item" , 12614 , 1 )
		BC( "screen" , "player" , -1 , "Now, water the Tree of Purity!" )
		BC( "chat" , "player" , -1 , "Now, water the Tree of Purity!" )
		
	}

