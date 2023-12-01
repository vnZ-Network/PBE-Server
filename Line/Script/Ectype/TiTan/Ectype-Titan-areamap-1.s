	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/08/11
	//		Author:???
	//		TaskName:Ectype-Titan-areamap-1.s
	//		TaskID:????1???
	//
	//****************************************
	
	function EnterArea(){
		
		$ectype_ID = GetEctypeID( -1, 303 )
		FlyToMap( -1, $ectype_ID, 41, 107 )
		BC( "screen" , "player", -1, "Heroes! You are now in the territory of the centaur lord Niesos.  " )
		
	}
	
	function LeaveArea(){
		
	}