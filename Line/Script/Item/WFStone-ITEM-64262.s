	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/03/03
	//		Author£ºÁõÏþè´
	//		TaskName£ºHD-WFStone-ITEM-64262.s
	//		TaskID£ºÎÌ·¨ÂÞË¹Ê¯
	//
	//****************************************
	
	function OnUseItem(){
	
		$Accept = IsTaskAccept( -1 , 110 )
		$Done = IsTaskDone( -1 , 110 )
		if $Accept == 0
			return
		endif
		
		if $Done == 0
			return
		endif
		
		UseSkill( -1, 8502, 1 )
		UseSkill( -1, 8503, 1 )
		UseSkill( -1, 8504, 1 )
		UseSkill( -1, 8505, 1 )
		AcceptTask( -1, 110 )
	}