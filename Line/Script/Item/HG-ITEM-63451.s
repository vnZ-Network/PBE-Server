	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/03/09
	//		Author�������
	//		TaskName��HG-ITEM-63451.s
	//		TaskID����ʥ������
	//
	//****************************************
	
	function OnUseItem(){
		$item1 = GetPlayerInfo( -1, "item", 63451 )		
		if $item1 < 1
			return
		endif
		
		$SubItem1 = SubPlayerInfo( -1, "item", 63451, 1 )
		if $SubItem1 != 0
			return
		endif
		
		FillInSangreal( -1, 30000000 )
		return
	}