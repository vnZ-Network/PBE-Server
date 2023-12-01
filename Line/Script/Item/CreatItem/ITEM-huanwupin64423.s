	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/14
	//		Author:??
	//		TaskName:ITEM-huanwupin64423.s
	//		TaskID:????3??????64423
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
		
		$count = GetPlayerInfo( -1, "item", 64423 )
		if 	$count < 1
			return
		endif
		
		//??
		$revalue = SubPlayerInfo( -1, "item", 64423	, 1)
		//??????
		if $revalue == 0
			AddPlayerInfo( -1, "item", 6262, 5 )
			AddPlayerInfo( -1, "item", 6274, 5 )
			AddPlayerInfo( -1, "item", 6286, 5 )
		endif
		
		
	}