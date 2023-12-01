  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/20
	//		Author:???
	//		TaskName:Ectype-WorldTree-Monster-51400.s
	//		TaskID:??????
	//****************************************
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1, 250 )
		DeleteMonster( $ectype_ID, 51401 )
		BC( "screen", "map", $ectype_ID, "Hahaha! Thanks for your Trees of World. Farewell." )
		
	}