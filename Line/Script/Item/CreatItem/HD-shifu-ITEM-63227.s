	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/02/18
	//		Author:???
	//		TaskName:HD-shifu-ITEM-63227.s
	//		TaskID:30?????
	//
	//****************************************
	
	function OnUseItem(){
	
	//??30????????
		$count = GetPlayerInfo( -1, "item", 63227 )
		if $count < 1
			BC( "screen", "player", -1, "You don't have the LV30 Master Pack!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "dialogbox", "player", -1, "You need at least 2 empty slots in your bag!" )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 63227, 1 )
		//??????
		
		if $result != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 63213, 10 )
	
	}