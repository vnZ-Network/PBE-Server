 	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/3/1
	//		Author��˾�Ĳ�
	//		TaskName��NPC-chuansong-243.s
	//		TaskID��94  ����
	//****************************************
	
	function OnRequest(){	
	
		$result = IsTaskAccept(-1 , 94)
		if $result != 0
			DisableNpcOption(0)
		endif
	}
	function OnOption0(){
		FlyToMap( -1, 155 , 62 , 27 )
	}
	