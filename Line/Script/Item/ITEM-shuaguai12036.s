	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/12/26
	//		Author:??
	//		TaskName:ITEM-shuaguai12036.s
	//		TaskID:??????12036
	//
	//****************************************
	
	
	
	function OnUseItem(){

	//????
		$map_id = GetPlayerInfo( -1, "mapid" )
		$x = GetPlayerInfo( -1, "mapx" )
		$y = GetPlayerInfo( -1, "mapy" )

		//????????
		if $map_id != 86
			BC( "messagebox", "player", -1, "Unable to summon in current location!" )
			return
		endif
		
		if $x < 39
			BC( "messagebox", "player", -1, "Unable to summon in current coordinates!" )
			return
		endif
		if $x > 49
			BC( "messagebox", "player", -1, "Unable to summon in current coordinates!" )
			return
		endif
		if $y < 60
			BC( "messagebox", "player", -1, "Unable to summon in current coordinates!" )
			return
		endif
		if $y > 70
			BC( "messagebox", "player", -1, "Unable to summon in current coordinates!" )
			return
		endif

		$result = AddMonster( 20910, 1, $map_id, $x, $y, 1 ,-1)


	}
