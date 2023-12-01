	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/28
	//		Author:???
	//		TaskName:Hero-Item-64407.s
	//		TaskID:?????
	//****************************************
	
	function OnUseItem(){
		
		$nfo = SubPlayerInfo ( -1 , "item" , 64407 , 1 )
		if $nfo != 0
			return
		endif
		AddExpAddons( -1 , 3600 , 0 )
		BC( "screen", "player", -1, "You gained a double EXP bonus for 1 hour." )
		
	}

