	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/03/06
	//		Author����ԭ��
	//		TaskName��Ectype-elinggubao-Npc-2133.s
	//		TaskID�����ƶ���ľ��
	//
	//****************************************
	
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		$ectype_id = GetEctypeID( -1 , 258 )
		$revaluet = DeleteNPC(2133 , $ectype_id)
		$revaluet = AddNPC(2134 , $ectype_id)
	}