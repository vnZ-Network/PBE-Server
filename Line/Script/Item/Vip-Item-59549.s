	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/10/29
	//		Author:???
	//		TaskName:Vip-Item-59549.s
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
		$del_count = SubPlayerInfo( -1, "item", 59549, 1 )
		//????????
		if $del_count != 0
			return
		endif
		//????
		AddPlayerInfo( -1, "item", 59544, 1 )
		//??
		AddPlayerInfo( -1, "item", 63833, 1 )
		//???
		AddPlayerInfo( -1, "item", 64386, 1 )
		//??
		AddPlayerInfo( -1, "item", 59055, 1 )
		
	}
