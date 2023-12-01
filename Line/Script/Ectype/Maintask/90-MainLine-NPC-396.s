	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/11/18
	//		Author£ºË¾ÎÄ²©
	//		TaskName£º90-MainLine-NPC-396.s
	//		TaskID£º 
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
	
	