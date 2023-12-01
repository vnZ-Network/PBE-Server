	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/07
	//		Author:???
	//		TaskName:??????
	//		TaskID:
	//
	//****************************************
	function OnUseItem(){
		
//59814   ????????
//59815   ????
//59816   ?????
//59817   ?????
//59820   ?????      
//59822   ?????????      
//59823   ????????

		$isaccepted = IsTaskAccept( -1, 1986 )
		if $isaccepted == 0
			$mapid = GetPlayerInfo( -1, "mapid" )
			if $mapid == 456
				BC( "screen", "player", -1, "White Tiger Soul appears.")
				$mapX = GetPlayerInfo( -1, "mapposx" )
				$mapY = GetPlayerInfo( -1, "mapposy" )
				$result = AddMonsterByFloat( 51741, 1, $mapid, $mapX, $mapY, 1, -1 )								
			else
				BC( "screen", "player", -1, "You are not in the White Tiger Den")
			endif
		else
			BC( "screen", "player", -1, "Find Hygec to get the quest.")
		endif
		
		
		
		
	}