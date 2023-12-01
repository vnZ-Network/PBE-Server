	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/30
	//		Author:???
	//		TaskName:ITEM-53858.s
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
		
		if $num < 175
			BC( "screen", "player", -1, "Your personal contribution to your guild is lower than 175 points." )
			return
		
		else
			$result = SubPlayerInfo( -1 , "guildoffer" , 175  )
				BC( "screen", "player", -1, "Your personal contribution to your guild is reduced by 175 points." )
		endif
						
		
		//????
		$del = SubPlayerInfo ( -1 , "item" , 53858 , 1 )
		if  $del != 0
			return
		endif
		
		AddPlayerInfo( -1, "item" , 53302 , 1 )
							
	}