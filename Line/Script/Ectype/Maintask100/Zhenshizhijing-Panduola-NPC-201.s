	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/02/24
	//		Author��������
	//		TaskName��Zhenshizhijing-Panduola-NPC-201.s
	//		TaskID��NPC�˶���
	//
	//****************************************
	
	
	function OnRequest(){
	
		$accept = IsTaskAccept( -1 , 192 )
		
		if $accept != 0
			DisableNpcOption( 0 )
		endif
	
	}
	
	function OnOption0(){
	
		FlyToMap( -1, 227, 59, 179 )
		
	}