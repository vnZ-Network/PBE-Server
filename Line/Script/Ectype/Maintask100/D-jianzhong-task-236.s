	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/29
	//		Author:???
	//		TaskName:97-task-236.s
	//		TaskID:  XXX
	//
	//****************************************
	
	
	function OnTaskAccept(){
		
		$ectype_id = GetEctypeID( -1 , 255 )		
		
		AddMonsterByFloat( 59131, 1 , $ectype_id, 147 , 144 , 0 )
		//????????
		BC( "chat" , "player" , -1 , "Danger, the Tyr Spirit Sword(False) is here!" )
		AddMonsterByFloat( 59120, 1 , $ectype_id, 147 , 144 , 0 )
	}
	
	function OnTaskDone(){
	
	}