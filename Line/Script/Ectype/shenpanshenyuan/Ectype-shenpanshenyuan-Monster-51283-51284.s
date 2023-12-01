   	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/05
	//		Author: ???
	//		TaskName:Ectype-yilonghuangu-Monster-51283-51284.s
	//		TaskID:?????????
	//****************************************
	
	//??BOSS???       112 
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1 , 228 )
		$count = GetEctypeVar( -1 , 112 )
		
		$count = $count + 1
		
		//??2??
		if $count == 2
			//????NPC
			AddNPC( 2056 , -1 )
			BC( "screen" , "map" , $ectype_ID , "The teleporter has appeared." )
			BC( "screen" , "map" , $ectype_ID , "The teleporter has appeared." )
		else
			BC( "screen" , "map" , $ectype_ID , "You have successfully killed " , $count , " / 2 Latamantis" )
			SetEctypeVar( -1 , 112 , $count )
		endif
		
	}