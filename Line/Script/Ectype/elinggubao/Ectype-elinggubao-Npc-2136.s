	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/03/22
	//		Author：杨原林
	//		TaskName：Ectype-elinggubao-Npc-2136.s
	//		TaskID：可移动的木箱
	//
	//****************************************
	
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		$ectype_id = GetEctypeID( -1 , 258 )
		FlyToMap( -1, $ectype_id, 124, 58 )
	}