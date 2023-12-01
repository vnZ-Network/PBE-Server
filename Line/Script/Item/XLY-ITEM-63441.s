	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/07/09
	//		Author£ºÁõÏþè´
	//		TaskName£ºXLY-ITEM-63441.s
	//		TaskID£ºçÍ·×ÐÒÔË¿¨(·ÛÉ«)
	//
	//****************************************
	
	function OnUseItem(){
		$item1 = GetPlayerInfo( -1, "item", 63441 )
		if $item1 < 1
			return
		endif
		
		$SubItem1 = SubPlayerInfo( -1, "item", 63441, 1 )
		if $SubItem1 != 0
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		$level = $level * 400
		AddPlayerInfo( -1, "exp", $level )
		return
		
	}