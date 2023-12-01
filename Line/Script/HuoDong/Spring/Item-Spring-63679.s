
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/22
	//		Author:???
	//		TaskName:ITEM-Spring-63679.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 3
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 63679, 1 )
		//??????????
		if $del_count == 0
			
			$random_item_2 = RandomNumber(1, 10000)
			//2011-11-23? 63673 ?? 60029 ??
			
			if $random_item_2 <= 8000
				AddPlayerInfo( -1, "item", 60029, 1 )
				AddPlayerInfo( -1, "item", 19, 30 )
			endif
			
			if $random_item_2 > 8000
				if $random_item_2 <= 9000
					AddPlayerInfo( -1, "item", 36303, 1 )
					AddPlayerInfo( -1, "item", 60029, 1 )
					AddPlayerInfo( -1, "item", 19, 30 )
				endif
			endif
			
			if $random_item_2 > 9000
				if $random_item_2 <= 10000
					AddPlayerInfo( -1, "item", 36304, 1 )
					AddPlayerInfo( -1, "item", 60029, 1 )
					AddPlayerInfo( -1, "item", 19, 30 )
				endif
			endif
		endif
		
	}
