	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/22
	//		Author:	???
	//		TaskName:ITEM-king-63738.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		//???????
		$del_count = SubPlayerInfo( -1, "item", 63738, 1 )
		//??????????
		if $del_count == 0
			
			
			//-------------------------------------------------------------------------------------------------
			$random_item_2 = RandomNumber(1, 10000)
			
			if $random_item_2 <= 5
				AddPlayerInfo( -1, "item", 59285, 1 )
			endif
			
			if $random_item_2 > 5
				if $random_item_2 <= 6
					AddPlayerInfo( -1, "item", 59286, 1 )
				endif
			endif
			
			if $random_item_2 > 6
				if $random_item_2 <= 6388
					AddPlayerInfo( -1, "item", 5, 1 )
				endif
			endif
			
			if $random_item_2 > 6388
				if $random_item_2 <= 7188
					AddPlayerInfo( -1, "item", 60028, 4 )
				endif
			endif
		
			if $random_item_2 > 7188
				if $random_item_2 <= 7198
					AddPlayerInfo( -1, "item", 2460, 1 )
				endif
			endif
			if $random_item_2 > 7198
				if $random_item_2 <= 7898
					AddPlayerInfo( -1, "item", 63383, 1 )
				endif
			endif
			if $random_item_2 > 7898
				if $random_item_2 <= 9398
					AddPlayerInfo( -1, "item", 63422, 1 )
				endif
			endif
			
			if $random_item_2 > 9398
				if $random_item_2 <= 9698
					AddPlayerInfo( -1, "item", 2449, 1 )
				endif
			endif
			
			if $random_item_2 > 9698
				if $random_item_2 <= 9898
					AddPlayerInfo( -1, "item", 20273, 1 )
				endif
			endif
			
			if $random_item_2 > 9898
				if $random_item_2 <= 9900
					AddPlayerInfo( -1, "item", 62063, 1 )
					#name = GetPlayerInfo(-1 , "name")
					BC("screen", "servergroup", -1, "The hero ",#name, " has activated a King of the Wind, and has acquired a Shadow Dragon!" )
					BC("chat", "servergroup", -1, "The hero ",#name, " has activated a King of the Wind, and has acquired a Shadow Dragon!" )
				endif
			endif
			
			if $random_item_2 > 9900
				if $random_item_2 <= 10000
					AddPlayerInfo( -1, "item", 63558, 1 )
				endif
			endif
		endif
		
	}
