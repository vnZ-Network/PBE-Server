	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/28
	//		Author:???
	//		TaskName:Hero-Item-63523.s
	//		TaskID:??????
	//****************************************
	
	function OnUseItem(){
		
		
		$lv = GetPlayerInfo ( -1 , "level" )
		if $lv < 30
			BC( "screen", "player", -1, "You cannot unpack until LV30!" )
			return
		endif
		$no_bag = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $no_bag < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		$nfo = SubPlayerInfo ( -1 , "item" , 63523 , 1 )
		if $nfo != 0
			return
		endif
		AddPlayerInfo( -1 , "item" , 63501 , 10 )
		
	}

