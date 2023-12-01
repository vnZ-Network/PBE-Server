	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/28
	//		Author:???
	//		TaskName:Hero-Item-64385.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
	
		$lv = GetPlayerInfo( -1 , "level" )
		if $lv < 60
			BC( "screen", "player", -1, "You cannot use Angel's Will until LV60!" )
			return
		endif
		$a = GetPlayerInfo( -1 , "item" , 64385 )	
		if $a < 30
			BC( "screen", "player", -1, "You need 30 Angel's Wills to build Angelic Armor!" )
			return
		endif
		$result = AddRider( -1 , 201 )
		if $result == 0
			SubPlayerInfo( -1 , "item" , 64385 , 30 )
			return
		endif
		
	}

