	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/10
	//		Author:??
	//		TaskName:ITEM-shuaguai12229.s
	//		TaskID:??????12229
	//
	//****************************************
	
	
	
	function OnUseItem(){

		

	//????
		$map_id = GetPlayerInfo( -1, "mapid" )
		$x = GetPlayerInfo( -1, "mapx" )
		$y = GetPlayerInfo( -1, "mapy" )

		//????????
		if $map_id != 86
			BC( "messagebox", "player", -1, "Please summon beside Turu." )
			return
		endif
		
		if $x < 64
			BC( "messagebox", "player", -1, "Please summon beside Turu." )
			return
		endif
		if $x > 75
			BC( "messagebox", "player", -1, "Please summon beside Turu." )
			return
		endif
		if $y < 81
			BC( "messagebox", "player", -1, "Please summon beside Turu." )
			return
		endif
		if $y > 93
			BC( "messagebox", "player", -1, "Please summon beside Turu." )
			return
		endif
		

		
		$result = AddMonster( 20897, 1, $map_id, $x, $y, 1 ,-1)

	}