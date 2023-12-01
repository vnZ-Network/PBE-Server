	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/01/22
	//		Author：杨海勇
	//		TaskName：Item-Spring-63709.s
	//		TaskID：新春大福袋
	//
	//****************************************
	
	function OnUseItem(){
			
		//删除消耗物品
		$result = SubPlayerInfo( -1, "item", 63710 , 1 )
		if $result == 0
			AddPlayerInfo( -1, "givepoint", 500  )
		endif
	}