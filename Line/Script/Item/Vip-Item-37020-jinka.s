	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/13
	//		Author:??
	//		TaskName:Vip-Item-37020-jinka.s
	//		TaskID:vip????  
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 4
			BC( "screen", "player", -1, "You need at least 3 empty Bag slots." )
			return
		endif
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 37020, 1 )
		//????????
		if $del_count != 0
			return
		endif
		//??
		AddPlayerInfo( -1, "item", 37026, 1 )
		//???
		AddPlayerInfo( -1, "item", 64386, 1 )
		//??vip???
		AddPlayerInfo( -1, "item", 44428, 1 )		
		//??
		AddPlayerInfo( -1, "item", 59055, 1 )		
	}
