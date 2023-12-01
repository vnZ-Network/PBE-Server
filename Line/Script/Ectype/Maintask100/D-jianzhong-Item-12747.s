	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/27
	//		Author:???
	//		TaskName:97-Item-12747.s
	//		TaskID:   XXX
	//****************************************
	
	function OnUseItem(){
		
		$source = GetPlayerInfo( -1 , "item" , 61301 )
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
		
		$source = GetPlayerInfo( -1 , "item" , 61303 )
		if $source < 1
			BC( "chat" , "player" , -1 , "Not enough materials, can't make cocktail " )
			BC( "screen" , "player" , -1 , "Not enough materials, can't make cocktail " )
			return
		endif	
		
		$info = SubPlayerInfo( -1, "item", 61301 , 1  )
		if $info != 0
			return
		endif
		
		$info = SubPlayerInfo( -1, "item", 61302 , 1  )
		if $info2 != 0
			return
		endif
		
		$info = SubPlayerInfo( -1, "item", 61303 , 1  )
		if $info != 0
			return
		endif	
		
		$info = SubPlayerInfo( -1, "item", 12747 , 1  )
		if $info != 0
			return
		endif
		
		$Bag_count = GetPlayerInfo(-1,"nullitem",0)
		if $Bag_count < 1 
			BC( "screen","player",-1,"Insufficient space in your bag.")
			BC( "chat","player",-1,"Insufficient space in your bag.")
			return
		endif
		
		AddPlayerInfo( -1 , "item" , 12761, 1 )
		BC( "screen" , "player" , -1 , "Producing of Gimlet is successful!" )
		BC( "chat" , "player" , -1 , "Producing of Gimlet is successful!" )	
	}