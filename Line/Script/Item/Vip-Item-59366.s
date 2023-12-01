	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/8/22
	//		Author:??
	//		TaskName:Vip-Item-59809.s
	//		TaskID:????VIP???    
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 4
			BC( "screen", "player", -1, "You must have at least 3 free bag spaces." )
			return
		endif
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 59366, 1 )
		//????????
		if $del_count != 0
			return
		endif
		//??
		AddPlayerInfo( -1, "item", 59364, 1 )
		//???
		AddPlayerInfo( -1, "item", 64386, 1 )
		//??
		AddPlayerInfo( -1, "item", 59055, 1 )
		
	}
