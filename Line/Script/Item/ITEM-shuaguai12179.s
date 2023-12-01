	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/09
	//		Author:??
	//		TaskName:ITEM-shuaguai12179.s
	//		TaskID:?????,???????
	//
	//****************************************
	
	
	
	function OnUseItem(){
	

		
		$level = GetPlayerInfo( -1, "level" )
		//???????
		if $level < 50
			BC( "screen", "player", -1, "Level too low to use this item!" )
			return
		endif
	//????
		$map_id = GetPlayerInfo( -1, "mapid" )
		$x = GetPlayerInfo( -1, "mapx" )
		$y = GetPlayerInfo( -1, "mapy" )

		//????????
		if $map_id != 88
			BC( "messagebox", "player", -1, "Unable to use that in this area." )
			return
		endif
		if $x < 102
			BC( "messagebox", "player", -1, "Unable to use that in current coordinates." )
			return
		endif
		if $x > 104
			BC( "messagebox", "player", -1, "Unable to use that in current coordinates." )
			return
		endif
		if $y < 59
			BC( "messagebox", "player", -1, "Unable to use that in current coordinates." )
			return
		endif
		if $y > 61
			BC( "messagebox", "player", -1, "Unable to use that in current coordinates." )
			return
		endif
		
		//??
		$del_count = SubPlayerInfo( -1, "item", 12179, 1 )
		//????????
		if $del_count != 0
			return
		endif
		
		$result = AddMonster( 20158, 1, $map_id, $x, $y, 1 ,-1)

	}