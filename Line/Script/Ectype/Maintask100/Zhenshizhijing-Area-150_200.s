	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/02/24
	//		Author��������
	//		TaskName��Zhenshizhijing-Area-150_200.s
	//		TaskID �ߵ������Ƴ�BUFF
	//
	//****************************************
	
	
	function EnterArea(){

		$hasBuff = IsExistStatus( -1, 6005 )
		if $hasBuff == 0
			AddStatus( -1, 6005, 2 )
		endif
	
	}