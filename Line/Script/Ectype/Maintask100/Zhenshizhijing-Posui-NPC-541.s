	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/02/24
	//		Author��������
	//		TaskName��Zhenshizhijing-Posui-NPC-541.s
	//		TaskID���������ʵ֮��
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