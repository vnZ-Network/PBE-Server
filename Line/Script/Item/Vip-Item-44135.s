	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11/23
	//		Author:???
	//		TaskName:Vip-Item-44135.s
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
		$del_count = SubPlayerInfo( -1, "item", 44135, 1 )
		//????????
		if $del_count != 0
			return
		endif
		//?????
		AddPlayerInfo( -1, "item", 44137, 1 )
		//???
		AddPlayerInfo( -1, "item", 64386, 1 )
		//??
		AddPlayerInfo( -1, "item", 59055, 1 )
		
	}
