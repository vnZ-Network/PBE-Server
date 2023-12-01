	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/07/09
	//		Author£ºÁõÏþè´
	//		TaskName£ºXLY-ITEM-63435.s
	//		TaskID£ºçÍ·×ÐÒÔË¿¨(°×É«)
	//
	//****************************************
	
	function OnUseItem(){
		$item1 = GetPlayerInfo( -1, "item", 63435 )
		if $item1 < 1
			return
		endif
		
		$SubItem1 = SubPlayerInfo( -1, "item", 63435, 1 )
		if $SubItem1 != 0
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		$level = $level * 50
		AddPlayerInfo( -1, "exp", $level )
		return
		
	}