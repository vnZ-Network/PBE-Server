	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/07/09
	//		Author£ºÁõÏþè´
	//		TaskName£ºXLY-ITEM-63436.s
	//		TaskID£ºçÍ·×ÐÒÔË¿¨(»ÆÉ«)
	//
	//****************************************
	
	function OnUseItem(){
		$item1 = GetPlayerInfo( -1, "item", 63436 )
		if $item1 < 1
			return
		endif
		
		$SubItem1 = SubPlayerInfo( -1, "item", 63436, 1 )
		if $SubItem1 != 0
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		$level = $level * 125
		AddPlayerInfo( -1, "exp", $level )
		return
		
	}