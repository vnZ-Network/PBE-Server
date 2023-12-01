	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/5/16
	//		Author:??
	//		TaskName:Vip-Item-44231.s
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
		$del_count = SubPlayerInfo( -1, "item", 44231, 1 )
		//????????
		if $del_count != 0
			return
		endif
		//?????
		AddPlayerInfo( -1, "item", 44229, 1 )
		//???
		AddPlayerInfo( -1, "item", 64386, 1 )
		
	}
