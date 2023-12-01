	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/05/21
	//		Author:	???
	//		TaskName:ITEM-Soul-60097.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 60097, 1 )
		//??????????
		if $del_count != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 20273, 1 )
		
	}
