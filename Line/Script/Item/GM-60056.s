	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/08/26
	//		Author�����
	//		TaskName��GM-60056
	//		TaskID����Ǯ��
	//
	//****************************************
	
	function OnUseItem(){
		
		//�ȼ�*1400
		$level = GetPlayerInfo( -1 , "level" )
		$money = $level * 1400
		$result = AddPlayerInfo( -1, "money" , $money )
		if $result == 0
			SubPlayerInfo( -1 , "item" , 60056 , 1 )
		endif
		
	}