	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/27
	//		Author:???
	//		TaskName:HD-tudi-ITEM-64555.s
	//		TaskID:70?????
	//
	//****************************************
	
	function OnUseItem(){
	
	//??70????????
		$count = GetPlayerInfo( -1, "item", 64555 )
		if $count < 1
			BC( "screen", "player", -1, "You haven't acquired a LV70 Student's Pack." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "Insufficient space in your bag." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64555, 1 )
		//??????
		
		if $result != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 63213, 15 )
	
	}