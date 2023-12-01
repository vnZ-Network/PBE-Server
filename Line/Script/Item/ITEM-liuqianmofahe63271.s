	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/03/14
	//		Author£ºÆî¾§
	//		TaskName£ºITEM-liuqianmofahe63271.s
	//		TaskID£ºÄ§·¨ºÐÇ«Ç«
	//
	//****************************************
	
	
	
	function OnUseItem(){
	
		//É¾³ý
		$del_count = SubPlayerInfo( -1, "item", 63271, 1 )
		//ÊÇ·ñÉ¾³ý³É¹¦
		if $del_count != 0
			return
		endif
		DropMonsterItems(-1, 60072 )

	}