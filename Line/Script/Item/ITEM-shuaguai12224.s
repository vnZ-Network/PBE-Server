	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/10
	//		Author:??
	//		TaskName:ITEM-shuaguai12224.s
	//		TaskID:??????12224
	//
	//****************************************
	
	
	
	function OnUseItem(){

		

	//????
		$map_id = GetPlayerInfo( -1, "mapid" )
		$x = GetPlayerInfo( -1, "mapx" )
		$y = GetPlayerInfo( -1, "mapy" )

		//????????
		if $map_id != 119
			BC( "messagebox", "player", -1, "Item must be used near Dragon Emperor." )
			return
		endif
		
		if $x < 80
			BC( "messagebox", "player", -1, "Item must be used near Dragon Emperor." )
			return
		endif
		if $x > 87
			BC( "messagebox", "player", -1, "Item must be used near Dragon Emperor." )
			return
		endif
		if $y < 29
			BC( "messagebox", "player", -1, "Item must be used near Dragon Emperor." )
			return
		endif
		if $y > 45
			BC( "messagebox", "player", -1, "Item must be used near Dragon Emperor." )
			return
		endif
		

		
		$result = AddMonster( 20896, 1, $map_id, $x, $y, 1 ,-1)

	}