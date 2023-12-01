	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/19
	//		Author:???
	//		TaskName:ITEM-59220.s
	//		TaskID:????VIP???
	//
	//****************************************
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 4
			BC( "screen", "player", -1, "You don't have 4 free slots in your bag." )
			return
		endif
		
	
		$del_count = SubPlayerInfo( -1, "item", 59220, 1 )
		//????????
		if $del_count == 0
				AddPlayerInfo( -1, "item", 63695, 1 )
				AddPlayerInfo( -1, "item", 59221, 1 )
				AddPlayerInfo( -1, "item", 64386, 1 )
				AddPlayerInfo( -1, "item", 59055, 1 )
		else
				return		
		endif
		
	}
