	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/11/10
	//		Author��˾�Ĳ�
	//		TaskName��90-Minghe-Ectype-Npc-397.s
	//		TaskID�� ���� ����ڤ�ӱ��� 
	//
	//****************************************
	
	function OnRequest(){
	
		$Accept = IsTaskAccept( -1 , 146 )
		$Done = IsTaskDone( -1 , 146 )
		if $Accept != 0
			if $Done != 0
				DisableNpcOption(0)
			endif
		endif
		

	}
	
	function OnOption0(){
	
		$Accept = IsTaskAccept( -1 , 146 )
		$Done = IsTaskDone( -1 , 146 )
		if $Accept != 0
			if $Done != 0
				return
			endif
		endif
		$ectype_id = GetEctypeID( -1 , 244 )
		FlyToMap( -1 , $ectype_id , 38 , 75 )
		AddStatus( -1 , 10703, 1 )
		
	}