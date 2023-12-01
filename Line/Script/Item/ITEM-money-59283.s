	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/04/06
	//		Author：刘晓璐
	//		TaskName：ITEM-money-59283.s
	//		TaskID：神鬼钱袋
	//
	//****************************************
	
	
	function OnUseItem(){
		//删除道具
		$del = SubPlayerInfo( -1, "item", 59283, 1 )
		if $del != 0
			return
		endif
		
		//增加金钱
		AddPlayerInfo( -1, "money", 50000 )
						
	}