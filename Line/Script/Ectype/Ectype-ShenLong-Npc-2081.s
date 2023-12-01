	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/07/22
	//		Author：刘晓璐
	//		TaskName：Ectype-ShenLong-Npc-2081.s
	//		TaskID：上古神龙
	//
	//****************************************
	//
	function OnRequest(){
		$status = IsExistStatus( -1, 10600 )
		if $status == 0
			DisableNpcOption(0)
		endif
		
	}
	
	//进入普通难度
	function OnOption0(){
		AddStatus( -1, 10600, 1 )
	}