	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2011/5/17
	//		Author：代礼杰
	//		TaskName：Item-59812.s
	//		TaskID：1000赠点卡
	//
	//****************************************
	
	function OnUseItem(){
			
		//删除消耗物品
		$result = SubPlayerInfo( -1, "item", 59812 , 1 )
		if $result == 0
			AddPlayerInfo( -1, "givepoint", 1000  )
		endif
	}