	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/27
	//		Author:??
	//		TaskName:ITEM-shuaguai12255.s
	//		TaskID:??????12255
	//
	//****************************************
	
	
	
	function OnUseItem(){

	//????
		$map_id = GetPlayerInfo( -1, "mapid" )
		$x = GetPlayerInfo( -1, "mapposx" )
		$y = GetPlayerInfo( -1, "mapposy" )
		$x1 = GetPlayerInfo( -1, "mapx" )
		$y1 = GetPlayerInfo( -1, "mapy" )

		//????????
		if $map_id != 4
			BC( "messagebox", "player", -1, "Unable to summon in current location!" )
			return
		endif
		
		if $x < 91
			BC( "messagebox", "player", -1, "Unable to summon in current coordinates!" )
			return
		endif
		if $x > 101
			BC( "messagebox", "player", -1, "Unable to summon in current coordinates!" )
			return
		endif
		if $y < 124
			BC( "messagebox", "player", -1, "Unable to summon in current coordinates!" )
			return
		endif
		if $y > 134
			BC( "messagebox", "player", -1, "Unable to summon in current coordinates!" )
			return
		endif

		$result = AddMonster( 30112, 1, $map_id , $x1 , $y1 , 1 , -1 )
		if $result == 0
			SubPlayerInfo(-1 , "item" , 12255 , 1)
		endif

	}