	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/03/06
	//		Author：杨原林
	//		TaskName：Ectype-elinggubao-Npc-2132.s
	//		TaskID：可移动的木箱
	//
	//****************************************
	
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		$ectype_id = GetEctypeID( -1 , 258 )
		$revaluet = DeleteNPC(2132 , $ectype_id)
		$revaluet = AddNPC(2133 , $ectype_id)
	}