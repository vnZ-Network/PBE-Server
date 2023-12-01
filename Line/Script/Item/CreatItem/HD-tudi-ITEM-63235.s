	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/02/18
	//		Author:???
	//		TaskName:HD-tudi-ITEM-63235.s
	//		TaskID:40?????
	//
	//****************************************
	
	function OnUseItem(){
	
	//??30????????
		$count = GetPlayerInfo( -1, "item", 63235 )
		if $count < 1
			BC( "screen", "player", -1, "You don't have the LV30 Disciple Pack!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63235, 1 )
		//??????
		
		if $result != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 63213, 15 )
	
	}