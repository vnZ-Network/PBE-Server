	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/10/24
	//		Author:???
	//		TaskName:ITEM-bayinhe-61093.s
	//		TaskID:???
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
		$del_count = SubPlayerInfo( -1, "item", 61093, 1 )
		//??????????
		if $del_count == 0
			$random_item_2 = RandomNumber(1 , 10000)
			
			if $random_item_2 <= 2400
				AddPlayerInfo( -1, "item", 64386, 1 )
			endif
			
			if $random_item_2 > 2400
				if $random_item_2 <= 3233
					AddPlayerInfo( -1, "item", 62048, 1 )
				endif
			endif
		
			if $random_item_2 > 3233
				if $random_item_2 <= 4066
					AddPlayerInfo( -1, "item", 62049, 1 )
				endif
			endif
			
			if $random_item_2 > 4066
				if $random_item_2 <= 4899
					AddPlayerInfo( -1, "item", 62050, 1 )
				endif
			endif
			
			if $random_item_2 > 4899
				if $random_item_2 <= 5732
					AddPlayerInfo( -1, "item", 62051, 1 )
				endif
			endif
			
			if $random_item_2 > 5732
				if $random_item_2 <= 6565
					AddPlayerInfo( -1, "item", 62052, 1 )
				endif
			endif
			
			if $random_item_2 > 6565
				if $random_item_2 <= 7400
					AddPlayerInfo( -1, "item", 62082, 1 )
				endif
			endif

			if $random_item_2 > 7400
				if $random_item_2 <= 9800
					AddPlayerInfo( -1, "item", 64247, 1 )
				endif
			endif
			
			if $random_item_2 > 9800
				if $random_item_2 <= 10000
					AddPlayerInfo( -1, "item", 62536, 1 )
				endif
			endif
			
		endif
		
	}
