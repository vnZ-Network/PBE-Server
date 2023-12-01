	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/08/11
	//		Author:???
	//		TaskName:Ectype-Titan-areamap-2.s
	//		TaskID:????2???
	//
	//****************************************
	
	function EnterArea(){
		
		$ectype_ID = GetEctypeID( -1, 332 )
		FlyToMap( -1, $ectype_ID, 116, 54 )
		BC( "screen" , "player", -1, "Kronos, King of the Titans" )
		
	}
	
	function LeaveArea(){
		
	}