	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/28
	//		Author:祁晶
	//		TaskName:Item-59184.s
	//		TaskID:【宝物】古老的书卷
	//
	//****************************************
	
	function OnUseItem(){
		
		$SubItem1 = SubPlayerInfo( -1, "item", 59184, 1 )
		if $SubItem1 != 0
			return
		endif
		
		DropMonsterItems( -1, 90051 )
		
	}
