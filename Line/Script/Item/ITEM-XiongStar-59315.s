	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/08/10
	//		Author:???
	//		TaskName:ITEM-XiongStar-59315.s
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
		$del_count = SubPlayerInfo( -1, "item", 59315, 1 )
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
		
		if $random_item_2 <= 1
				AddPlayerInfo( -1, "item", 62564, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name," has been blessed by Aeacus, and received an Aeacus Pet Egg!" )
				BC("chat", "servergroup", -1, "The hero ",#name," has been blessed by Aeacus, and received an Aeacus Pet Egg!" )
			endif
			
			if $random_item_2 > 1
				if $random_item_2 <= 2
					AddPlayerInfo( -1, "item", 64181, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," has been blessed by Aeacus, and received a Pet Skill Removal Charm!" )
					BC("chat", "servergroup", -1, "The hero ",#name," has been blessed by Aeacus, and received a Pet Skill Removal Charm!" )
				endif
			endif
			
			if $random_item_2 > 2
				if $random_item_2 <= 3
					AddPlayerInfo( -1, "item", 5384, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," has been blessed by Aeacus, and received a Gem of Hel LV4!" )
					BC("chat", "servergroup", -1, "The hero ",#name," has been blessed by Aeacus, and received a Gem of Hel LV4!" )
				endif
			endif
			
			if $random_item_2 > 3
				if $random_item_2 <= 8
					AddPlayerInfo( -1, "item", 59310, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," has been blessed by Aeacus, and received a LV5 Gem Chest!" )
					BC("chat", "servergroup", -1, "The hero ",#name," has been blessed by Aeacus, and received a LV5 Gem Chest!" )
				endif
			endif
			
			if $random_item_2 > 8
				if $random_item_2 <= 9
					AddPlayerInfo( -1, "item", 59316, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," has been blessed by Aeacus, and received Athena's Crown!" )
					BC("chat", "servergroup", -1, "The hero ",#name," has been blessed by Aeacus, and received Athena's Crown!" )
				endif
			endif
			
			if $random_item_2 > 9
				if $random_item_2 <= 59
					AddPlayerInfo( -1, "item", 61092, 1 )
				endif
			endif
			
			if $random_item_2 > 59
				if $random_item_2 <= 3064
					AddPlayerInfo( -1, "item", 60030, 4 )
				endif
			endif
			
			if $random_item_2 > 3064
				if $random_item_2 <= 6064
					AddPlayerInfo( -1, "item", 5, 2 )
				endif
			endif
			
			if $random_item_2 > 6064
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
		
			if $random_item_2 <= 1
				AddPlayerInfo( -1, "item", 62564, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name," has been blessed by Aeacus, and received an Aeacus Pet Egg!" )
				BC("chat", "servergroup", -1, "The hero ",#name," has been blessed by Aeacus, and received an Aeacus Pet Egg!" )
			endif
			
			if $random_item_2 > 1
				if $random_item_2 <= 2
					AddPlayerInfo( -1, "item", 5384, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," has been blessed by Aeacus, and received a Gem of Hel LV4!" )
					BC("chat", "servergroup", -1, "The hero ",#name," has been blessed by Aeacus, and received a Gem of Hel LV4!" )
				endif
			endif
			
			if $random_item_2 > 2
				if $random_item_2 <= 7
					AddPlayerInfo( -1, "item", 59310, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," has been blessed by Aeacus, and received a LV5 Gem Chest!" )
					BC("chat", "servergroup", -1, "The hero ",#name," has been blessed by Aeacus, and received a LV5 Gem Chest!" )
				endif
			endif
			
			if $random_item_2 > 7
				if $random_item_2 <= 57
					AddPlayerInfo( -1, "item", 61092, 1 )
				endif
			endif
			
			if $random_item_2 > 57
				if $random_item_2 <= 3062
					AddPlayerInfo( -1, "item", 60030, 4 )
				endif
			endif
			
			if $random_item_2 > 3062
				if $random_item_2 <= 6062
					AddPlayerInfo( -1, "item", 5, 2 )
				endif
			endif
			
			if $random_item_2 > 6062
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
