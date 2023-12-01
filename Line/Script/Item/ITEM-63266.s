	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/18
	//		Author:???
	//		TaskName:ITEM-63266.s
	//		TaskID:????(???)
	//
	//****************************************
	
	function OnUseItem(){
		$ItemID1 = GetPlayerInfo( -1, "item", 63266 )
		if $ItemID1 < 1
			return
		endif
		
		$ItemID2 = GetPlayerInfo( -1, "item", 63253 )
		if $ItemID2 > 0
			$Sub0 = SubPlayerInfo( -1, "item", 63266, 1 )
			if $Sub0 != 0
				return
			endif
			$Sub1 = SubPlayerInfo( -1, "item", 63253, 20 )
			if $Sub1 != 0
				return
			endif
			AddPlayerInfo( -1, "item", 37006, 1 )
		else
			BC( "screen", "player", -1, "You need at least 20 Crystals of Time!" )
			return
		endif		
	}