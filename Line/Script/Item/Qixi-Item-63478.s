	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/08/13
	//		Author�����
	//		TaskName��Qixi-Item-63478.s
	//		TaskID��ͬ�Ľ�
	//
	//****************************************
	
	function OnUseItem(){
		
		//״̬�Ƿ�ӳɹ�
		$result = AddStatus(-1, 11422, 1)
		if $result == 0
			SubPlayerInfo( -1, "item", 63478, 1 )
		endif

	}