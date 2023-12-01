	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/21
	//		Author:??
	//		TaskName:ITEM-huanwupin64205.s
	//		TaskID: ????(?)64205?????
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
		$count = GetPlayerInfo( -1, "item", 64205 )
		if 	$count < 30
			BC( "screen", "player", -1, "Insufficient Advanced Monster Heart (Medium)!" )
			return
		endif

		$count = SubPlayerInfo( -1, "item", 64205, 30)
		if $count == 0
			DropMonsterItems(-1, 60104 )
		endif


		
	}