	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/28
	//		Author:???
	//		TaskName:Hero-Item-63502.s
	//		TaskID:?????
	//****************************************
	
	function OnUseItem(){
		
		$result = HaveTitle( -1 , 21 )
		if $result != 0
			BC( "screen", "player", -1, "To open Apotheosis Pack, you must be over LV70, and possess the Demi-God title." )
			return
		endif
		$lv = GetPlayerInfo ( -1 , "level" )
		if $lv < 70
			BC( "screen", "player", -1, "To open Apotheosis Pack, you must be over LV70, and possess the Demi-God title." )
			return
		endif
		$no_bag = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $no_bag < 9
			BC( "screen", "player", -1, "You have less than 9 empty slots in your bag." )
			return
		endif
		$nfo = SubPlayerInfo ( -1 , "item" , 63502 , 1 )
		if $nfo != 0
			return
		endif
		AddPlayerInfo( -1 , "item" , 64383 , 1 )
		AddPlayerInfo( -1 , "item" , 5963 , 5 )
		AddPlayerInfo( -1 , "item" , 2147 , 1 )
		AddPlayerInfo( -1 , "item" , 2211 , 1 )
		AddPlayerInfo( -1 , "item" , 64384 , 1 )
	}

