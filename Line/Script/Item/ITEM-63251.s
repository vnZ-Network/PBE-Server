	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/18
	//		Author:???
	//		TaskName:ITEM-63251.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
		$ItemID1 = GetPlayerInfo( -1, "item", 63251 )
		if $ItemID1 < 1
			return
		endif
		
		$ItemID2 = GetPlayerInfo( -1, "item", 63248 )
		if $ItemID2 > 0
			$Sub0 = SubPlayerInfo( -1, "item", 63248, 1 )
			if $Sub0 != 0
				return
			endif
			$Sub1 = SubPlayerInfo( -1, "item", 63251, 1 )
			if $Sub1 != 0
				return
			endif
			DropMonsterItems( -1, 60093 )
		else
			BC( "screen", "player", -1, "You need the Silver Key to proceed!" )
			return
		endif		
	}