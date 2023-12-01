	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/5/19
	//		Author:??
	//		TaskName:ITEM-huanwupin63365.s
	//		TaskID:?????????
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
		
		$count = GetPlayerInfo( -1, "item", 63365 )
		if 	$count < 5
			BC( "screen", "player", -1, "You need at least 5 Rainbow Meteors in bag!" )
			return
		endif
		
		//??
		$revalue = SubPlayerInfo( -1, "item", 63365	, 5)
		//??????
		if $revalue == 0
			AddPlayerInfo( -1, "item", 63383, 1 )
		endif
		
		
	}