	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/01
	//		Author:??
	//		TaskName:ITEM-huanwupin4622.s
	//		TaskID:?????????????????????lv4
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
		$count = GetPlayerInfo( -1, "item", 4622 )
		if $count < 5
			BC( "screen", "player", -1, "Insufficient Mutated Life Fruit!" )
			return
		endif
		
		//??????
		$revalue = SubPlayerInfo( -1, "item", 4622, 5)

		//??????
		if $revalue == 0 
		        AddPlayerInfo( -1, "item", 6144, 1 )
		endif
		
		
	}