	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/10/09
	//		Author:	???
	//		TaskName:ITEM-Star-59333.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 6
			BC( "screen", "player", -1, "You need at least 6 empty Bag slots." )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 59333, 1 )
		//??????????
		if $del_count != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 59337, 1 )
		AddPlayerInfo( -1, "item", 53059, 1 )
		AddPlayerInfo( -1, "item", 53047, 1 )
		AddPlayerInfo( -1, "item", 53089, 1 )
		AddPlayerInfo( -1, "item", 2443, 5 )
		AddPlayerInfo( -1, "item", 2442, 5 )
		
		
	}
