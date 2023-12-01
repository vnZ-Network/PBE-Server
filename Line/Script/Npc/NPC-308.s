	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/7/1
	//		Author£ºË¾ÎÄ²©
	//		TaskName£ºNPC-308.s
	//		TaskID£º´«ËÍ
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