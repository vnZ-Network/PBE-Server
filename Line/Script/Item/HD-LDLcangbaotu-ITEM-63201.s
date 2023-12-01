	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/01/09
	//		Author:??
	//		TaskName:HD-LDLcangbaotu-ITEM-63201.s
	//		TaskID:?????
	//
	//****************************************
	
	
	
	function OnUseItem(){
	
	//	??????
		$treasure_map_ID = 121
		$treasure_map_X = 35
		$treasure_map_Y = 42
	//????ID
		$treasure_ID = 63201
		
	//????
		$map_id = GetPlayerInfo( -1, "mapid" )
		$x = GetPlayerInfo( -1, "mapx" )
		$y = GetPlayerInfo( -1, "mapy" )

		//????????
		if $map_id != $treasure_map_ID
			BC( "messagebox", "player", -1, "The location indicated by the treasure map is not in this map!" )
			return
		endif
		
		$temp_X = $treasure_map_X + 1
		if $x > $temp_X
			BC( "messagebox", "player", -1, "The location indicated by the treasure map is not here." )
			return
		endif
		$temp_X = $treasure_map_X - 1
		if $x < $temp_X
			BC( "messagebox", "player", -1, "The location indicated by the treasure map is not here." )
			return
		endif
		$temp_Y = $treasure_map_Y + 1
		if $y > $temp_Y
			BC( "messagebox", "player", -1, "The location indicated by the treasure map is not here." )
			return
		endif
		$temp_Y = $treasure_map_Y - 1
		if $y < $temp_Y
			BC( "messagebox", "player", -1, "The location indicated by the treasure map is not here." )
			return
		endif
		
	

		//?????
		$del_count = SubPlayerInfo( -1, "item", $treasure_ID, 1 )
		//??????
		if $del_count != 0
			return
		endif
		DropMonsterItems(-1, 60061 )

	}