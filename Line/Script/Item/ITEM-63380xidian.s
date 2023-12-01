//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/12
	//		Author:??
	//		TaskName:ITEM-63380xidian.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
	
		$level = GetPlayerInfo(-1 , "level")
		if $level < 30
			BC( "screen", "player", -1, "You must be at least LV30 to use that!" )
			return
		endif
		
		
		$Sub0 = SubPlayerInfo( -1, "item", 63380, 1 )
		if $Sub0 != 0
			return
		endif
			
		RestorePoint(-1)
		BC( "screen", "player", -1, "Allocated attribute points have all been turned into Potential points!" )
			
	}