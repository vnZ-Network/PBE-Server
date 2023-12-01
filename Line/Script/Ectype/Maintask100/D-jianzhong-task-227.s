	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/29
	//		Author:???
	//		TaskName:97-task-227.s
	//		TaskID:  XXX
	//
	//****************************************
	
	
	function OnTaskAccept(){
		
		$ectype_id = GetEctypeID( -1 , 255 )
				
		BC( "chat" , "player" , -1 , "Danger, soul of Dwarf Norry is here!" )
		BC( "screen" , "player" , -1 , "Danger, soul of Dwarf Norry is here!" )
		AddMonsterByFloat( 59102, 1, $ectype_id, 77, 141 , 0  )
	}
	
	function OnTaskDone(){
	
	}