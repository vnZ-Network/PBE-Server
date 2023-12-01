	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/12/28
	//		Author:??
	//		TaskName:ITEM-huanwupin12031.s
	//		TaskID:??????,????????
	//
	//****************************************
	
	
	
	function OnUseItem(){

		$count = GetPlayerInfo( -1, "item", 12031 )
		if $count < 1
			return
		endif
		
		
		$map_id = GetPlayerInfo(-1 , "mapid")
		$map_x = GetPlayerInfo(-1 , "mapx")
		$map_y = GetPlayerInfo(-1 , "mapy")
		

		
		if $map_id == 8
			if $map_x >= 37
				if $map_x <= 39
					if $map_y >= 42
						if $map_y <= 44
							$revalue = SubPlayerInfo( -1, "item", 12031, 1)
							if $revalue == 0
								AddPlayerInfo( -1, "item", 12030, 1 )
								return
							endif
						endif
					endif
				endif
			endif
		endif
		BC( "screen", "player", -1, "Unable to use items here!" )
	}
