	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/9/13
	//		Author:??
	//		TaskName:item-59403.s
	//		TaskID:???
	//
	//****************************************
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 59403, 1 )
		//??????????
		if $del_count == 0
			$random_item_2 = RandomNumber(1 , 10000)
			
			if $random_item_2 <= 100
				AddPlayerInfo( -1, "item", 60676, 1 )
			endif
			
			if $random_item_2 > 100
				if $random_item_2 <= 200
					AddPlayerInfo( -1, "item", 60560, 1 )
				endif
			endif
		
			if $random_item_2 > 200
				if $random_item_2 <= 300
					AddPlayerInfo( -1, "item", 60559, 1 )
				endif
			endif
			
			if $random_item_2 > 300
				if $random_item_2 <= 400
					AddPlayerInfo( -1, "item", 60558, 1 )
				endif
			endif
			
			if $random_item_2 > 400
				if $random_item_2 <= 500
					AddPlayerInfo( -1, "item", 60557, 1 )
				endif
			endif
			
			if $random_item_2 > 500
				if $random_item_2 <= 750
					AddPlayerInfo( -1, "item", 64377, 1 )
				endif
			endif
			
			if $random_item_2 > 750
				if $random_item_2 <= 1000
					AddPlayerInfo( -1, "item", 36572, 1 )
				endif
			endif
			
			if $random_item_2 > 1000
				if $random_item_2 <= 1500
					AddPlayerInfo( -1, "item", 62037, 1 )
				endif
			endif
			
			if $random_item_2 > 1500
				if $random_item_2 <= 2000
					AddPlayerInfo( -1, "item", 62003, 1 )
				endif
			endif
			
			if $random_item_2 > 2000
				if $random_item_2 <= 2250
					AddPlayerInfo( -1, "item", 63364, 1 )
				endif
			endif
			
			if $random_item_2 > 2250
				if $random_item_2 <= 2500
					AddPlayerInfo( -1, "item", 62502, 1 )
				endif
			endif
			
			if $random_item_2 > 2500
				if $random_item_2 <= 5000
					AddPlayerInfo( -1, "item", 2, 1 )
				endif
			endif
			
			if $random_item_2 > 5000
				AddPlayerInfo( -1 ,"money" ,100000 )
			endif
			
		endif
		
	}