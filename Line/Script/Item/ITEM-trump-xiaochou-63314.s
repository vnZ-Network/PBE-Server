 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/4/15
	//		Author:???
	//		TaskName:ITEM-trump-xiaochou-63314.s
	//		TaskID:????  ??
	//****************************************
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level")
		if $level < 60
			BC( "screen", "player", -1, "You cannot wield the power of Clown's Magic Wand before LV60." )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" ,63314, 1 )
		if  $info != 0
			return
		endif
		AddTrump( -1, 11005, 1 )
		BC( "screen", "player", -1, "You have acquired a new Relic - Clown's Magic Wand!" )
		
	}