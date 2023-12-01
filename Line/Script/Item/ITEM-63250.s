	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/18
	//		Author:???
	//		TaskName:ITEM-63250.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnUseItem(){
		$ItemID1 = GetPlayerInfo( -1, "item", 63250 )
		if $ItemID1 < 1
			return
		endif
		
		$ItemID2 = GetPlayerInfo( -1, "item", 63247 )
		if $ItemID2 > 0
			$Sub0 = SubPlayerInfo( -1, "item", 63247, 1 )
			if $Sub0 != 0
				return
			endif
			$Sub1 = SubPlayerInfo( -1, "item", 63250, 1 )
			if $Sub1 != 0
				return
			endif
			DropMonsterItems( -1, 60092 )
		else
			BC( "screen", "player", -1, "You need the Iron Key to proceed!" )
			return
		endif		
	}