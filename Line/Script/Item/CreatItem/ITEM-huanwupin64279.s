	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/3/22
	//		Author:??
	//		TaskName:ITEM-huanwupin64279.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
	
		//??????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		//??1?????
		$count = GetPlayerInfo( -1, "item", 64279 )
		if $count < 5
			BC( "screen", "player", -1, "Insufficient Universe Emblem Fragment!" )
			return
		endif
		
		//??????
		$revalue = SubPlayerInfo( -1, "item", 64279, 5)

		//??????
		if $revalue == 0 
			AddPlayerInfo( -1, "item", 2312, 1 )
		endif
		
		
	}