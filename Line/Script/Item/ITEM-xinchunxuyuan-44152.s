	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/12/9
	//		Author:???
	//		TaskName:ITEM-xinchunxuyuan-44152.s
	//		TaskID:44152	?????
	//
	//****************************************

	
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
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 44152, 1 )
		//??????????
		
		if $del_count != 0
			return
		endif
		
		$random_item_2 = RandomNumber( 1, 10000 )
		
		
		if $random_item_2 <= 2
			$random_item_3 = RandomNumber( 1, 200 )
			//64181	????????
			if $random_item_3 <= 140
				AddPlayerInfo( -1, "item", 64181, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name," made a wish with a Chinese New Year's Wish Charm, and got a Pet Skill Removal Charm. " )
				BC("chat", "servergroup", -1, "The hero ",#name," made a wish with a Chinese New Year's Wish Charm, and got a Pet Skill Removal Charm. " )
			endif
			
			//59823	????????
			if $random_item_3 > 140
				if $random_item_3 <= 150
					AddPlayerInfo( -1, "item", 59823, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," made a wish with a Chinese New Year's Wish Charm, and got a White Tiger Might. " )
					BC("chat", "servergroup", -1, "The hero ",#name," made a wish with a Chinese New Year's Wish Charm, and got a White Tiger Might. " )
				endif
			endif
			
			//59805	????????
			if $random_item_3 > 150
				if $random_item_3 <= 160
					AddPlayerInfo( -1, "item", 59805, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," made a wish with a Chinese New Year's Wish Charm, and got a Emerald Dragon Soul. " )
					BC("chat", "servergroup", -1, "The hero ",#name," made a wish with a Chinese New Year's Wish Charm, and got a Emerald Dragon Soul. " )
				endif
			endif
			
			//59833	????????
			if $random_item_3 > 160
				if $random_item_3 <= 170
					AddPlayerInfo( -1, "item", 59833, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," made a wish with a Chinese New Year's Wish Charm, and got a Obsidian Turtle Soul Relic. " )
					BC("chat", "servergroup", -1, "The hero ",#name," made a wish with a Chinese New Year's Wish Charm, and got a Obsidian Turtle Soul Relic. " )
				endif
			endif
			
			//59783	????????
			if $random_item_3 > 170
				if $random_item_3 <= 180
					AddPlayerInfo( -1, "item", 59783, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," made a wish with a Chinese New Year's Wish Charm, and got a Scarlet Phoenix Heart Relic. " )
					BC("chat", "servergroup", -1, "The hero ",#name," made a wish with a Chinese New Year's Wish Charm, and got a Scarlet Phoenix Heart Relic. " )
				endif
			endif
			
			//62567	??????????? ??
			if $random_item_3 > 180
				if $random_item_3 <= 190
					AddPlayerInfo( -1, "item", 62567, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," made a wish with a Chinese New Year's Wish Charm, and got an Athena Pet Egg. " )
					BC("chat", "servergroup", -1, "The hero ",#name," made a wish with a Chinese New Year's Wish Charm, and got an Athena Pet Egg. " )
				endif
			endif
			//62594	??????????? ??
			if $random_item_3 > 190
				if $random_item_3 <= 200
					AddPlayerInfo( -1, "item", 62594, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," made a wish with a Chinese New Year's Wish Charm, and got an Athena Pet Egg. " )
					BC("chat", "servergroup", -1, "The hero ",#name," made a wish with a Chinese New Year's Wish Charm, and got an Athena Pet Egg. " )
				endif
			endif
			
		endif
		
		//5 ?????? 2?
		if $random_item_2 > 2
			if $random_item_2 <= 2002
				AddPlayerInfo( -1, "item", 5, 2 )
			endif
		endif

		//2314 ?? 2?
		if $random_item_2 > 2002
			if $random_item_2 <= 3002
				AddPlayerInfo( -1, "item", 2314, 2 )
			endif
		endif
		
		//2136 1?????? 2?
		if $random_item_2 > 3002
			if $random_item_2 <= 4002
				AddPlayerInfo( -1, "item", 2136, 2 )
			endif
		endif
		
		//59323 10w??? 5?
		if $random_item_2 > 4002
			if $random_item_2 <= 6002
				AddPlayerInfo( -1, "item", 59323, 5 )
			endif
		endif
		
		//6672 ?? 2?
		if $random_item_2 > 6002
			if $random_item_2 <= 7502
				AddPlayerInfo( -1, "item", 6672, 2 )
			endif
		endif
		
		//6674 ?? 2?
		if $random_item_2 > 7502
			if $random_item_2 <= 8502
				AddPlayerInfo( -1, "item", 6674, 2 )
			endif
		endif
		
		//4906 ??? 1?
		if $random_item_2 > 8502
			if $random_item_2 <= 9002
				AddPlayerInfo( -1, "item", 4906, 1 )
			endif
		endif
		
		//44082 ????*4
		if $random_item_2 > 9002
			if $random_item_2 <= 9502
				AddPlayerInfo( -1, "item", 44082, 2 )
			endif
		endif
		
		//60509	????
		if $random_item_2 > 9502
			if $random_item_2 <= 9615
				AddPlayerInfo( -1, "item", 60509, 6 )
			endif
		endif

		//60099	13??????
		if $random_item_2 > 9615
			if $random_item_2 <= 9618
				AddPlayerInfo( -1, "item", 60099, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name," made a wish with a Chinese New Year's Wish Charm, and got a LV13 Chalice Exchange Ticket. " )
				BC("chat", "servergroup", -1, "The hero ",#name," made a wish with a Chinese New Year's Wish Charm, and got a LV13 Chalice Exchange Ticket. " )
			endif
		endif
		
		//44158	??????
		if $random_item_2 > 9618
			if $random_item_2 <= 9620
				AddPlayerInfo( -1, "item", 44158, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name," made a wish with a Chinese New Year's Wish Charm, and got a LV10 Odin's Soul Jade. " )
				BC("chat", "servergroup", -1, "The hero ",#name," made a wish with a Chinese New Year's Wish Charm, and got a LV10 Odin's Soul Jade. " )
			endif
		endif
		
		//44150	7?????
		if $random_item_2 > 9620
			if $random_item_2 <= 9740
				AddPlayerInfo( -1, "item", 44150, 1 )
			endif
		endif
		
		//44149	10????? 1?
		if $random_item_2 > 9740
			if $random_item_2 <= 9860
				AddPlayerInfo( -1, "item", 44149, 1 )
			endif
		endif
		
		//63751	?????(7?) 1?
		if $random_item_2 > 9860
			if $random_item_2 <= 9980
				AddPlayerInfo( -1, "item", 63751, 1 )
			endif
		endif
		
		//63752	?????(30?) 1?
		if $random_item_2 > 9980
			if $random_item_2 <= 9990
				AddPlayerInfo( -1, "item", 63752, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name," made a wish with a Chinese New Year's Wish Charm, and got a Platinum Noble Card (30). " )
				BC("chat", "servergroup", -1, "The hero ",#name," made a wish with a Chinese New Year's Wish Charm, and got a Platinum Noble Card (30). " )
			endif
		endif
		
		//5635 ???? 1?
		if $random_item_2 > 9990
			if $random_item_2 <= 10000
				AddPlayerInfo( -1, "item", 5635, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name," made a wish with a Chinese New Year's Wish Charm, and got a Common Asteroid." )
				BC("chat", "servergroup", -1, "The hero ",#name," made a wish with a Chinese New Year's Wish Charm, and got a Common Asteroid." )
			endif
		endif
	}
