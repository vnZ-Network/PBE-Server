	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/11
	//		Author:??
	//		TaskName:90-other-Item-12713.s
	//		TaskID:
	//****************************************
 
	
	function OnUseItem(){
	
	//????????1687??
		$task = IsTaskAccept( -1, 1687 )
		if $task != 0
			return
		endif
		
	//??????????
		$x = GetPlayerInfo( -1 , "mapx")
		$y = GetPlayerInfo( -1 , "mapy")
		$mapid = GetPlayerInfo( -1 , "mapid")
		
	//???????????
		if $mapid != 245
			BC( "screen", "player", -1, "You can not use the seal here.")
			return
		endif
		
	//??????????? x(18-20),y(18-20),????5?60084
		if $x < 19
			BC( "screen", "player", -1, "You can not use the seal here.")
			return
		endif
		if $x > 21
			BC( "screen", "player", -1, "You can not use the seal here.")
			return
		endif
		if $y < 19
			BC( "screen", "player", -1, "You can not use the seal here.")
			return
		endif
		if $y > 20
			BC( "screen", "player", -1, "You can not use the seal here.")
			return
		endif
		AddMonster( 55084 , 5 , $mapid , $x , $y , 1 , -1 )
		BC( "screen", "player", -1, "The seal is ineffective, and it enraged the monsters. ")
		

		
	}