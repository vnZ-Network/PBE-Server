	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/09
	//		Author:??
	//		TaskName:ITEM-huanwupin12180.s
	//		TaskID:??®???¯??12180,12181,12182?????????
	//
	//****************************************
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level" )
		//????
		if $level < 44
			BC( "screen", "player", -1, "Level too low to use this item!" )
			return
		endif
		//??????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 3 )
		
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient quest bag slots!" )
			return
		endif
		
		//??1?????
		$count = GetPlayerInfo( -1, "item", 12180 )
		if 	$count < 1
			BC( "screen", "player", -1, "You don't have Naga King Portrait?!" )
			return
		endif
		
		//??2?????
		$count = GetPlayerInfo( -1, "item", 12181 )
		if 	$count < 1
			BC( "screen", "player", -1, "You don't have Naga King Portrait?!" )
			return
		endif
		//??3?????
		$count = GetPlayerInfo( -1, "item", 12182 )
		if 	$count < 1
			BC( "screen", "player", -1, "You don't have Naga King Portrait?!" )
			return
		endif
		
		//??????
		SubPlayerInfo( -1, "item", 12180, 1)
		SubPlayerInfo( -1, "item", 12181, 1)
		SubPlayerInfo( -1, "item", 12182, 1)
		//??????
		AddPlayerInfo( -1, "item", 12183, 1 )
		BC( "screen", "player", -1, "You have acquired Naga King Portrait!" )
		
		
	}