	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/27
	//		Author:???
	//		TaskName:97-Item-12750.s
	//		TaskID:   XXX
	//****************************************
	
	function OnUseItem(){
		
		$source = GetPlayerInfo( -1 , "item" , 61311 )
		if $source < 1
			BC( "chat" , "player" , -1 , "Not enough materials, can't make cocktail " )
			BC( "screen" , "player" , -1 , "Not enough materials, can't make cocktail " )
			return
		endif
		
		$source = GetPlayerInfo( -1 , "item" , 61312 )
		if $source < 1
			BC( "chat" , "player" , -1 , "Not enough materials, can't make cocktail " )
			BC( "screen" , "player" , -1 , "Not enough materials, can't make cocktail " )
			return
		endif
		
		$source = GetPlayerInfo( -1 , "item" , 61313 )
		if $source < 1
			BC( "chat" , "player" , -1 , "Not enough materials, can't make cocktail " )
			BC( "screen" , "player" , -1 , "Not enough materials, can't make cocktail " )
			return
		endif	
		
		$source = GetPlayerInfo( -1 , "item" , 61314 )
		if $source < 1
			BC( "chat" , "player" , -1 , "Not enough materials, can't make cocktail " )
			BC( "screen" , "player" , -1 , "Not enough materials, can't make cocktail " )
			return
		endif
		
		$source = GetPlayerInfo( -1 , "item" , 61302 )
		if $source < 1
			BC( "chat" , "player" , -1 , "Not enough materials, can't make cocktail " )
			BC( "screen" , "player" , -1 , "Not enough materials, can't make cocktail " )
			return
		endif
		
		$source = GetPlayerInfo( -1 , "item" , 61304 )
		if $source < 1
			BC( "chat" , "player" , -1 , "Not enough materials, can't make cocktail " )
			BC( "screen" , "player" , -1 , "Not enough materials, can't make cocktail " )
			return
		endif
		
		$info = SubPlayerInfo( -1, "item", 61311 , 1  )
		if $info != 0
			return
		endif
		
		$info = SubPlayerInfo( -1, "item", 61312 , 1  )
		if $info != 0
			return
		endif
		
		$info = SubPlayerInfo( -1, "item", 61313 , 1  )
		if $info != 0
			return
		endif	
		
		$info = SubPlayerInfo( -1, "item", 61314, 1  )
		if $info != 0
			return
		endif	
		
		$info = SubPlayerInfo( -1, "item", 61302 , 1  )
		if $info != 0
			return
		endif
		
		$info = SubPlayerInfo( -1, "item", 61304 , 1  )
		if $info != 0
			return
		endif	
		
		$info = SubPlayerInfo( -1, "item", 12750 , 1  )
		if $info != 0
			return
		endif
		
		$Bag_count = GetPlayerInfo(-1,"nullitem",0)
		if $Bag_count < 1 
			BC( "screen","player",-1,"Insufficient space in your bag.")
			BC( "chat","player",-1,"Insufficient space in your bag.")
			return
		endif
		
		AddPlayerInfo( -1 , "item" , 12764 , 1 )
		BC( "screen" , "player" , -1 , "Producing of Bloody Mary is successful!" )
		BC( "chat" , "player" , -1 , "Producing of Bloody Mary is successful!" )
	}