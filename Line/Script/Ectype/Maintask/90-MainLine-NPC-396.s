	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/11/18
	//		Author��˾�Ĳ�
	//		TaskName��90-MainLine-NPC-396.s
	//		TaskID�� 
	//
	//****************************************

	function OnRequest(){
	
	
		$Done = IsTaskDone( -1 , 163 )
		if $Done != 0
			DisableNpcOption(0)
		endif

	}
	
	function OnOption0(){
	
		$Accept = IsTaskDone( -1 , 163 )
		if $Done != 0
			return
		endif
		FlyToMap( -1 , 246 , 53 , 66 )
	
	}
	
	