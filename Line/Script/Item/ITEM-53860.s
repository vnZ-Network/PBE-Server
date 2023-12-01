	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/30
	//		Author:???
	//		TaskName:ITEM-53860.s
	//		TaskID:?????????
	//
	//****************************************
	
	
	function OnUseItem(){
		
		//???????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		if $bag_count < 1
			BC( "screen", "player", -1, "Your bag is full." )
			return
		endif
		
		
		//?????????????
		$num = GetPlayerInfo( -1 , "guildoffer" )
		
		if $num < 700
			BC( "screen", "player", -1, "Your personal contribution to your guild is lower than 700 points." )
			return
		
		else
			$result = SubPlayerInfo( -1 , "guildoffer" , 700  )
				BC( "screen", "player", -1, "Your personal contribution to your guild is reduced by 700 points." )
		endif
						
		
		//????
		$del = SubPlayerInfo ( -1 , "item" , 53860 , 1 )
		if  $del != 0
			return
		endif
		
		AddPlayerInfo( -1, "item" , 53319 , 1 )
						
	}