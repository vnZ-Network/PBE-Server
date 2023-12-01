  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/20
	//		Author:???
	//		TaskName:Ectype-WorldTree-Monster-51405.s
	//		TaskID:???????
	//****************************************
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1, 250 )	
		$ectype_type0 = GetEctypeVar( -1, 110 )
		
		$ectype_type = GetEctypeVar( -1, 115 )
		$ectype_type = $ectype_type + 2
		SetEctypeVar( -1, 115, $ectype_type )
		
		$playerX = GetPlayerInfo( -1, "mapx" )
		$playerY = GetPlayerInfo( -1, "mapy" )
		AddLevelMonster( 51405, 30, $ectype_type0, 2, $ectype_ID, $playerX, $playerY, 1 )
				
		$ectype_type = GetEctypeVar( -1, 115 )
		if $ectype_type >= 30
			BC( "screen", "map", $ectype_ID, "My children! I will avenge you!" )
			DeleteMonster( $ectype_ID, 51405 )
			AddLevelMonster( 51393, 33, $ectype_type0, 1, $ectype_ID, 92, 83, 0 )
			return
		endif	
		
	}