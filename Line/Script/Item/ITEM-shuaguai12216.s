	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/10
	//		Author:??
	//		TaskName:ITEM-shuaguai12216.s
	//		TaskID:??????12216,?????63192
	//
	//****************************************
	
	
	
	function OnUseItem(){

		

	//????
		$map_id = GetPlayerInfo( -1, "mapid" )
		$x = GetPlayerInfo( -1, "mapx" )
		$y = GetPlayerInfo( -1, "mapy" )

		//????????
		if $map_id != 129
			if $map_id != 149
				if $map_id != 150
					BC( "messagebox", "player", -1, "Item must be used near Emerton." )
					return
				endif
			endif
		endif
		
		if $x < 52
			BC( "messagebox", "player", -1, "Item must be used near Emerton." )
			return
		endif
		if $x > 92
			BC( "messagebox", "player", -1, "Item must be used near Emerton." )
			return
		endif
		if $y < 34
			BC( "messagebox", "player", -1, "Item must be used near Emerton." )
			return
		endif
		if $y > 56
			BC( "messagebox", "player", -1, "Item must be used near Emerton." )
			return
		endif

		$result = AddMonster( 20894, 1, $map_id, $x, $y, 1 ,-1)

	}