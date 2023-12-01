	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/8/11
	//		Author:??
	//		TaskName:Vip-Item-44425.s
	//		TaskID:????VIP???   12? 
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 4
			BC( "screen", "player", -1, "You must have at least 2 free bag spaces." )
			return
		endif
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 44425, 1 )
		//????????
		if $del_count != 0
			return
		endif
		//?????
		AddPlayerInfo( -1, "item", 44423, 1 )
		//???
		AddPlayerInfo( -1, "item", 64386, 1 )
		//vip???
		AddPlayerInfo( -1, "item", 44427, 1 )
		
	}
