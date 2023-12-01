	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/8/11
	//		Author:??
	//		TaskName:Vip-Item-44426.s
	//		TaskID:????VIP???   12? 
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 5
			BC( "screen", "player", -1, "You don't have 3 free slots in your bag." )
			return
		endif
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 44426, 1 )
		//????????
		if $del_count != 0
			return
		endif
		//?????
		AddPlayerInfo( -1, "item", 44424, 1 )
		//???
		AddPlayerInfo( -1, "item", 64386, 1 )
		//??
		AddPlayerInfo( -1, "item", 59055, 1 )
		//??vip???
		AddPlayerInfo( -1, "item", 44428, 1 )
		
	}
