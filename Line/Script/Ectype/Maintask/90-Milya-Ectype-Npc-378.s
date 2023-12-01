	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/20
	//		Author:???
	//		TaskName:90-Milya-Ectype-Npc-378.s
	//		TaskID: 
	//
	//****************************************
	
	
	function OnRequest(){
	
		$Accept = IsTaskAccept( -1 , 157 )
		if $Accept != 0
			DisableNpcOption(0)
		endif

	}
	
	function OnOption0(){
	
		$Accept = IsTaskAccept( -1 , 157 )
		if $Accept != 0
			return
		endif
	
		
		$info = SubPlayerInfo( -1, "item", 12705 , 1  )
		if $info != 0
			return
		endif
		$info = SubPlayerInfo( -1, "item", 12725 , 1  )
		if $info != 0
			return
		endif
		SetTaskDone( -1 , 157 )
		BC( "screen" , "player" , -1 , "No movement, the seal have been removed." )	
			
	
		
	}
	
	