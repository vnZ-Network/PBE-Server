	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/22
	//		Author:???
	//		TaskName:ITEM-Spring-63681.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 63681, 1 )
		//??????????
		if $del_count == 0
			
			AddPlayerInfo( -1, "item", 19, 5 )
			AddPlayerInfo( -1, "item", 61042, 1 )
				
		endif
		
	}
