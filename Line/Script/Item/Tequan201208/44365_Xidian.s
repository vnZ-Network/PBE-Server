//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/12
	//		Author:??
	//		TaskName:44365_Xidian.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
	
		$level = GetPlayerInfo(-1 , "level")
		if $level < 30
			BC( "screen", "player", -1, "You must be at least LV30 to use that!" )
			return
		endif
		
		
		$Sub0 = SubPlayerInfo( -1, "item", 44365, 1 )
		if $Sub0 != 0
			return
		endif
			
		RestorePoint(-1)
		BC( "screen", "player", -1, "Allocated attribute points have all been turned into Potential points!" )
			
	}