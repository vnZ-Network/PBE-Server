	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/01
	//		Author:??
	//		TaskName:ITEM-huanwupin4638.s
	//		TaskID:?????????????????????Lv6
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
		$count = GetPlayerInfo( -1, "item", 4638 )
		if $count < 5
			BC( "screen", "player", -1, "Insufficient Mutated Agility Essence!" )
			return
		endif
		
		//??????
		$revalue = SubPlayerInfo( -1, "item", 4638, 5)

		//??????
		if $revalue == 0 
		        AddPlayerInfo( -1, "item", 6176, 1 )
		endif
		
		
	}