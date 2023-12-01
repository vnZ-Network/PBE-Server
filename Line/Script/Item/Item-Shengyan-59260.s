	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/03/16
	//		Author：魏东园
	//		TaskName：Item-Shengyan-59260.s
	//		TaskID：冰封要塞勇士礼包
	//
	//****************************************
	
	function OnUseItem(){
			
		$info = GetPlayerInfo(-1 , "nullitem", 0 )
				if $info == 0
						return
				endif
		
		//删除消耗物品
		$result = SubPlayerInfo( -1, "item", 59260 , 1 )
		if $result == 0
			AddPlayerInfo( -1, "item", 59255 ,6  )
		endif
	}