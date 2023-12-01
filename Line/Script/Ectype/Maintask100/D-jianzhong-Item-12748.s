	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/27
	//		Author:???
	//		TaskName:97-Item-12748.s
	//		TaskID:   XXX
	//****************************************
	
	function OnUseItem(){
		
		$source = GetPlayerInfo( -1 , "item" , 61303 )
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
		
		$source = GetPlayerInfo( -1 , "item" , 61305 )
		if $source < 1
			BC( "chat" , "player" , -1 , "Not enough materials, can't make cocktail " )
			BC( "screen" , "player" , -1 , "Not enough materials, can't make cocktail " )
			return
		endif	
		
		$source = GetPlayerInfo( -1 , "item" , 61306 )
		if $source < 1
			BC( "chat" , "player" , -1 , "Not enough materials, can't make cocktail " )
			BC( "screen" , "player" , -1 , "Not enough materials, can't make cocktail " )
			return
		endif
		
		$source = GetPlayerInfo( -1 , "item" , 61307 )
		if $source < 1
			BC( "chat" , "player" , -1 , "Not enough materials, can't make cocktail " )
			BC( "screen" , "player" , -1 , "Not enough materials, can't make cocktail " )
			return
		endif
		
		$info = SubPlayerInfo( -1, "item", 61303 , 1  )
		if $info != 0
			return
		endif
		
		$info = SubPlayerInfo( -1, "item", 61304 , 1  )
		if $info != 0
			return
		endif
		
		$info = SubPlayerInfo( -1, "item", 61305 , 1  )
		if $info3 != 0
			return
		endif	
		
		$info = SubPlayerInfo( -1, "item", 61306 , 1  )
		if $info != 0
			return
		endif	
		
		$info = SubPlayerInfo( -1, "item", 61307 , 1  )
		if $info != 0
			return
		endif	
		
		$info = SubPlayerInfo( -1, "item", 12748 , 1  )
		if $info != 0
			return
		endif
		
		$Bag_count = GetPlayerInfo(-1,"nullitem",0)
		if $Bag_count < 1 
			BC( "screen","player",-1,"Insufficient space in your bag.")
			BC( "chat","player",-1,"Insufficient space in your bag.")
			return
		endif
		
		AddPlayerInfo( -1 , "item" , 12762 , 1 )
		BC( "screen" , "player" , -1 , "Producing of Cinderella Cocktail is successful!" )
		BC( "chat" , "player" , -1 , "Producing of Cinderella Cocktail is successful!" )
	}