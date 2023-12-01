	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/01
	//		Author:??
	//		TaskName:ITEM-huanwupin4601.s
	//		TaskID:??????????(?)?????
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
		$count = GetPlayerInfo( -1, "item", 64002 )
		if 	$count < 10
			BC( "screen", "player", -1, "Insufficient Artistic Statues!" )
			return
		endif
		
		//??2?????
		$count = GetPlayerInfo( -1, "item", 64122 )
		if 	$count < 1
			BC( "screen", "player", -1, "You need Midas Scroll (Medium)!" )
			return
		endif
		
		//??????
		SubPlayerInfo( -1, "item", 64002, 10)
		SubPlayerInfo( -1, "item", 64122, 1)

		//??????
		AddPlayerInfo( -1, "item", 64102, 1 )
		//BC( "screen", "player", -1, "GUID:06041000003" )
		
		
	}