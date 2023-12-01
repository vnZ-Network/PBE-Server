	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/29
	//		Author:???
	//		TaskName:97-task-238.s
	//		TaskID:  XXX
	//
	//****************************************
	
	
	function OnTaskAccept(){
		
		$ectype_id = GetEctypeID( -1 , 255 )
		
		AddMonsterByFloat( 59132, 1 , $ectype_id, 147 , 144 , 0 )
		//????????
		BC( "chat" , "player" , -1 , "Danger, the Tyr Spirit Sword(True) is here!" )
		AddMonsterByFloat( 59121, 1 , $ectype_id, 147 , 144 , 0 )
	}
	
	function OnTaskDone(){
		
		
	}