	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/08/26
	//		Author�����
	//		TaskName��GM-60053.s
	//		TaskID�������
	//
	//****************************************
	
	function OnUseItem(){
		
		//�������õȼ�*10000
		$level = GetPlayerInfo( -1 , "level" )
		$exp = $level * 10000
		$result = AddPlayerInfo( -1, "exp" , $exp )
		if $result == 0
			SubPlayerInfo( -1 , "item" , 60053 , 1 )
		endif
		
	}