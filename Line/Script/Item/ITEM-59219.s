	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/19
	//		Author:???
	//		TaskName:ITEM-59219.s
	//		TaskID:????VIP???
	//
	//****************************************
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 3
			BC( "screen", "player", -1, "You don't have 3 free slots in your bag." )
			return
		endif
		
	
		$del_count = SubPlayerInfo( -1, "item", 59219, 1 )
		//????????
		if $del_count == 0
				AddPlayerInfo( -1, "item", 63694, 1 )
				AddPlayerInfo( -1, "item", 64386, 1 )
				AddPlayerInfo( -1, "item", 62552, 1 )
		else
				return		
		endif
		
	}
