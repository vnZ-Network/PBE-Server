 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/4/7
	//		Author:???
	//		TaskName:ITEM-shuren-63285.s
	//		TaskID:1341 ??
	//****************************************
	
	function OnUseItem(){
	
	//-----	????-------------------------------

		$mapid = GetPlayerInfo ( -1 , "mapid" )
		$x = GetPlayerInfo ( -1 , "mapx" )
		$y = GetPlayerInfo ( -1 , "mapy" )
		$player_x = GetPlayerInfo ( -1 , "mapposx" )
		$player_y = GetPlayerInfo ( -1 , "mapposy" )
		
		
	//-----????---------------------------------
		if $mapid != 7
			BC( "screen", "player", -1, "Unable to use Sylvan Summon Scroll in current area." )
			return
		endif
		if $player_x < 107
			BC( "screen", "player", -1, "Unable to use Sylvan Summon Scroll here." )
			return
		endif
		if $player_x > 117
			BC( "screen", "player", -1, "Unable to use Sylvan Summon Scroll here." )
			return
		endif
		if $player_y < 200
			BC( "screen", "player", -1, "Unable to use Sylvan Summon Scroll here." )
			return
		endif
		if $player_y > 210
			BC( "screen", "player", -1, "Unable to use Sylvan Summon Scroll here." )
			return
		endif
		
		AddMonster (30152,1,7,$x,$y,1)
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		BC( "screen", "player", -1, "It is time to test your master's determination." )
	}