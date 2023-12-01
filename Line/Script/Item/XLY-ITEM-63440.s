	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/07/09
	//		Author£ºÁõÏþè´
	//		TaskName£ºXLY-ITEM-63440.s
	//		TaskID£ºçÍ·×ÐÒÔË¿¨(ºìÉ«)
	//
	//****************************************
	
	function OnUseItem(){
		$item1 = GetPlayerInfo( -1, "item", 63440 )
		if $item1 < 1
			return
		endif
		
		$SubItem1 = SubPlayerInfo( -1, "item", 63440, 1 )
		if $SubItem1 != 0
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		$level = $level * 325
		AddPlayerInfo( -1, "exp", $level )
		return
		
	}