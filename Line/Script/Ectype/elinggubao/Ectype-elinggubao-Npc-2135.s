	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/03/06
	//		Author����ԭ��
	//		TaskName��Ectype-elinggubao-Npc-2135.s
	//		TaskID�����ƶ���ľ��
	//
	//****************************************
	
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		$ectype_id = GetEctypeID( -1 , 258 )
		$revaluet = DeleteNPC(2135 , $ectype_id)
		$revaluet = AddNPC(2136 , $ectype_id)
	}