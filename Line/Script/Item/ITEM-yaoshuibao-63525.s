	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/5/11
	//		Author:??
	//		TaskName:ITEM-yaoshuibao-63366.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnUseItem(){
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
	
		$del_count = SubPlayerInfo( -1, "item", 63525, 1 )
		//????????
		if $del_count == 0
			
			//-------------------------------------------------------------------------------------------------
			$random_item_2 = RandomNumber(1 , 6)
			
			if $random_item_2 == 1
				AddPlayerInfo( -1, "item", 6606, 1 )
			endif
			if $random_item_2 == 2
				AddPlayerInfo( -1, "item", 6607, 1 )
			endif
			if $random_item_2 == 3
				AddPlayerInfo( -1, "item", 6608, 1 )
			endif
			if $random_item_2 == 4
				AddPlayerInfo( -1, "item", 6609, 1 )
			endif
			if $random_item_2 == 5
				AddPlayerInfo( -1, "item", 6610, 1 )
			endif
			if $random_item_2 == 6
				AddPlayerInfo( -1, "item", 6611, 1 )
			endif
			
		endif
		
	}
