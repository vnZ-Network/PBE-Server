 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/3/18
	//		Author:???
	//		TaskName:ITEM-tanxianjiadecangbaotu-13282.s
	//		TaskID:968 ???????
	//****************************************
	
	function OnUseItem(){
		
		$mapid = GetPlayerInfo ( -1 , "mapid" )
		$player_x = GetPlayerInfo ( -1 , "mapposx" )
		$player_y = GetPlayerInfo ( -1 , "mapposy" )	
	
		$result = IsTaskAccept( -1 , 968 )
		if $result != 0
			BC( "screen", "player", -1, "The secrets of the treasure map can only be found with quest of {#ffff0000Adventurer's Treasure Map#}." )
			return
		endif
		if $mapid != 1
			BC( "screen", "player", -1, "This treasure map is available only in {#ffff0000Atlantic Ocean#} area." )
			return
		endif
		//--------------------------------------
		
		
		if $player_x > 192
			BC( "screen", "player", -1, "The location indicated by the treasure map is not here. It should be around the {#ffff0000ruins#}." )
			return
		endif
		if $player_x < 172
			BC( "screen", "player", -1, "The location indicated by the treasure map is not here. It should be around the {#ffff0000ruins#}." )
			return
		endif
		if $player_y > 275
			BC( "screen", "player", -1, "The location indicated by the treasure map is not here. It should be around the {#ffff0000ruins#}." )
			return
		endif
		if $player_y < 255
			BC( "screen", "player", -1, "The location indicated by the treasure map is not here. It should be around the {#ffff0000ruins#}." )
			return
		endif
		
		//---------------------------------------
		if $player_x > 187
			BC( "screen", "player", -1, "The treasure is just {#ffff0000somewhere nearby#}! Search carefully!" )
			return
		endif
		if $player_x < 177
			BC( "screen", "player", -1, "The treasure is just {#ffff0000somewhere nearby#}! Search carefully!" )
			return
		endif
		if $player_y > 270
			BC( "screen", "player", -1, "The treasure is just {#ffff0000somewhere nearby#}! Search carefully!" )
			return
		endif
		if $player_y < 260
			BC( "screen", "player", -1, "The treasure is just {#ffff0000somewhere nearby#}! Search carefully!" )
			return
		endif
		$del = SubPlayerInfo ( -1 , "item" , 13282 , 1 )
		if  $del != 0
			return
		endif
		AddPlayerInfo ( -1 ,"item", 12383 , 1 )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
		BC( "screen", "player", -1, "You have acquired {#ffff0000Emerald Horseshoe#}!" )	
	}