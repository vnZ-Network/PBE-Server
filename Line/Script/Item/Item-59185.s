	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/28
	//		Author:�
	//		TaskName:Item-59185.s
	//		TaskID:��������ϵ����
	//
	//****************************************
	
	function OnUseItem(){
		
		$SubItem1 = SubPlayerInfo( -1, "item", 59185, 1 )
		if $SubItem1 != 0
			return
		endif
		
		DropMonsterItems( -1, 90052 )
		
	}
