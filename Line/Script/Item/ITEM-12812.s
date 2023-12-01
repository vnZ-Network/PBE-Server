 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/9/27
	//		Author:???
	//		TaskName:ITEM-12811.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		$bag_count1 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count1 < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		$a = GetPlayerInfo(-1, "item", 12811 )
		$b = GetPlayerInfo(-1, "item", 12812 )
		
		if $a == 0
			BC( "screen", "player", -1, "You don't have a Blue Energy Shard." )
			return
		//else
			//$del_count1 = SubPlayerInfo( -1, "item", 12811, 1 ) 
		endif
		
		if $b == 0
			BC( "screen", "player", -1, "You don't have a Purple Energy Shard." )		
			return	
		//else
			//$del_count2 = SubPlayerInfo( -1, "item", 12812, 1 )
		endif
		
		if $a > 0
			if $b > 0
				SubPlayerInfo( -1, "item", 12811, 1 )
				SubPlayerInfo( -1, "item", 12812, 1 )
//			endif
//		endif
//		
//		$del_count1 = SubPlayerInfo( -1, "item", 12811, 1 )
//		$del_count2 = SubPlayerInfo( -1, "item", 12812, 1 )
//		
//		if $del_count1 == 0
//			if $del_count2 == 0
				AddPlayerInfo( -1, "item", 12813, 1 )
			endif
		endif
	}