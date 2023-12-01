	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/02/18
	//		Author:???
	//		TaskName:HD-shifu-ITEM-63231.s
	//		TaskID:50?????
	//
	//****************************************
	
	function OnUseItem(){
	
	//??50????????
		$count = GetPlayerInfo( -1, "item", 63231 )
		if $count < 1
			BC( "screen", "player", -1, "You don't have the LV50 Master Pack!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "dialogbox", "player", -1, "You need at least 2 empty slots in your bag!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63231, 1 )
		//??????
		
		if $result != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 60095, 2 )
		AddPlayerInfo( -1, "item", 63213, 30 )
	
	}