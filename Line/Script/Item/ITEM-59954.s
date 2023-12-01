	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/06/21
	//		Author:???
	//		TaskName:ITEM-59954.s
	//		TaskID:
	//
	//****************************************
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		
		//??
		$del_count = SubPlayerInfo( -1, "item", 59954, 1 )
		//??????
		if $del_count != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 20276, 1 )
		
	}
