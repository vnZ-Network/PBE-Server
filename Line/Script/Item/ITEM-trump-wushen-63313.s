 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/4/15
	//		Author:???
	//		TaskName:ITEM-trump-wushen-63313.s
	//		TaskID:????  ??
	//****************************************
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level")
		if $level < 60
			BC( "screen", "player", -1, "You cannot wield the power of Soul of Valkyrie before LV60." )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" ,63313, 1 )
		if  $info != 0
			return
		endif
		AddTrump( -1, 11003, 1 )
		BC( "screen", "player", -1, "You have acquired a new Relic - Soul of Valkyrie!" )
		
	}