	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/01/22
	//		Author：魏东园
	//		TaskName：Item-Spring-63712.s
	//		TaskID：新春超级大福袋
	//
	//****************************************
	
	function OnUseItem(){
			
		//删除消耗物品
		$result = SubPlayerInfo( -1, "item", 63712 , 1 )
		if $result == 0
			$money = RandomNumber( 270000 , 330000 )
			AddPlayerInfo( -1, "money", $money  )
		endif
	}