	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/11
	//		Author:???
	//		TaskName:ITEM-chiyanzhiyu-59784.s
	//		TaskID:????????
	//
	//****************************************
	//64266	?????
	//63287	?????
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		$bag_count1 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count1 < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
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
		$del_count = SubPlayerInfo( -1, "item", 59784, 1 )
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
//			if $Charge >= 1000000
				if $Number >= 200
					call Random1()
					return
				else
					call Random2()
					return
				endif
//			else
//				call Random1()
//				return
//			endif
			
		endif
		
	}
	
	function Random1(){
		
		$random_item_2 = RandomNumber( 1, 10000 )
		
			if $random_item_2 <= 1
				AddPlayerInfo( -1, "item", 62573, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name," has blessed the Flaming Wings with a Starwish Charm, and has obtained the constellation pet: Violet Flame Tiger" )
				BC("chat", "servergroup", -1, "The hero ",#name," has blessed the Flaming Wings with a Starwish Charm, and has obtained the constellation pet: Violet Flame Tiger" )
			endif
			
			if $random_item_2 > 1
				if $random_item_2 <= 2
					AddPlayerInfo( -1, "item", 64181, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," has blessed the Flaming Wings with a Starwish Charm, and has obtained the rare item: Pet Skill Removal Charm." )
					BC("chat", "servergroup", -1, "The hero ",#name," has blessed the Flaming Wings with a Starwish Charm, and has obtained the rare item: Pet Skill Removal Charm." )
				endif
			endif
			
			if $random_item_2 > 2
				if $random_item_2 <= 3
					AddPlayerInfo( -1, "item", 5384, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," has blessed the Flaming Wings with a Starwish Charm, and has obtained the rare gem: Gem of Hel LV4" )
					BC("chat", "servergroup", -1, "The hero ",#name," has blessed the Flaming Wings with a Starwish Charm, and has obtained the rare gem: Gem of Hel LV4" )
				endif
			endif
			
			if $random_item_2 > 3
				if $random_item_2 <= 4
					AddPlayerInfo( -1, "item", 59782, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," has blessed the Shining Force with a Starwish Charm, and has obtained the rare gem: Scarlet Phoenix Core" )
					BC("chat", "servergroup", -1, "The hero ",#name," has blessed the Shining Force with a Starwish Charm, and has obtained the rare gem: Scarlet Phoenix Core" )
				endif
			endif
			
			if $random_item_2 > 4
				if $random_item_2 <= 5
					//4???????
					AddPlayerInfo( -1, "item", 60097, 1 )   
				endif
			endif
			
			if $random_item_2 > 5
				if $random_item_2 <= 55
					//?????
					AddPlayerInfo( -1, "item", 61092, 1 )
				endif
			endif
			
			if $random_item_2 > 55
				if $random_item_2 <= 2755
					//????????
					AddPlayerInfo( -1, "item", 60030, 4 )
				endif
			endif
			
			if $random_item_2 > 2755
				if $random_item_2 <= 5455
					//??????
					AddPlayerInfo( -1, "item", 5, 2 )
				endif
			endif
			
			if $random_item_2 > 5455
				if $random_item_2 <= 6845
					//4???????
					AddPlayerInfo( -1, "item", 60097, 1 )
				endif
			endif
			
			if $random_item_2 > 6845
				if $random_item_2 <= 9345
					//???????
					AddPlayerInfo( -1, "item", 63381, 1 )
				endif
			endif
			
			if $random_item_2 > 9345
				if $random_item_2 <= 9445
					//99???
					AddPlayerInfo( -1, "item", 18, 1 )
				endif
			endif
			
			if $random_item_2 > 9445
				if $random_item_2 <= 9450
					//?????
					AddPlayerInfo( -1, "item", 59287, 1 )
				endif
			endif
			
			if $random_item_2 > 9450
				if $random_item_2 <= 9500
					//???????
					AddPlayerInfo( -1, "item", 2135, 1 )
				endif
			endif
			
			if $random_item_2 > 9500
				if $random_item_2 <= 10000
					//??????
					AddPlayerInfo( -1, "item", 63789, 1 )
				endif
			endif
	}
	
	function Random2(){
		
		$random_item_2 = RandomNumber( 1, 10000 )
		
			if $random_item_2 <= 1
				AddPlayerInfo( -1, "item", 62573, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name," has blessed the Flaming Wings with a Starwish Charm, and has obtained the constellation pet: Violet Flame Tiger" )
				BC("chat", "servergroup", -1, "The hero ",#name," has blessed the Flaming Wings with a Starwish Charm, and has obtained the constellation pet: Violet Flame Tiger" )
			endif
			
			if $random_item_2 > 1
				if $random_item_2 <= 2
					//4???????
					AddPlayerInfo( -1, "item", 60097, 1 )   
				endif
			endif
			
			if $random_item_2 > 2
				if $random_item_2 <= 3
					AddPlayerInfo( -1, "item", 5384, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," has blessed the Flaming Wings with a Starwish Charm, and has obtained the rare gem: Gem of Hel LV4" )
					BC("chat", "servergroup", -1, "The hero ",#name," has blessed the Flaming Wings with a Starwish Charm, and has obtained the rare gem: Gem of Hel LV4" )
				endif
			endif
			
			if $random_item_2 > 3
				if $random_item_2 <= 4
					//4???????
					AddPlayerInfo( -1, "item", 60097, 1 )   
				endif
			endif
			
			if $random_item_2 > 4
				if $random_item_2 <= 5
					//4???????
					AddPlayerInfo( -1, "item", 60097, 1 )   
				endif
			endif
			
			if $random_item_2 > 5
				if $random_item_2 <= 55
					//?????
					AddPlayerInfo( -1, "item", 61092, 1 )
				endif
			endif
			
			if $random_item_2 > 55
				if $random_item_2 <= 2755
					//????????
					AddPlayerInfo( -1, "item", 60030, 4 )
				endif
			endif
			
			if $random_item_2 > 2755
				if $random_item_2 <= 5455
					//??????
					AddPlayerInfo( -1, "item", 5, 2 )
				endif
			endif
			
			if $random_item_2 > 5455
				if $random_item_2 <= 6845
					//4???????
					AddPlayerInfo( -1, "item", 60097, 1 )
				endif
			endif
			
			if $random_item_2 > 6845
				if $random_item_2 <= 9345
					//???????
					AddPlayerInfo( -1, "item", 63381, 1 )
				endif
			endif
			
			if $random_item_2 > 9345
				if $random_item_2 <= 9445
					//99???
					AddPlayerInfo( -1, "item", 18, 1 )
				endif
			endif
			
			if $random_item_2 > 9445
				if $random_item_2 <= 9450
					//?????
					AddPlayerInfo( -1, "item", 59287, 1 )
				endif
			endif
			
			if $random_item_2 > 9450
				if $random_item_2 <= 9500
					//???????
					AddPlayerInfo( -1, "item", 2135, 1 )
				endif
			endif
			
			if $random_item_2 > 9500
				if $random_item_2 <= 10000
					//??????
					AddPlayerInfo( -1, "item", 63789, 1 )
				endif
			endif
			
	}