	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/24
	//		Author:???
	//		TaskName:Ectype-elinggubao-Npc-2253.s
	//		TaskID:???????????????
	//
	//****************************************
	
	
	
	function OnRequest(){
		$ectype_id = GetEctypeID( -1 , 258 )
		BC( "screen" , "player" , $ectype_id , "Welcome to the Underpass of Shadow Manor!" )
		FlyToMap( -1, $ectype_id, 7, 97 )
	}