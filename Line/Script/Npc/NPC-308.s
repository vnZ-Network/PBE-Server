	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/7/1
	//		Author��˾�Ĳ�
	//		TaskName��NPC-308.s
	//		TaskID������
	//
	//****************************************
	
	function OnRequest(){
		
		
		$task = IsTaskDone( -1 , 1642 )
		if $task != 0
			DisableNpcOption(0)
		endif	
		
	}
	
	function OnOption0(){
		
		$task = IsTaskDone( -1 , 1642 )
		if $task != 0
			return
		endif	 
		
		FlyToMap( -1 , 9 , 64 , 74 )
		
	}