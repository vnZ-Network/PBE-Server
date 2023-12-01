	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/07
	//		Author:???
	//		TaskName:Ectype-shiliandongku-enter.s
	//		TaskID:????-?????
	//
	//****************************************

	function OnCreate(){
		
	}
	
	function InitTimer(){
		$ectype_id = GetEctypeID( -1 , 477 )
		//???
		SetEctypeTimer( 1 , 2 , "EctypeTime0" )
		//??-???
	}

	function EctypeTime0(){
		
		$ectype_id = GetEctypeID( -1 , 477 )
		BC( "screen" , "map" , $ectype_id , "You have entered the Serene Realm."  )
		
		//AddMonsterByFloat( 51738 , 1, $ectype_id, 144, 136, 1 )
		
	}
	