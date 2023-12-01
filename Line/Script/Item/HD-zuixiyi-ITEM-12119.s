	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/02/16
	//		Author:???
	//		TaskName:HD-zuixiyi-ITEM-12119.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnUseItem(){
	
	//?????????
		$count = GetPlayerInfo( -1, "item", 12119 )
		if $count < 1
			BC( "screen", "player", -1, "You don't have Wine-cured Lizard Meat!" )
			return
		endif
		
		$Info1 = GetPlayerInfo( -1, "mapid" )
		if $Info1 != 90
			BC( "screen", "player", -1, "Wine-cured Lizard Meat is available only at the required place in Nile River West." )
			return
		endif
		
		$mapx1 = GetPlayerInfo( -1, "mapposx" )
		if $mapx1 < 110
			BC( "screen", "player", -1, "You are not at the required location!" )
			return
		endif
		if $mapx1 > 130
			BC( "screen", "player", -1, "You are not at the required location!" )
			return
		endif
		
		$mapy1 = GetPlayerInfo( -1, "mapposy" )
		if $mapy1 < 70
			BC( "screen", "player", -1, "You are not at the required location!" )
			return
		endif
		if $mapy1 > 90
			BC( "screen", "player", -1, "You are not at the required location!" )
			return
		endif
		
		BC( "screen", "player", -1, "Spino is enticed by the Wine Cured Lizard Meat!" )
		PlayEffect( -1, "Effect\common\modaoshi\tx_modaoshi.ini" )
		PlayEffect( -1, "Effect\common\modaoshi\tx_modaoshi2.ini" )
		AddMonster( 20178, 1, 90, 47, 31, 0 )
	
	}