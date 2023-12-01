	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/11
	//		Author:??
	//		TaskName:ITEM-shuaguai12286.s
	//		TaskID:??????12286
	//
	//****************************************
	
	
	
	function OnUseItem(){

	//????
		$map_id = GetPlayerInfo( -1, "mapid" )
		$x = GetPlayerInfo( -1, "mapx" )
		$y = GetPlayerInfo( -1, "mapy" )

		//????????
		if $map_id != 8
			BC( "messagebox", "player", -1, "Unable to summon in current location!" )
			return
		endif
		
		if $x < 11
			BC( "messagebox", "player", -1, "Unable to summon in current coordinates!" )
			return
		endif
		if $x > 13
			BC( "messagebox", "player", -1, "Unable to summon in current coordinates!" )
			return
		endif
		if $y < 46
			BC( "messagebox", "player", -1, "Unable to summon in current coordinates!" )
			return
		endif
		if $y > 48
			BC( "messagebox", "player", -1, "Unable to summon in current coordinates!" )
			return
		endif

		$result = AddMonster( 40131, 1, $map_id, $x, $y, 1 ,-1)
		if $result == 0
			SubPlayerInfo(-1 , "item" , 12286 , 1)
		endif

	}