
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/2/4
	//		Author:???
	//		TaskName:Swb-Mjmy-Monster-51516.s
	//		TaskID:????5
	//****************************************

	
	function OnDead(){
		
		$ectype_id = GetEctypeID( -1 , 254 )	
		AddMonsterByFloat( 51512 , 1 , $ectype_id , 194 , 152, 0 )
		BC( "screen" , "player" , -1 , "Ha-ha, I got you. Go to look for the Crystal of Nightmare." )
		
	}	