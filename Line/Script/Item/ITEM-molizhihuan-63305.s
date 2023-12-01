 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/4/15
	//		Author:???
	//		TaskName:ITEM-molizhihuan-63305.s
	//		TaskID:????  ??
	//****************************************
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level")
		if $level < 60
			BC( "screen", "player", -1, "You cannot wield the power of Arcane Fingerband before LV60." )
			return
		endif
		
		$a = AddTrump( -1, 11007, 1 )
		if $a == 0 
			SubPlayerInfo( -1 , "item" ,63305, 1 )
			BC( "screen", "player", -1, "You have acquired a new Relic - Arcane Fingerband!" )
		else
			BC( "screen", "player", -1, "You have Relic [Arcane Fingerband] already!" )
		endif
		
	}