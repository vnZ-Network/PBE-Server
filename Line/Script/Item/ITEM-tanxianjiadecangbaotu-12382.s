 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/4/24
	//		Author:???
	//		TaskName:ITEM-tanxianjiadecangbaotu-12382.s
	//		TaskID:968 ???????
	//****************************************
	
	function OnUseItem(){
		
		$mapid = GetPlayerInfo ( -1 , "mapid" )
		$player_x = GetPlayerInfo ( -1 , "mapposx" )
		$player_y = GetPlayerInfo ( -1 , "mapposy" )	
	
		$result = IsTaskAccept( -1 , 968 )
		if $result != 0
			BC( "screen", "player", -1, "The secrets of the treasure map can only be found with quest of Adventurer's Treasure Map." )
			return
		endif
		if $mapid != 1
			BC( "screen", "player", -1, "This treasure map is available only in Atlantic Ocean area." )
			return
		endif
		//--------------------------------------
		
		if $player_x < 177
			BC( "screen", "player", -1, "According to the treasure map, the ruins are further east." )
			return
		endif
		if $player_x > 187
			BC( "screen", "player", -1, "According to the treasure map, the ruins are further west." )
			return
		endif
		if $player_y < 260
			BC( "screen", "player", -1, "According to the treasure map, the ruins are further south." )
			return
		endif		
		if $player_y > 270
			BC( "screen", "player", -1, "According to the treasure map, the ruins are further north." )
			return
		endif
		
		$del = SubPlayerInfo ( -1 , "item" , 12382 , 1 )
		if  $del != 0
			return
		endif
		AddPlayerInfo ( -1 ,"item", 12383 , 1 )
		PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
		BC( "screen", "player", -1, "You have acquired Emerald Horseshoe!" )	
	}
	
 	