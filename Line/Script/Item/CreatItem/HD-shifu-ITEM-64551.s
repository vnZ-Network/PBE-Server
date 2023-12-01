	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/27
	//		Author:???
	//		TaskName:HD-shifu-ITEM-64551.s
	//		TaskID:60?????(?)
	//
	//****************************************
	
	function OnUseItem(){
	
	//??60????????
		$count = GetPlayerInfo( -1, "item", 64551 )
		if $count < 1
			BC( "screen", "player", -1, "You haven't acquired a LV60 Master's Pack." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "dialogbox", "player", -1, "You do not have 2 empty bag slots." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 64551, 1 )
		//??????
		
		if $result != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 63213, 5 )
	
	}