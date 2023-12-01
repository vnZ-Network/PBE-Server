	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/5/21
	//		Author:??
	//		TaskName:ITEM-huanwupin63386.s
	//		TaskID:??????63386
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
		
		$count = GetPlayerInfo( -1, "item", 63386 )
		if 	$count < 5
			return
		endif
		
		//??
		$revalue = SubPlayerInfo( -1, "item", 63386	, 5)
		//??????
		if $revalue == 0
			AddPlayerInfo( -1, "item", 12509, 1 )

		endif
		
		
	}