 	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/5/20
	//		Author��˾�Ĳ�
	//		TaskName��Monster-40191.s
	//		TaskID����ʴ��
	//****************************************
	
	function OnDead(){
		$task = IsTaskAccept(-1,1521)
		if $task != 0
			return
		endif
		$a = GetPlayerInfo( -1 , "item",12566)
		if $a < 5
			AddPlayerInfo( -1 , "item",12566,1)
		endif
	}