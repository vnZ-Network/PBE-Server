	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/07/09
	//		Author£ºÁõÏþè´
	//		TaskName£ºXLY-ITEM-63443.s
	//		TaskID£ºÏÄÁîÓª´óÀñ°ü
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