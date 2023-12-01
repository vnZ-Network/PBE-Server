	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/04/15
	//		Author£ºË¾ÎÄ²©
	//		TaskName£ºITEM-zhadan-63279.s
	//		TaskID£ºÕ¨µ¯ 63279
	//
	//****************************************
	
	function OnUseItem(){
	
	
	
		$info = SubPlayerInfo ( -1 , "item" , 63279 , 1 )
		if  $info != 0
			return
		endif
		UseSkill(-1,8527,1)
	
	}