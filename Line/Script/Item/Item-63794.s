	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/12/1
	//		Author：魏东园
	//		TaskName：Item-63794.s
	//		TaskID：500绑定元宝卡（绑定）
	//
	//****************************************
	
	function OnUseItem(){
			
		//删除消耗物品
		$result = SubPlayerInfo( -1, "item", 63794 , 1 )
		if $result == 0
			AddPlayerInfo( -1, "givepoint", 500  )
		endif
	}