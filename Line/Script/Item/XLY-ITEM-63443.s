	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/07/09
	//		Author�������
	//		TaskName��XLY-ITEM-63443.s
	//		TaskID������Ӫ�����
	//
	//****************************************
	
	function OnUseItem(){
		$item1 = GetPlayerInfo( -1, "item", 63443 )
		if $item1 < 1
			return
		endif
		
		$SubItem1 = SubPlayerInfo( -1, "item", 63443, 1 )
		if $SubItem1 != 0
			return
		endif
		
		DropMonsterItems( -1, 60313 )
		
	}