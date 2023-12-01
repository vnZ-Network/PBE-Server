	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/10/29
	//		Author:???
	//		TaskName:Vip-Item-59548.s
	//		TaskID:????VIP???    
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 4
			BC( "screen", "player", -1, "You don't have 3 free slots in your bag." )
			return
		endif
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 59548, 1 )
		//????????
		if $del_count != 0
			return
		endif
		//????
		AddPlayerInfo( -1, "item", 59543, 1 )
		//??
		AddPlayerInfo( -1, "item", 63832, 1 )
		//???
		AddPlayerInfo( -1, "item", 64386, 1 )
		
	}
