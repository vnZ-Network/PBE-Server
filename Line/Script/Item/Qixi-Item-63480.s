	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/08/13
	//		Author�����
	//		TaskName��Qixi-Item-63480.s
	//		TaskID����˼��
	//
	//****************************************
	
	function OnUseItem(){
		
		//״̬�Ƿ�ӳɹ�
		$result = AddStatus(-1, 11424, 1)
		if $result == 0
			SubPlayerInfo( -1, "item", 63480, 1 )
		endif
		
	}