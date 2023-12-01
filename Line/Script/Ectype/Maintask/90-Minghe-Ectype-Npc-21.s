	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/11/10
	//		Author：司文博
	//		TaskName：90-Minghe-Ectype-Npc-21.s
	//		TaskID： 主线 传送进入冥河
	//
	//****************************************
	
	function OnRequest(){
	
		$Done = IsTaskDone( -1 , 148 )
		if $Done != 0
			DisableNpcOption(0)
		endif
		$info = GetPlayerInfo ( -1 , "item" , 12643 )
		if  $info > 0
			DisableNpcOption(0)
		endif
	}
	
	function OnOption0(){
	
		$Done = IsTaskDone( -1 , 148 )
		if $Done != 0
			return
		endif
		$info = GetPlayerInfo ( -1 , "item" , 12643 )
		if  $info > 0
			return
		endif
		AddPlayerInfo ( -1 , "item" , 12643 , 1 )
	}
	
	function OnOption1(){
	
		
	}
	
	