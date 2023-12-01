	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/28
	//		Author:???
	//		TaskName:Item-59110.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
		
		$nfo = SubPlayerInfo ( -1 , "item" , 59110 , 1 )
		if $nfo != 0
			return
		endif
		AddExpAddons( -1 , 3600 , 0 )
		BC( "screen", "player", -1, "You gain double EXP for 1 hour." )
		
	}

