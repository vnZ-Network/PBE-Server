	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/12/28
	//		Author:??
	//		TaskName:ITEM-huanwupin64231.s
	//		TaskID:??????
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
		$count = GetPlayerInfo( -1, "item", 64231 )
		if $count < 5
			BC( "screen", "player", -1, "Insufficient Soul Insignia Fragment!" )
			return
		endif
		
		//??????
		$revalue = SubPlayerInfo( -1, "item", 64231, 5)

		//??????
		if $revalue == 0 
			AddPlayerInfo( -1, "item", 2201, 1 )
		endif
		
		
	}
