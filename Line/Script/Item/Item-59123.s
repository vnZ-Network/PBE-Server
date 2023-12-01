	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/28
	//		Author:???
	//		TaskName:Item-59123.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
		
		$nfo = SubPlayerInfo ( -1 , "item" , 59123 , 1 )
		if $nfo != 0
			return
		endif
		AddExpAddons( -1 , 1800 , 0 )
		BC( "screen", "player", -1, "You gain double EXP  for 0.5 hour." )
		
	}

