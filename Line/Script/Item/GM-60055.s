	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/08/26
	//		Author�����
	//		TaskName��GM-60055.s
	//		TaskID�������
	//
	//****************************************
	
	function OnUseItem(){
		
		//1000����		
		$result = AddPlayerInfo( -1, "givepoint" , 1000 )
		if $result == 0
			SubPlayerInfo( -1 , "item" , 60055 , 1 )
		endif
		
	}