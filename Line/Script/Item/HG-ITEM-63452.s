	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/03/09
	//		Author£ºÁõÏþè´
	//		TaskName£ºHG-ITEM-63452.s
	//		TaskID£º¸øÊ¥±­³äÄÜ
	//
	//****************************************
	
	function OnUseItem(){
		$item1 = GetPlayerInfo( -1, "item", 63452 )		
		if $item1 < 1
			return
		endif
		
		$SubItem1 = SubPlayerInfo( -1, "item", 63452, 1 )
		if $SubItem1 != 0
			return
		endif
		
		FillInSangreal( -1, 100000000 )
		return
	}