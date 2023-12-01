	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/17
	//		Author:???
	//		TaskName:90-Husong-382.s
	//		TaskID: ?? ??
	//
	//****************************************

	function OnRequest(){
	
		$Done = IsTaskDone( -1 , 141 )
		if $Done != 0
			DisableNpcOption(0)
		endif
		$Done = IsTaskDone( -1 , 142 )
		if $Done == 0
			DisableNpcOption(0)
		endif
		$Accept = IsTaskAccept( -1 , 142 )
		if $Accept == 0
			DisableNpcOption(0)
		endif

	}
	
	function OnOption0(){
	
		$Done = IsTaskDone( -1 , 141 )
		if $Done != 0
			return
		endif
		$Done = IsTaskDone( -1 , 142 )
		if $Done == 0
			return
		endif
		$Accept = IsTaskAccept( -1 , 142 )
		if $Accept == 0
			return
		endif
//		$revaluet = IsTeamMemberHaveDartTask(-1)
//		if $revaluet != 0
//			BC( "dialogbox" , "player" , -1 , "GUID:04551000000" )
//			return
//		endif
		$count = GetTaskCount ( -1 )
		if $count >= 20
			BC( "dialogbox" , "player" , -1 , "Your quest list is full." )
			return
		endif
		AcceptTask( -1 , 142 )
		$revaluet = AddDart( -1 , 55090 , 1 , 1 )
		
	}
	
	