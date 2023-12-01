 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/3/26
	//		Author:???
	//		TaskName:ITEM-huohualizi-12390.s
	//		TaskID:75 ????
	//****************************************
	
	function OnUseItem(){
	
	//-----	????-------------------------------

		$mapid = GetPlayerInfo ( -1 , "mapid" )
		$x = GetPlayerInfo ( -1 , "mapx" )
		$y = GetPlayerInfo ( -1 , "mapy" )
		$player_x = GetPlayerInfo ( -1 , "mapposx" )
		$player_y = GetPlayerInfo ( -1 , "mapposy" )
		
		
	//-----????---------------------------------
		if $mapid != 93
			BC( "screen", "player", -1, "Cannot use Sparkle Chestnut in this area!" )
			return
		endif
		if $player_x < 120
			BC( "screen", "player", -1, "Cannot use Sparkle Chestnut here!" )
			return
		endif
		if $player_x > 136
			BC( "screen", "player", -1, "Cannot use Sparkle Chestnut here!" )
			return
		endif
		if $player_y < 227
			BC( "screen", "player", -1, "Cannot use Sparkle Chestnut here!" )
			return
		endif
		if $player_y > 243
			BC( "screen", "player", -1, "Cannot use Sparkle Chestnut here!" )
			return
		endif
		
		AddMonster (30035,1,93,$x,$y,1)
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		BC( "screen", "player", -1, "Wolfking Karth has been summoned!" )
	}