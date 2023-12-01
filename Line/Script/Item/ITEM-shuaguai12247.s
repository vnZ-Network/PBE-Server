	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/27
	//		Author:??
	//		TaskName:ITEM-shuaguai12247.s
	//		TaskID:??????12247
	//
	//****************************************
	
	
	
	function OnUseItem(){

	//????
		$map_id = GetPlayerInfo( -1, "mapid" )
		$x = GetPlayerInfo( -1, "mapx" )
		$y = GetPlayerInfo( -1, "mapy" )

		//????????
		if $map_id != 4
			BC( "messagebox", "player", -1, "Unable to summon in current location!" )
			return
		endif
		
		if $x < 64
			BC( "messagebox", "player", -1, "Unable to summon in current coordinates!" )
			return
		endif
		if $x > 67
			BC( "messagebox", "player", -1, "Unable to summon in current coordinates!" )
			return
		endif
		if $y < 107
			BC( "messagebox", "player", -1, "Unable to summon in current coordinates!" )
			return
		endif
		if $y > 110
			BC( "messagebox", "player", -1, "Unable to summon in current coordinates!" )
			return
		endif

		$result = AddMonster( 30113, 1, $map_id, $x, $y, 1 ,-1)
		if $result == 0
			SubPlayerInfo(-1 , "item" , 12247 ,1)
		endif

	}