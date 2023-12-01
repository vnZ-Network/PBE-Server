
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/01/31
	//		Author:???
	//		TaskName:ITEM-disi-44159.s
	//		TaskID:????????? 
	//
	//****************************************
	//64266	?????
	//63287	?????
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		$bag_count1 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count1 < 1
			BC( "screen", "player", -1, "You do not have enough bag space." )
			return
		endif

		$key1 = GetPlayerInfo( -1, "item", 64266 )
		
		$key2 = GetPlayerInfo( -1, "item", 63287 )
		
		if $key1 == 0
			if $key2 == 0
				BC( "screen", "player", -1, "You need a Starwish Charm to activate this." )
				return
			else
				$del_count = SubPlayerInfo( -1, "item", 63287, 1 )
			endif
		else
			$del_count = SubPlayerInfo( -1, "item", 64266, 1 )
		endif
		
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 44159, 1 )
		//??????????
		
		if $del_count == 0
			$Num = GetPlayerVar( -1, 3991 )
			$Num = $Num + 1
			if $Num <= 60000
				SetPlayerVar( -1, 3991, $Num )
			endif
			
			$Charge = GetCharge( -1 )
			$Number = GetPlayerVar( -1, 3991 )
			//?????2?
			AddPlayerInfo( -1, "item", 59323, 2 )
			
////			if $Charge >= 1000000
//				if $Number >= 200
//					call Random1()
//					return
//				else
//					call Random1()
//					return
//				endif
////			else
////				call Random1()
////				return
////			endif

			$random_item_2 = RandomNumber( 1, 10000 )
		
			if $random_item_2 <= 1
				AddPlayerInfo( -1, "item", 62596, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name," has been blessed by the Golden Giant, and received a Golden Giant Pet Egg." )
				BC("chat", "servergroup", -1, "The hero ",#name," has been blessed by the Golden Giant, and received a Golden Giant Pet Egg." )
			endif
			
			if $random_item_2 > 1
				if $random_item_2 <= 2
					AddPlayerInfo( -1, "item", 64181, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," has been blessed by the Golden Giant, and received a rare Pet Skill Removal Charm." )
					BC("chat", "servergroup", -1, "The hero ",#name," has been blessed by the Golden Giant, and received a rare Pet Skill Removal Charm." )
				endif
			endif
			
			if $random_item_2 > 2
				if $random_item_2 <= 3
					AddPlayerInfo( -1, "item", 5384, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," has been blessed by the Golden Giant, and received a Gem of Hel LV4." )
					BC("chat", "servergroup", -1, "The hero ",#name," has been blessed by the Golden Giant, and received a Gem of Hel LV4." )
				endif
			endif
			
			if $random_item_2 > 3
				if $random_item_2 <= 5
					AddPlayerInfo( -1, "item", 44084, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," has been blessed by the Golden Giant, and received a Dimensional Core." )
					BC("chat", "servergroup", -1, "The hero ",#name," has been blessed by the Golden Giant, and received a Dimensional Core." )
				endif
			endif
			
			
			if $random_item_2 > 5
				if $random_item_2 <= 55
					//?????
					AddPlayerInfo( -1, "item", 61092, 1 )
				endif
			endif
			
			if $random_item_2 > 55
				if $random_item_2 <= 755
					//????????
					AddPlayerInfo( -1, "item", 60030, 4 )
				endif
			endif
			
			if $random_item_2 > 755
				if $random_item_2 <= 2755
					//1000??????
					AddPlayerInfo( -1, "item", 59812, 1 )
				endif
			endif
			
			if $random_item_2 > 2755
				if $random_item_2 <= 7885
					//??????
					AddPlayerInfo( -1, "item", 5, 2 )
				endif
			endif
			
			if $random_item_2 > 7885
				if $random_item_2 <= 9285
					//4???????
					AddPlayerInfo( -1, "item", 60097, 1 )
				endif
			endif
			
			if $random_item_2 > 9285
				if $random_item_2 <= 9785
					//???????
					AddPlayerInfo( -1, "item", 63381, 1 )
				endif
			endif
			
			if $random_item_2 > 9785
				if $random_item_2 <= 9885
					//99???
					AddPlayerInfo( -1, "item", 18, 1 )
				endif
			endif
			
			if $random_item_2 > 9885
				if $random_item_2 <= 9890
					//?????
					AddPlayerInfo( -1, "item", 59287, 1 )
				endif
			endif
			
			if $random_item_2 > 9890
				if $random_item_2 <= 9940
					//???????
					AddPlayerInfo( -1, "item", 2135, 1 )
				endif
			endif
			
			if $random_item_2 > 9940
				if $random_item_2 <= 9990
					//??????
					AddPlayerInfo( -1, "item", 63789, 1 )
				endif
			endif
			
			if $random_item_2 > 9990
				if $random_item_2 <= 9995
					//????----???????
					AddPlayerInfo( -1, "item", 59303, 1 )
				endif
			endif
			
			if $random_item_2 > 9995
				if $random_item_2 <= 10000
					//??
					AddPlayerInfo( -1, "item", 59285, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," has been blessed by the Golden Giant, and received a rare Blessing of Stardust-Strong." )
					BC("chat", "servergroup", -1, "The hero ",#name," has been blessed by the Golden Giant, and received a rare Blessing of Stardust-Strong." )
				endif
			endif	
			
			
		endif
		
	}
	
	