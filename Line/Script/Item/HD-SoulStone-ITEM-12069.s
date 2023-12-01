	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/02/16
	//		Author:???
	//		TaskName:HD-SoulStone-ITEM-12069.s
	//		TaskID:80 ?????
	//
	//****************************************
	
	function OnUseItem(){
	
	//????????
		$count = GetPlayerInfo( -1, "item", 12069 )
		if $count < 1
			BC( "screen", "player", -1, "You do not have the Stone of Souls." )
			return
		endif
		
		$Info1 = GetPlayerInfo( -1, "mapid" )
		if $Info1 != 13
			BC( "screen", "player", -1, "Stone of Souls is available only at the required place in King's Gorge area!" )
			return
		endif
		
		$mapx1 = GetPlayerInfo( -1, "mapposx" )
		if $mapx1 < 243
			BC( "screen", "player", -1, "You are not at the required location!" )
			return
		endif
		if $mapx1 > 266
			BC( "screen", "player", -1, "You are not at the required location!" )
			return
		endif
		
		$mapy1 = GetPlayerInfo( -1, "mapposy" )
		if $mapy1 < 200
			BC( "screen", "player", -1, "You are not at the required location!" )
			return
		endif
		if $mapy1 > 226
			BC( "screen", "player", -1, "You are not at the required location!" )
			return
		endif
		
		BC( "screen", "player", -1, "The soul of Hel, the god of death, has been summoned!" )
		PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
		AddMonster( 30016, 1, 13, 99, 83, 0 )
	
	}