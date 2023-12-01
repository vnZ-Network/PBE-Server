 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/3/18
	//		Author:???
	//		TaskName:ITEM-haiyuanhaojiao-12158.s
	//		TaskID:966 ????
	//****************************************
	
	function OnUseItem(){
	
		$mapid = GetPlayerInfo ( -1 , "mapid" )
		$player_x = GetPlayerInfo ( -1 , "mapx" )
		$player_y = GetPlayerInfo ( -1 , "mapy" )

		if $mapid != 1
			BC( "screen", "player", -1, "Sailor's Trumpet is available only on Atlantic Ocean!" )
			return
		endif
	//-----------------------------
		
		if $player_x < 19
			BC( "screen", "player", -1, "No response from Sailor's Trumpet!" )
			return
		endif
		if $player_x > 29
			BC( "screen", "player", -1, "No response from Sailor's Trumpet!" )
			return
		endif
		if $player_y < 40
			BC( "screen", "player", -1, "No response from Sailor's Trumpet!" )
			return
		endif
		if $player_y > 50
			BC( "screen", "player", -1, "No response from Sailor's Trumpet!" )
			return
		endif
	//-----------------------------	
		if $player_x < 22
			BC( "screen", "player", -1, "Sailor's Trumpet is responding. There should be evil spirits around!" )
			return
		endif
		if $player_x > 26
			BC( "screen", "player", -1, "Sailor's Trumpet is responding. There should be evil spirits around!" )
			return
		endif
		if $player_y < 43
			BC( "screen", "player", -1, "Sailor's Trumpet is responding. There should be evil spirits around!" )
			return
		endif
		if $player_y > 47
			BC( "screen", "player", -1, "Sailor's Trumpet is responding. There should be evil spirits around!" )
			return
		endif
		AddMonster ( 10782 , 1 , 1 , $player_x , $player_y , 1)
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		BC( "screen", "player", -1, "The evil spirit has appeared!" )
		
	}