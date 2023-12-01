	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/05
	//		Author:???
	//		TaskName:Main-Ectype-243-enter.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnCreate(){
		
	}
	
	function InitTimer(){
		$ectype_id = GetEctypeID( -1 , 243 )
		SetEctypeTimer( 1 , 2 , "EctypeTime0" )
	}

	function EctypeTime0(){
	
		$ectype_id = GetEctypeID( -1 , 243 )
		
		BC( "screen" , "map" , $ectype_id , "Set seems to be sleeping...." )
		BC( "chat" , "map" , $ectype_id , "Set seems to be sleeping...." )
	}

	function EctypeTime1(){
	
	}
		
