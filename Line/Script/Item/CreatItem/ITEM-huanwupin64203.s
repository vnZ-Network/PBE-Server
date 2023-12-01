	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/21
	//		Author:??
	//		TaskName:ITEM-huanwupin64203.s
	//		TaskID: ????(?)64203?????
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
		$count = GetPlayerInfo( -1, "item", 64203 )
		if 	$count < 20
			BC( "screen", "player", -1, "Insufficient Monster Heart (Major)!" )
			return
		endif

		$count = SubPlayerInfo( -1, "item", 64203, 20)
		if $count == 0
			DropMonsterItems(-1, 60102 )
		endif


		
	}