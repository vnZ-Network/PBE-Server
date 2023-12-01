	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/10/24
	//		Author:???
	//		TaskName:ITEM-fuwenbaoshi-61092.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 61092, 1 )
		//??????????
		if $del_count == 0
			$random_item_2 = RandomNumber(1 , 10000)
			
			if $random_item_2 <= 2000
				AddPlayerInfo( -1, "item", 5570, 1 )
			endif
			
			if $random_item_2 > 2000
				if $random_item_2 <= 4000
					AddPlayerInfo( -1, "item", 5580, 1 )
				endif
			endif
		
			if $random_item_2 > 4000
				if $random_item_2 <= 6000
					AddPlayerInfo( -1, "item", 5590, 1 )
				endif
			endif
			
			if $random_item_2 > 6000
				if $random_item_2 <= 8000
					AddPlayerInfo( -1, "item", 5600, 1 )
				endif
			endif
			
			if $random_item_2 > 8000
				if $random_item_2 <= 9000
					AddPlayerInfo( -1, "item", 5610, 1 )
				endif
			endif
			
			if $random_item_2 > 9000
				if $random_item_2 <= 10000
					AddPlayerInfo( -1, "item", 5620, 1 )
				endif
			endif
			
		endif
		
	}
