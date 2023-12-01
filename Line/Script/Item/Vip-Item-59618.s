	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/10/29
	//		Author:???
	//		TaskName:Vip-Item-59618.s
	//		TaskID:????VIP???    
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 3
			BC( "screen", "player", -1, "You need at least 2 open Bag slots." )
			return
		endif
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 59618, 1 )
		//????????
		if $del_count != 0
			return
		endif
		//??
		AddPlayerInfo( -1, "item", 59620, 1 )
		//???
		AddPlayerInfo( -1, "item", 64386, 1 )
		
	}
