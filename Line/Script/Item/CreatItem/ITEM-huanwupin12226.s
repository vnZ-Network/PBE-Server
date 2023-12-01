	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/01
	//		Author:??
	//		TaskName:ITEM-huanwupin12226.s
	//		TaskID: ????12226?12225
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

		$revalue = SubPlayerInfo( -1, "item", 12226, 1)

		//??????
		if $revalue == 0
			AddPlayerInfo( -1, "item", 12225, 1 )
			BC( "screen", "player", -1, "You have acquire a page with a signature on it!" )
		endif
		
		
	}