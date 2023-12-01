	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/12/14
	//		Author：杨原林
	//		TaskName：Item-59557.s
	//		TaskID：888赠点卡
	//
	//****************************************
	
	function OnUseItem(){
			
		//删除消耗物品
		$result = SubPlayerInfo( -1, "item", 59557 , 1 )
		if $result == 0
			AddPlayerInfo( -1, "givepoint", 888  )
		endif
	}