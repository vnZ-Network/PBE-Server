	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/15
	//		Author:???
	//		TaskName:ITEM-huancai-44056.s
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
		
		//????
		$del_count = SubPlayerInfo( -1, "item", 44056, 1 )
		//??????????
		
		if $del_count == 0
			//?????
			AddPlayerInfo( -1, "item", 59323, 1 )
			
			$random_item_2 = RandomNumber( 1, 10000 )
			
			if $random_item_2 <= 2
				AddPlayerInfo( -1, "item", 110 , 1 )
				#name = GetPlayerInfo(-1 , "name")
				BC("screen", "servergroup", -1, "The hero ",#name," has used a Chroma Shadow, and has obtained a Stardust Coin." )
				BC("chat", "servergroup", -1, "The hero ",#name," has used a Chroma Shadow, and has obtained a Stardust Coin." )
			endif
			
			if $random_item_2 > 2
				if $random_item_2 <= 3
					AddPlayerInfo( -1, "item", 62115, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name," has used a Chroma Shadow, and has obtained the mount: Fine Chimera Spider." )
					BC("chat", "servergroup", -1, "The hero ",#name," has used a Chroma Shadow, and has obtained the mount: Fine Chimera Spider." )
				endif
			endif
			
			if $random_item_2 > 3
				if $random_item_2 <= 53
					AddPlayerInfo( -1, "item", 63558, 1 )
				endif
			endif
			
			if $random_item_2 > 53
				if $random_item_2 <= 553
					AddPlayerInfo( -1, "item", 20273, 1 )
				endif
			endif
			
			if $random_item_2 > 553
				if $random_item_2 <= 1053
					AddPlayerInfo( -1, "item", 2449, 1 )
				endif
			endif
			
			if $random_item_2 > 1053
				if $random_item_2 <= 2853
					AddPlayerInfo( -1, "item", 63422, 1 )
				endif
			endif
			
			if $random_item_2 > 2853
				if $random_item_2 <= 3153
					AddPlayerInfo( -1, "item", 63383, 1 )
				endif
			endif
			
			if $random_item_2 > 3153
				if $random_item_2 <= 3163
					AddPlayerInfo( -1, "item", 2460, 1 )
				endif
			endif
			
			if $random_item_2 > 3163
				if $random_item_2 <= 3963
					AddPlayerInfo( -1, "item", 60028, 4 )
				endif
			endif
			
			if $random_item_2 > 3963
				if $random_item_2 <= 9440
					AddPlayerInfo( -1, "item", 5, 1 )
				endif
			endif
			
			if $random_item_2 > 9440
				if $random_item_2 <= 9450
					AddPlayerInfo( -1, "item", 64247, 1 )
				endif
			endif
			
			if $random_item_2 > 9450
				if $random_item_2 <= 9500
					AddPlayerInfo( -1, "item", 59303, 1 )
				endif
			endif
			
			if $random_item_2 > 9500
				if $random_item_2 <= 9800
					AddPlayerInfo( -1, "item", 2131, 1 )
				endif
			endif
			
			if $random_item_2 > 9800
				if $random_item_2 <= 10000
					AddPlayerInfo( -1, "item", 59304, 1 )
				endif
			endif
		endif
		
	}
