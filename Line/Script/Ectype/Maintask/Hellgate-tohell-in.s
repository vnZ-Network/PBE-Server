	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/11/18
	//		Author��¬��
	//		TaskName��Hellgate-area.s
	//		TaskID������֮���ڵ�ڤ�����
	//
	//****************************************
	
			function OnRequest(){
		}
	
	
	
		function OnOption0(){
			$fly = FlyToMap( -1, 227, 24, 102 )
		//�������֮�ŵ�BUFF
			AddStatus(-1 , 11812 , 2)	
			AddStatus(-1 , 11815 , 2)
		}