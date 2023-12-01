	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/8/22
	//		Author:??
	//		TaskName:Vip-Item-59808.s
	//		TaskID:????VIP???    
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 3
			BC( "screen", "player", -1, "You must have at least 2 free bag spaces." )
			return
		endif
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 59365, 1 )
		//????????
		if $del_count != 0
			return
		endif
		//??
		AddPlayerInfo( -1, "item", 59363, 1 )
		//???
		AddPlayerInfo( -1, "item", 64386, 1 )
		
	}
