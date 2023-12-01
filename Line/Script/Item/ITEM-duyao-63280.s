	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/04/15
	//		Author£ºË¾ÎÄ²©
	//		TaskName£ºITEM-duyao-63280.s
	//		TaskID£º¶¾Ò© 63280
	//
	//****************************************
	
	function OnUseItem(){
	
	
	
		$info = SubPlayerInfo ( -1 , "item" , 63280 , 1 )
		if  $info != 0
			return
		endif
		UseSkill(-1,8528,1)
	
	}