	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/08/14
	//		Author：周志强
	//		TaskName：Item-59670.s
	//		TaskID：1000绑定元宝卡
	//
	//****************************************
	
	function OnUseItem(){
			
		//删除消耗物品
		$result = SubPlayerInfo( -1, "item", 59670 , 1 )
		if $result == 0
			AddPlayerInfo( -1, "givepoint", 1000  )
		endif
	}