	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/9/13
	//		Author:??
	//		TaskName:item-59404.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		$bag_count2 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		if $bag_count2 < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 59404, 1 )
		//??????????
		if $del_count == 0
			$random_item_2 = RandomNumber(1 , 10000)
			
			if $random_item_2 <= 9
				AddPlayerInfo( -1, "item", 60610, 1 )
			endif
			
			if $random_item_2 > 9
				if $random_item_2 <= 18
					AddPlayerInfo( -1, "item", 60609, 1 )
				endif
			endif
		
			if $random_item_2 > 18
				if $random_item_2 <= 27
					AddPlayerInfo( -1, "item", 60608, 1 )
				endif
			endif
			
			if $random_item_2 > 27
				if $random_item_2 <= 36
					AddPlayerInfo( -1, "item", 60607, 1 )
				endif
			endif
			
			if $random_item_2 > 36
				if $random_item_2 <= 45
					AddPlayerInfo( -1, "item", 60699, 1 )
				endif
			endif
			
			if $random_item_2 > 45
				if $random_item_2 <= 54
					AddPlayerInfo( -1, "item", 60698, 1 )
				endif
			endif
			
			if $random_item_2 > 54
				if $random_item_2 <= 63
					AddPlayerInfo( -1, "item", 60604, 1 )
				endif
			endif
			
			if $random_item_2 > 63
				if $random_item_2 <= 72
					AddPlayerInfo( -1, "item", 60603, 1 )
				endif
			endif
			
			if $random_item_2 > 72
				if $random_item_2 <= 81
					AddPlayerInfo( -1, "item", 60695, 1 )
				endif
			endif
			
			if $random_item_2 > 81
				if $random_item_2 <= 90
					AddPlayerInfo( -1, "item", 60596, 1 )
				endif
			endif
		
			if $random_item_2 > 90
				if $random_item_2 <= 99
					AddPlayerInfo( -1, "item", 60595, 1 )
				endif
			endif
			
			if $random_item_2 > 99
				if $random_item_2 <= 108
					AddPlayerInfo( -1, "item", 60690, 1 )
				endif
			endif
			
			//??????
			if $random_item_2 > 108
				if $random_item_2 <= 125
					AddPlayerInfo( -1, "item", 62531, 1 )
				endif
			endif
			
			if $random_item_2 > 125
				if $random_item_2 <= 142
					AddPlayerInfo( -1, "item", 62532, 1 )
				endif
			endif
			
			if $random_item_2 > 142
				if $random_item_2 <= 159
					AddPlayerInfo( -1, "item", 62533, 1 )
				endif
			endif
			
			if $random_item_2 > 159
				if $random_item_2 <= 176
					AddPlayerInfo( -1, "item", 62534, 1 )
				endif
			endif
			
			if $random_item_2 > 176
				if $random_item_2 <= 193
					AddPlayerInfo( -1, "item", 62548, 1 )
				endif
			endif
			
			if $random_item_2 > 193
				if $random_item_2 <= 210
					AddPlayerInfo( -1, "item", 62549, 1 )
				endif
			endif
			
			if $random_item_2 > 210
				if $random_item_2 <= 227
					AddPlayerInfo( -1, "item", 62550, 1 )
				endif
			endif
			
			if $random_item_2 > 227
				if $random_item_2 <= 244
					AddPlayerInfo( -1, "item", 62551, 1 )
				endif
			endif
			
			if $random_item_2 > 244
				if $random_item_2 <= 261
					AddPlayerInfo( -1, "item", 62557, 1 )
				endif
			endif
			
			if $random_item_2 > 261
				if $random_item_2 <= 278
					AddPlayerInfo( -1, "item", 62558, 1 )
				endif
			endif
			
			if $random_item_2 > 278
				if $random_item_2 <= 295
					AddPlayerInfo( -1, "item", 62559, 1 )
				endif
			endif   
			
			if $random_item_2 > 295
				if $random_item_2 <= 312
					AddPlayerInfo( -1, "item", 62560, 1 )
				endif
			endif 
			
			//????
			if $random_item_2 > 312
				if $random_item_2 <= 372
					AddPlayerInfo( -1, "item", 62040, 1 )
				endif
			endif 
			
			if $random_item_2 > 372
				if $random_item_2 <= 432
					AddPlayerInfo( -1, "item", 62053, 1 )
				endif
			endif 
			
			if $random_item_2 > 432
				if $random_item_2 <= 492
					AddPlayerInfo( -1, "item", 62044, 1 )
				endif
			endif 
			
			if $random_item_2 > 492
				if $random_item_2 <= 552
					AddPlayerInfo( -1, "item", 62102, 1 )
				endif
			endif 
			
			if $random_item_2 > 552
				if $random_item_2 <= 612
					AddPlayerInfo( -1, "item", 62045, 1 )
				endif
			endif 
			
			if $random_item_2 > 612
				if $random_item_2 <= 664
					AddPlayerInfo( -1, "item", 62047, 1 )
				endif
			endif 
			
			if $random_item_2 > 664
				if $random_item_2 <= 716
					AddPlayerInfo( -1, "item", 62019, 1 )
				endif
			endif 
			
			//??????
			
			if $random_item_2 > 716
				if $random_item_2 <= 4000
					AddPlayerInfo( -1, "item", 2, 2 )
				endif
			endif
			
			if $random_item_2 > 4000
				AddPlayerInfo( -1 ,"money" ,300000 )
			endif
			
		endif
		
	}