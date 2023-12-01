	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/5/11
	//		Author:??
	//		TaskName:ITEM-yaoshuibao-63384.s
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
		
	
		$del_count = SubPlayerInfo( -1, "item", 63384, 1 )
		//????????
		if $del_count == 0
			
			//-------------------------------------------------------------------------------------------------
			$random_item_2 = RandomNumber(1 , 4)
			
			if $random_item_2 == 1
				AddPlayerInfo( -1, "item", 6529, 1 )
			endif
			if $random_item_2 == 2
				AddPlayerInfo( -1, "item", 6530, 1 )
			endif
			if $random_item_2 == 3
				AddPlayerInfo( -1, "item", 6531, 1 )
			endif
			if $random_item_2 == 4
				AddPlayerInfo( -1, "item", 6532, 1 )
			endif
		
			
		endif
		
	}
