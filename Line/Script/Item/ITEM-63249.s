	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/18
	//		Author:???
	//		TaskName:ITEM-63249.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnUseItem(){
		$ItemID1 = GetPlayerInfo( -1, "item", 63249 )
		if $ItemID1 < 1
			return
		endif
		
		$ItemID2 = GetPlayerInfo( -1, "item", 63246 )
		if $ItemID2 > 0
			$Sub0 = SubPlayerInfo( -1, "item", 63246, 1 )
			if $Sub0 != 0
				return
			endif
			$Sub1 = SubPlayerInfo( -1, "item", 63249, 1 )
			if $Sub1 != 0
				return
			endif
			DropMonsterItems( -1, 60091 )
		else
			BC( "screen", "player", -1, "You need the Bronze Key to proceed!" )
			return
		endif		
	}