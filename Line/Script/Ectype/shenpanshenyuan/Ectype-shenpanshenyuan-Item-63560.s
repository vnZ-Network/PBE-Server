	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/20
	//		Author:???
	//		TaskName:
	//		TaskID:??
	//
	//****************************************
	
	
	function OnUseItem(){
		//????
		
		$x = GetPlayerInfo( -1 , "mapx" )
		$y = GetPlayerInfo( -1 , "mapy" )
		$ectype_ID = GetEctypeID( -1 , 228 )
		
		
		$result = AddMonster( 51289 , 1 , $ectype_ID , $x , $y , 0 )
		if $result == 0
			SubPlayerInfo( -1 , "item" , 63560 , 1 )
		else
			BC( "screen" , "player" , -1 , "Failed, can be only used in the judgment instance." )
		endif
						
	}