	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/21
	//		Author:??
	//		TaskName:ITEM-huanwupin64204.s
	//		TaskID: ????(?)64204?????
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
		$count = GetPlayerInfo( -1, "item", 64204 )
		if 	$count < 25
			BC( "screen", "player", -1, "Insufficient Advanced Monster Heart (Minor)!" )
			return
		endif

		$count = SubPlayerInfo( -1, "item", 64204, 25)
		if $count == 0
			DropMonsterItems(-1, 60103 )
		endif


		
	}