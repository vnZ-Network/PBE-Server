	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/07/22
	//		Author�������
	//		TaskName��Ectype-ShenLong-Npc-2081.s
	//		TaskID���Ϲ�����
	//
	//****************************************
	//
	function OnRequest(){
		$status = IsExistStatus( -1, 10600 )
		if $status == 0
			DisableNpcOption(0)
		endif
		
	}
	
	//������ͨ�Ѷ�
	function OnOption0(){
		AddStatus( -1, 10600, 1 )
	}