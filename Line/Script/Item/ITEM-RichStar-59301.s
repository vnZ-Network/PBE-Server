	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/05/21
	//		Author:???
	//		TaskName:ITEM-RichStar-59301.s
	//		TaskID:???????
	//
	//****************************************
	//64266	?????
	//63287	?????
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif

		$key1 = GetPlayerInfo( -1, "item", 64266 )
		
		$key2 = GetPlayerInfo( -1, "item", 63287 )
		
		if $key1 == 0
			if $key2 == 0
				BC( "screen", "player", -1, "You need a Starwish Charm to activate this!" )
				return
			else
				$del_count = SubPlayerInfo( -1, "item", 63287, 1 )
			endif
		else
			$del_count = SubPlayerInfo( -1, "item", 64266, 1 )
		endif
		
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 59301, 1 )
		//??????????
		
		if $del_count == 0
			$Num = GetPlayerVar( -1, 3991 )
			$Num = $Num + 1
			if $Num <= 60000
				SetPlayerVar( -1, 3991, $Num )
			endif
			
			$Charge = GetCharge( -1 )
			$Number = GetPlayerVar( -1, 3991 )
			
//			if $Charge >= 1000000
				if $Number >= 150
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
			if $random_item_2 == 0
				AddPlayerInfo( -1, "item", 60099, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name," has been blessed by Furios, and received a LV13 Chalice Coupon!" )
				BC("chat", "servergroup", -1, "The hero ",#name," has been blessed by Furios, and received a LV13 Chalice Coupon!" )
			endif
			
			if $random_item_2 <= 5
				AddPlayerInfo( -1, "item", 62561, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name," has been blessed by Furios, and received a Furios Pet Egg!" )
				BC("chat", "servergroup", -1, "The hero ",#name," has been blessed by Furios, and received a Furios Pet Egg!" )
			endif
			
			if $random_item_2 > 5
				if $random_item_2 <= 6
					AddPlayerInfo( -1, "item", 64181, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," has been blessed by Furios, and received a Pet Skill Removal Charm!" )
					BC("chat", "servergroup", -1, "The hero ",#name," has been blessed by Furios, and received a Pet Skill Removal Charm!" )
				endif
			endif
			
			if $random_item_2 > 6
				if $random_item_2 <= 7
					AddPlayerInfo( -1, "item", 5384, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," has been blessed by Furios, and received a Gem of Hel LV4!" )
					BC("chat", "servergroup", -1, "The hero ",#name," has been blessed by Furios, and received a Gem of Hel LV4!" )
				endif
			endif
			
			if $random_item_2 > 7
				if $random_item_2 <= 9
					AddPlayerInfo( -1, "item", 60030, 4 )
				endif
			endif
			
			if $random_item_2 > 9
				if $random_item_2 <= 10
					AddPlayerInfo( -1, "item", 60098, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," has been blessed by Furios, and received Athena's Shield!" )
					BC("chat", "servergroup", -1, "The hero ",#name," has been blessed by Furios, and received Athena's Shield!" )
				endif
			endif
			
			if $random_item_2 > 10
				if $random_item_2 <= 60
					AddPlayerInfo( -1, "item", 61092, 1 )
				endif
			endif
			
			if $random_item_2 > 60
				if $random_item_2 <= 2695
					AddPlayerInfo( -1, "item", 60030, 4 )
				endif
			endif
			
			if $random_item_2 > 2695
				if $random_item_2 <= 4695
					AddPlayerInfo( -1, "item", 5, 2 )
				endif
			endif
			
			if $random_item_2 > 4695
				if $random_item_2 <= 7345
					AddPlayerInfo( -1, "item", 60097, 1 )
				endif
			endif
			
			if $random_item_2 > 7345
				if $random_item_2 <= 9845
					AddPlayerInfo( -1, "item", 63381, 1 )
				endif
			endif
			
			if $random_item_2 > 9845
				if $random_item_2 <= 9945
					AddPlayerInfo( -1, "item", 18, 1 )
				endif
			endif
			
			if $random_item_2 > 9945
				if $random_item_2 <= 9950
					AddPlayerInfo( -1, "item", 59287, 1 )
				endif
			endif
			
			if $random_item_2 > 9950
				if $random_item_2 <= 10000
					AddPlayerInfo( -1, "item", 2135, 1 )
				endif
			endif
			
	}
	
	function Random2(){
		
		$random_item_2 = RandomNumber( 1, 10000 )
			if $random_item_2 == 0
				AddPlayerInfo( -1, "item", 60099, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name," has been blessed by Furios, and received a LV13 Chalice Coupon!" )
				BC("chat", "servergroup", -1, "The hero ",#name," has been blessed by Furios, and received a LV13 Chalice Coupon!" )
			endif
			
			if $random_item_2 <= 2
				AddPlayerInfo( -1, "item", 62561, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name," has been blessed by Furios, and received a Furios Pet Egg!" )
				BC("chat", "servergroup", -1, "The hero ",#name," has been blessed by Furios, and received a Furios Pet Egg!" )
			endif
			
			if $random_item_2 > 2
				if $random_item_2 <= 3
					AddPlayerInfo( -1, "item", 5384, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," has been blessed by Furios, and received a Gem of Hel LV4!" )
					BC("chat", "servergroup", -1, "The hero ",#name," has been blessed by Furios, and received a Gem of Hel LV4!" )
				endif
			endif
			
			if $random_item_2 > 3
				if $random_item_2 <= 5
					AddPlayerInfo( -1, "item", 60030, 4 )
				endif
			endif
			
			if $random_item_2 > 5
				if $random_item_2 <= 55
					AddPlayerInfo( -1, "item", 61092, 1 )
				endif
			endif
			
			if $random_item_2 > 55
				if $random_item_2 <= 2695
					AddPlayerInfo( -1, "item", 60030, 4 )
				endif
			endif
			
			if $random_item_2 > 2695
				if $random_item_2 <= 4695
					AddPlayerInfo( -1, "item", 5, 2 )
				endif
			endif
			
			if $random_item_2 > 4695
				if $random_item_2 <= 7345
					AddPlayerInfo( -1, "item", 60097, 1 )
				endif
			endif
			
			if $random_item_2 > 7345
				if $random_item_2 <= 9845
					AddPlayerInfo( -1, "item", 63381, 1 )
				endif
			endif
			
			if $random_item_2 > 9845
				if $random_item_2 <= 9945
					AddPlayerInfo( -1, "item", 18, 1 )
				endif
			endif
			
			if $random_item_2 > 9945
				if $random_item_2 <= 9950
					AddPlayerInfo( -1, "item", 59287, 1 )
				endif
			endif
			
			if $random_item_2 > 9950
				if $random_item_2 <= 10000
					AddPlayerInfo( -1, "item", 2135, 1 )
				endif
			endif
			
	}		
