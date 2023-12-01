	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2008/11/17
	//		Author：祁晶
	//		TaskName：NPC-lingqudunpai265.s
	//		TaskID：任务完成过可以领取盾牌
	//
	//****************************************
	function OnRequest(){
		
		$result = IsTaskDone( -1, 1203 )
		if $result != 0
			DisableNpcOption(0)
			return
		endif
		
		$result = IsTaskDone( -1, 1202 )
		if $result == 0
			DisableNpcOption(0)
			return
		endif
	}
	
	function OnOption0(){

		$result = IsTaskDone( -1, 1203 )
		if $result != 0
			return
		endif
		$count = GetPlayerInfo(-1 , "item" , 12246)
		if $count == 0
			AddPlayerInfo(-1 , "item" , 12246, 1)
		endif
		
	
	}