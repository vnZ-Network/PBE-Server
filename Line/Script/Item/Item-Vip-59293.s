	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/22
	//		Author:	???
	//		TaskName:Item-Vip-59293.s
	//		TaskID:????VIP???
	//
	//****************************************
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 4
			BC( "screen", "player", -1, "You need at least 4 open Bag slots." )
			return
		endif
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 59293, 1 )
		//????????
		if $del_count != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 63744, 1 )
		AddPlayerInfo( -1, "item", 59294, 1 )
		AddPlayerInfo( -1, "item", 64386, 1 )
		AddPlayerInfo( -1, "item", 59055, 1 )
		
		
	}
