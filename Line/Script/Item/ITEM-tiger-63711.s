	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/22
	//		Author:	???
	//		TaskName:ITEM-tiger-63711.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 63711, 1 )
		//??????????
		if $del_count == 0
			
			
			//-------------------------------------------------------------------------------------------------
			$random_item_2 = RandomNumber(1, 10000)
			
			if $random_item_2 <= 10
				AddPlayerInfo( -1, "item", 2460, 1 )
			endif
			
			if $random_item_2 > 10
				if $random_item_2 <= 4718
					AddPlayerInfo( -1, "item", 5, 1 )
				endif
			endif
			
			if $random_item_2 > 4718
				if $random_item_2 <= 5218
					AddPlayerInfo( -1, "item", 2222, 1 )
				endif
			endif
			
			if $random_item_2 > 5218
				if $random_item_2 <= 7218
					AddPlayerInfo( -1, "item", 63365, 1 )
				endif
			endif
		
			if $random_item_2 > 7218
				if $random_item_2 <= 8718
					AddPlayerInfo( -1, "item", 63422, 1 )
				endif
			endif
			if $random_item_2 > 8718
				if $random_item_2 <= 9218
					AddPlayerInfo( -1, "item", 60028, 4 )
				endif
			endif
			if $random_item_2 > 9218
				if $random_item_2 <= 9518
					AddPlayerInfo( -1, "item", 20273, 1 )
				endif
			endif
			
			if $random_item_2 > 9518
				if $random_item_2 <= 9568
					AddPlayerInfo( -1, "item", 18, 1 )
				endif
			endif
			
			if $random_item_2 > 9568
				if $random_item_2 <= 9868
					AddPlayerInfo( -1, "item", 2449, 1 )
				endif
			endif
			
			if $random_item_2 > 9868
				if $random_item_2 <= 9888
					AddPlayerInfo( -1, "item", 53315, 1 )
				endif
			endif
			if $random_item_2 > 9888
				if $random_item_2 <= 9898
					AddPlayerInfo( -1, "item", 53325, 1 )
				endif
			endif
			if $random_item_2 > 9898
				if $random_item_2 <= 9998
					AddPlayerInfo( -1, "item", 63558, 1 )
				endif
			endif
			if $random_item_2 > 9998
				if $random_item_2 <= 10000
					AddPlayerInfo( -1, "item", 62062, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name, " opened a Blessing of the Tiger and received the Eastern Lion Mount!" )
					BC("chat", "servergroup", -1, "The hero ",#name, " opened a Blessing of the Tiger and received the Eastern Lion Mount!" )
				endif
			endif
		endif
		
	}
