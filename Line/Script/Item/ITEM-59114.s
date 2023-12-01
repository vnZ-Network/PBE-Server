	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/8/26
	//		Author£ºË¾ÎÄ²©
	//		TaskName£ºITEM-59114.s
	//		TaskID£ºÁúÓï±¦²Ø
	//****************************************
	
	function OnUseItem(){
	
		$info = SubPlayerInfo ( -1 , "item" , 59114 , 1 )
		if  $info != 0
			return
		endif
		DropMonsterItems( -1 , 90037 )
		
	}

