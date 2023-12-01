	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/14
	//		Author:??
	//		TaskName:ITEM-huanwupin64427.s
	//		TaskID:????3??????64427
	//
	//****************************************
	
	function OnUseItem(){
	
		//??????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		
		//??????????
		if $bag_count < 3
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$count = GetPlayerInfo( -1, "item", 64427 )
		if 	$count < 1
			return
		endif
		
		//??
		$revalue = SubPlayerInfo( -1, "item", 64427	, 1)
		//??????
		if $revalue == 0
			AddPlayerInfo( -1, "item", 6264, 5 )
			AddPlayerInfo( -1, "item", 6276, 5 )
			AddPlayerInfo( -1, "item", 6288, 5 )
		endif
		
		
	}