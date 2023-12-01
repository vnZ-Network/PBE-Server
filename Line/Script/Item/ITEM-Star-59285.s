	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/22
	//		Author:	???
	//		TaskName:ITEM-Star-59285.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 5
			BC( "screen", "player", -1, "You need at least 5 open Bag slots." )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 59285, 1 )
		//??????????
		if $del_count != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 53342, 1 )
		AddPlayerInfo( -1, "item", 53079, 1 )
		AddPlayerInfo( -1, "item", 53082, 1 )
		AddPlayerInfo( -1, "item", 53091, 1 )
		AddPlayerInfo( -1, "item", 2443, 10 )
		
	}
