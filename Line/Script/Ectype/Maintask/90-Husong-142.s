	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/17
	//		Author:???
	//		TaskName:90-Husong-142.s
	//		TaskID: ?? ??
	//
	//****************************************

	function OnRequest(){
	
		$Done = IsTaskDone( -1 , 142 )
		if $Done != 0
			DisableNpcOption(0)
		endif
		

	}
	
	function OnOption0(){
	
		$Done = IsTaskDone( -1 , 142 )
		if $Done != 0
			BC( "dialogbox" , "player" , -1 , "You have completed the escort quest." )	
			return
		endif
		$revaluet = IsTeamMemberHaveDartTask(-1)
		if $revaluet != 0
			BC( "dialogbox" , "player" , -1 , "You have received the escort quest." )
			return
		endif
		$count = GetTaskCount ( -1 )
		if $count > 20
			BC( "dialogbox" , "player" , -1 , "Your quest list is full." )
			return
		endif
		AcceptTask( -1 , 142 )
		$revaluet = AddDart( -1 , 55090 , 1 , 1 )
	
		
	}
	
	