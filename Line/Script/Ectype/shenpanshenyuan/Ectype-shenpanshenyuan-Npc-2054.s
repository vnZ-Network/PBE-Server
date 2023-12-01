	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/04
	//		Author:???
	//		TaskName:Ectype-yilonghuangu-Npc-2054.s
	//		TaskID:??????
	//
	//****************************************
	//
	
	
	//????228
	//???????????       3769
	//?????????           3408
	//?????????????????ID     3810
	
	
	//option0  ????????
	//option1  ????
	
	
	
	function OnRequest(){
		
		
	}
	
	
	//?????
	function OnOption0(){
		
		//??????
		$count = GetEctypeVar( -1 , 113 )
		if $count == 0
			BC( "dialogbox" , "player" , -1 , "Challenge Harpy Queen Falia first, then I can help you." )
			return
		endif
		
		$ectype_ID = GetEctypeID( -1 , 228 )
		//FlyToMap( -1 , $ectype_ID , 71 , 61 )
		OpenMask( 4 , $ectype_ID )
		BC( "screen" , "map" , $ectype_ID , "Opened the door to Judgment Gate." )
		//DeleteNPC( 2054 , -1 )
		
	}