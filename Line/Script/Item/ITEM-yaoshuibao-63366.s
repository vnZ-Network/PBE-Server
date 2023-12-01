	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/5/11
	//		Author:??
	//		TaskName:ITEM-yaoshuibao-63366.s
	//		TaskID:???
	//
	//****************************************
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
	
		$del_count = SubPlayerInfo( -1, "item", 63366, 1 )
		//????????
		if $del_count == 0
			
			//-------------------------------------------------------------------------------------------------
			$random_item_2 = RandomNumber(1 , 6)
			
			if $random_item_2 == 1
				AddPlayerInfo( -1, "item", 6475, 1 )
			endif
			if $random_item_2 == 2
				AddPlayerInfo( -1, "item", 6476, 1 )
			endif
			if $random_item_2 == 3
				AddPlayerInfo( -1, "item", 6477, 1 )
			endif
			if $random_item_2 == 4
				AddPlayerInfo( -1, "item", 6478, 1 )
			endif
			if $random_item_2 == 5
				AddPlayerInfo( -1, "item", 6479, 1 )
			endif
			if $random_item_2 == 6
				AddPlayerInfo( -1, "item", 6480, 1 )
			endif
			
		endif
		
	}
