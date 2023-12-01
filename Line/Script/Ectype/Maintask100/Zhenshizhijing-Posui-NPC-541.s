	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/02/24
	//		Author：王家麒
	//		TaskName：Zhenshizhijing-Posui-NPC-541.s
	//		TaskID：破碎的真实之镜
	//
	//****************************************
	
	
	function OnRequest(){
	
		$done = IsTaskDone( -1 , 184 )
		$accept = IsTaskAccept( -1, 184 )
		
		if $done == 0
			DisableNpcOption( 0 )
		else
			if $accept != 0
				DisableNpcOption( 0 )
			endif	
		endif
	
	}
	
	function OnOption0(){
		
		AddStatus( -1 , XXXXX , 1 )
		
	}