	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/07
	//		Author:???
	//		TaskName:????????
	//		TaskID:
	//
	//****************************************
	function OnUseItem(){
		
//59797	?????????
//59798	???????
//59799	?????
//59800	????
//59801	????
//59802	????
//59804	?????????      
//59805	????????
//59807	?????

		$isdone = GetPlayerVar( -1, 3301 )

		if $isdone == 1
			BC( "dialogbox" , "player" , -1 , "A Coldflow Crystal, such as the one on Emerald Dragon Island, may be able to repair the stone.\nIf it fails, then the stone should be taken somewhere cold, such as the Nordic Lands, and consult this page once more." )
		endif
		
//		if $isdone == 2
//			$mapid = GetPlayerInfo( -1, "mapid" )
//			if $mapid == 21
//				BC( "screen", "player", -1, "An Emerald Dragon has appeared!")
//				$mapX = GetPlayerInfo( -1, "mapposx" )
//				$mapY = GetPlayerInfo( -1, "mapposy" )
//				$result = AddMonsterByFloat( 51736, 1, 21, $mapX, $mapY, 1, -1 )								
//			else
//				BC( "dialogbox" , "player" , -1 , "A Coldflow Crystal, such as the one on Emerald Dragon Island, may be able to repair the stone.\nIf it fails, then the stone should be taken somewhere cold, such as the Nordic Lands, and consult this page once more." )
//				BC( "screen", "player", -1, "You are not in the Nordic Lands.")
//			endif
//		endif

		$item1 = GetPlayerInfo( -1, "item", 59801)
		if $item1 == 0
			BC( "screen", "player", -1, "Repair quest completed." )
			return
		endif
		
			$mapid = GetPlayerInfo( -1, "mapid" )
			if $mapid == 21
				BC( "screen", "player", -1, "An Emerald Dragon has appeared!")
				$mapX = GetPlayerInfo( -1, "mapposx" )
				$mapY = GetPlayerInfo( -1, "mapposy" )
				$result = AddMonsterByFloat( 51736, 1, 21, $mapX, $mapY, 1, -1 )								
			else
				BC( "dialogbox" , "player" , -1 , "A Coldflow Crystal, such as the one on Emerald Dragon Island, may be able to repair the stone.\nIf it fails, then the stone should be taken somewhere cold, such as the Nordic Lands, and consult this page once more." )
				BC( "screen", "player", -1, "You are not in the Nordic Lands.")
			endif
			
	}