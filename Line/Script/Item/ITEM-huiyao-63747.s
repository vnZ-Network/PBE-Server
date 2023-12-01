	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/05/14
	//		Author:???
	//		TaskName:ITEM-huiyao-63747.s
	//		TaskID:????????
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
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 63747, 1 )
		//??????????
		
		if $del_count == 0
			$random_item_2 = RandomNumber( 1, 10000 )
			
			if $random_item_2 <= 2
				AddPlayerInfo( -1, "item", 59296, 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name," has activated a Brilliant Wing, and has acquired a Blessing Of Stardust Element!" )
				BC("chat", "servergroup", -1, "The hero ",#name," has activated a Brilliant Wing, and has acquired a Blessing Of Stardust Element!" )
			endif
			
			if $random_item_2 > 2
				if $random_item_2 <= 3
					AddPlayerInfo( -1, "item", 62069, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name,"has activated Brilliant Wing, and has fortunately acquired Dragonhawk!" )
					BC("chat", "servergroup", -1, "The hero ",#name,"has activated Brilliant Wing, and has fortunately acquired Dragonhawk!" )
				endif
			endif
			
			if $random_item_2 > 3
				if $random_item_2 <= 53
					AddPlayerInfo( -1, "item", 63558, 1 )
				endif
			endif
			
			if $random_item_2 > 53
				if $random_item_2 <= 153
					AddPlayerInfo( -1, "item", 64401, 1 )
				endif
			endif
			
			if $random_item_2 > 153
				if $random_item_2 <= 3490
					AddPlayerInfo( -1, "item", 63748, 1 )
				endif
			endif
			
			if $random_item_2 > 3490
				if $random_item_2 <= 6490
					AddPlayerInfo( -1, "item", 5, 1 )
				endif
			endif
			
			if $random_item_2 > 6490
				if $random_item_2 <= 7290
					AddPlayerInfo( -1, "item", 60028, 4 )
				endif
			endif
			
			if $random_item_2 > 7290
				if $random_item_2 <= 7300
					AddPlayerInfo( -1, "item", 2460, 1 )
				endif
			endif
			
			if $random_item_2 > 7300
				if $random_item_2 <= 8000
					AddPlayerInfo( -1, "item", 63383, 1 )
				endif
			endif
			
			if $random_item_2 > 8000
				if $random_item_2 <= 9500
					AddPlayerInfo( -1, "item", 63422, 1 )
				endif
			endif
			
			if $random_item_2 > 9500
				if $random_item_2 <= 9800
					AddPlayerInfo( -1, "item", 2449, 1 )
				endif
			endif
			
			if $random_item_2 > 9800
				if $random_item_2 <= 10000
					AddPlayerInfo( -1, "item", 20273, 1 )
				endif
			endif
		endif
		
	}
