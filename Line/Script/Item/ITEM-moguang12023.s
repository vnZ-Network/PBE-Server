	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/12/28
	//		Author:??
	//		TaskName:ITEM-moguang12023.s
	//		TaskID:????????,????
	//
	//****************************************
	
	function OnUseItem(){
	
		//??????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
	
	
		$count = GetPlayerInfo( -1, "item", 12023 )
		if $count < 1
			return
		endif
		
		
		$map_id = GetPlayerInfo(-1 , "mapid")
		$map_x = GetPlayerInfo(-1 , "mapx")
		$map_y = GetPlayerInfo(-1 , "mapy")
		
		if $map_id == 0
			if $map_x >= 71
				if $map_x <= 73
					if $map_y >= 59
						if $map_y <= 61
							//??????,????????????
							$count = GetPlayerInfo( -1, "item", 12040 )
							if $count >= 1
								BC( "screen", "player", -1, "You have the Easter Island scenery picture already." )
								return
							endif
							SubPlayerInfo( -1, "item", 12023, 1)
							AddPlayerInfo( -1, "item", 12040, 1 )
							return
						endif
					endif
				endif
			endif
		endif


		if $map_id == 90
			if $map_x >= 89
				if $map_x <= 91
					if $map_y >= 89
						if $map_y <= 91
							//????????,?????????
							$count = GetPlayerInfo( -1, "item", 12039 )
							if $count >= 1
								BC( "screen", "player", -1, "You have the Nile River scenery picture already." )
								return
							endif
							SubPlayerInfo( -1, "item", 12023, 1)
							AddPlayerInfo( -1, "item", 12039, 1 )
							return
						endif
					endif
				endif
			endif
		endif
		
		if $map_id == 8
			if $map_x >= 18
				if $map_x <= 20
					if $map_y >= 103
						if $map_y <= 105
							//?????,?????????
							$count = GetPlayerInfo( -1, "item", 12024 )
							if $count >= 1
								BC( "screen", "player", -1, "You have the Angkor scenery picture already." )
								return
							endif
							SubPlayerInfo( -1, "item", 12023, 1)
							AddPlayerInfo( -1, "item", 12024, 1 )
							return
						endif
					endif
				endif
			endif
		endif
		
		BC( "screen", "player", -1, "Please go to the assigned location to take the picture!" )
		
		
	}
