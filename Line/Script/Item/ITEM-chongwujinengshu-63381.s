	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/5/20
	//		Author:??
	//		TaskName:ITEM-chongwujinengshu-63381.s
	//		TaskID:???????
	//
	//****************************************
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$count1 = GetPlayerInfo( -1, "item", 63381 )
		$count2 = GetPlayerInfo( -1, "item", 59556 )
		$count = $count1 + $count2
		if $count < 20
			BC( "screen", "player", -1, "You do not have 20 Pet Skill Scroll Fragments." )
			return
		endif

		if $count1 >= 20	
			$del_count1 = SubPlayerInfo( -1, "item", 63381, 20 )
		endif
		
		if $count1 < 20
			$del_countno = 20 - $count1
			$del_count1s = SubPlayerInfo( -1, "item", 63381, $count1 )
			$del_count2s = SubPlayerInfo( -1, "item", 59556 , $del_countno )
		endif			

		//????????
		$del_count2 = $del_count1s + $del_count2s

		if $del_count1 == 0

			//-------------------------------------------------------------------------------------------------
			$random_item_2 = RandomNumber(1 , 1000)
			if $random_item_2 < 44
				AddPlayerInfo( -1, "item", 60956, 1 )
				return
			endif
			if $random_item_2 < 88
				AddPlayerInfo( -1, "item", 60957, 1 )
				return
			endif	
			if $random_item_2 < 132
				AddPlayerInfo( -1, "item", 60958, 1 )
				return
			endif	
			if $random_item_2 < 176
				AddPlayerInfo( -1, "item", 60959, 1 )
				return
			endif	
			if $random_item_2 < 220
				AddPlayerInfo( -1, "item", 60960, 1 )
				return
			endif	
			if $random_item_2 < 259
				AddPlayerInfo( -1, "item", 60961, 1 )
				return
			endif	
			if $random_item_2 < 295
				AddPlayerInfo( -1, "item", 60962, 1 )
				return
			endif	
			if $random_item_2 < 337
				AddPlayerInfo( -1, "item", 60963, 1 )
				return
			endif	
			if $random_item_2 < 376
				AddPlayerInfo( -1, "item", 60964, 1 )
				return
			endif	
			if $random_item_2 < 412
				AddPlayerInfo( -1, "item", 60965, 1 )
				return
			endif		
			if $random_item_2 < 454
				AddPlayerInfo( -1, "item", 60966, 1 )
				return
			endif		
			if $random_item_2 < 493
				AddPlayerInfo( -1, "item", 60967, 1 )
				return
			endif		
			if $random_item_2 < 532
				AddPlayerInfo( -1, "item", 60968, 1 )
				return
			endif		
			if $random_item_2 < 571
				AddPlayerInfo( -1, "item", 60969, 1 )
				return
			endif		
			if $random_item_2 < 610
				AddPlayerInfo( -1, "item", 60970, 1 )
				return
			endif		
			if $random_item_2 < 649
				AddPlayerInfo( -1, "item", 60971, 1 )
				return
			endif		
			if $random_item_2 < 688
				AddPlayerInfo( -1, "item", 60972, 1 )
				return
			endif		
			if $random_item_2 < 792
				AddPlayerInfo( -1, "item", 60622, 1 )
				return
			endif		
			if $random_item_2 < 896
				AddPlayerInfo( -1, "item", 60623, 1 )
				return
			endif		
			if $random_item_2 <= 1000
				AddPlayerInfo( -1, "item", 60624, 1 )
				return
			endif		
			return
		endif
		
		if $del_count2 == 0

			//-------------------------------------------------------------------------------------------------
			$random_item_2 = RandomNumber(1 , 1000)
			if $random_item_2 < 44
				AddPlayerInfo( -1, "item", 60956, 1 )
				return
			endif
			if $random_item_2 < 88
				AddPlayerInfo( -1, "item", 60957, 1 )
				return
			endif	
			if $random_item_2 < 132
				AddPlayerInfo( -1, "item", 60958, 1 )
				return
			endif	
			if $random_item_2 < 176
				AddPlayerInfo( -1, "item", 60959, 1 )
				return
			endif	
			if $random_item_2 < 220
				AddPlayerInfo( -1, "item", 60960, 1 )
				return
			endif	
			if $random_item_2 < 259
				AddPlayerInfo( -1, "item", 60961, 1 )
				return
			endif	
			if $random_item_2 < 295
				AddPlayerInfo( -1, "item", 60962, 1 )
				return
			endif	
			if $random_item_2 < 337
				AddPlayerInfo( -1, "item", 60963, 1 )
				return
			endif	
			if $random_item_2 < 376
				AddPlayerInfo( -1, "item", 60964, 1 )
				return
			endif	
			if $random_item_2 < 412
				AddPlayerInfo( -1, "item", 60965, 1 )
				return
			endif		
			if $random_item_2 < 454
				AddPlayerInfo( -1, "item", 60966, 1 )
				return
			endif		
			if $random_item_2 < 493
				AddPlayerInfo( -1, "item", 60967, 1 )
				return
			endif		
			if $random_item_2 < 532
				AddPlayerInfo( -1, "item", 60968, 1 )
				return
			endif		
			if $random_item_2 < 571
				AddPlayerInfo( -1, "item", 60969, 1 )
				return
			endif		
			if $random_item_2 < 610
				AddPlayerInfo( -1, "item", 60970, 1 )
				return
			endif		
			if $random_item_2 < 649
				AddPlayerInfo( -1, "item", 60971, 1 )
				return
			endif		
			if $random_item_2 < 688
				AddPlayerInfo( -1, "item", 60972, 1 )
				return
			endif		
			if $random_item_2 < 792
				AddPlayerInfo( -1, "item", 60622, 1 )
				return
			endif		
			if $random_item_2 < 896
				AddPlayerInfo( -1, "item", 60623, 1 )
				return
			endif		
			if $random_item_2 <= 1000
				AddPlayerInfo( -1, "item", 60624, 1 )
				return
			endif		
			return
		endif
	
	}