	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/11/23
	//		Author��˾�Ĳ�
	//		TaskName��90-Milya-Ectype-Npc-423.s
	//		TaskID�� 
	//
	//****************************************

	function OnRequest(){
	
		$Accept = IsTaskAccept( -1 , 3301 )
		if $Accept != 0
			DisableNpcOption(0)
		endif

	}
	
	function OnOption0(){
	
		$Accept = IsTaskAccept( -1 , 3301 )
		if $Accept != 0
			return
		endif
		$ectype_id = GetEctypeID( -1 , 244 )
		AddMonsterByFloat( 55092 , 1 , $ectype_id , 106, 179, 0 )
		
	}
