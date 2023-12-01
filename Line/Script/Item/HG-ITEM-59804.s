	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/03/09
	//		Author£ºÁõÏþè´
	//		TaskName£ºHG-ITEM-59804.s
	//		TaskID£º¸øÊ¥±­³äÄÜ
	//
	//****************************************
	
	function OnUseItem(){
		$item1 = GetPlayerInfo( -1, "item", 59804 )		
		if $item1 < 1
			return
		endif
		
		$SubItem1 = SubPlayerInfo( -1, "item", 59804, 1 )
		if $SubItem1 != 0
			return
		endif
		
		FillInSangreal( -1, 10000000 )
		return
	}