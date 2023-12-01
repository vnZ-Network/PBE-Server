	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/21
	//		Author:??
	//		TaskName:ITEM-huanwupin64206.s
	//		TaskID: ????(?)64206?????
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
		$count = GetPlayerInfo( -1, "item", 64206 )
		if 	$count < 35
			BC( "screen", "player", -1, "Insufficient Advanced Monster Heart (Major)!" )
			return
		endif

		$count = SubPlayerInfo( -1, "item", 64206, 35)
		if $count == 0
			DropMonsterItems(-1, 60105 )
		endif


		
	}