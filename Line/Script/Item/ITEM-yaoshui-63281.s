	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/04/15
	//		Author£ºË¾ÎÄ²©
	//		TaskName£ºITEM-yaoshui-63281.s
	//		TaskID£ºÒ©Ë® 63281
	//
	//****************************************
	
	function OnUseItem(){
	
	
	
		$info = SubPlayerInfo ( -1 , "item" , 63281 , 1 )
		if  $info != 0
			return
		endif
		UseSkill(-1,8529,1)
	
	}