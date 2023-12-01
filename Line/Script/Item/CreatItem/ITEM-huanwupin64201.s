	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/21
	//		Author:??
	//		TaskName:ITEM-huanwupin64201.s
	//		TaskID: ????(?)64201?????
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
		$count = GetPlayerInfo( -1, "item", 64201 )
		if 	$count < 10
			BC( "screen", "player", -1, "Insufficient Monster Heart (Minor)!" )
			return
		endif

		$count = SubPlayerInfo( -1, "item", 64201, 10)
		if $count == 0
			DropMonsterItems(-1, 60100 )
		endif


		
	}