    //****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/03/17
	//		Author�������
	//		TaskName��Monster41017.s
	//		TaskID�����ˮ��
	//****************************************
	
	function OnDead(){
		$Task1 = IsTaskAccept( -1, 809 )
		if $Task1 != 0
			return
		endif
		
		AddStatus( -1, 10509, 1 )
		return
		
	}