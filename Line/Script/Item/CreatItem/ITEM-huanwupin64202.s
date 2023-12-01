	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/11
	//		Author:
	//		TaskName:ITEM-huanwupin64202.s
	//		TaskID: ????(?)64202?????
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
		$count = GetPlayerInfo( -1, "item", 64202 )
		if 	$count < 15
			BC( "screen", "player", -1, "Insufficient Monster Heart (Medium)!" )
			return
		endif

		$count = SubPlayerInfo( -1, "item", 64202, 15)
		if $count == 0
			DropMonsterItems(-1, 60101 )
		endif


		
	}