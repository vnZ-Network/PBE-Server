	//****************************************
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2012-9
	//		Author£ººú±óÌÎ
	//		TaskName£º
	//		TaskID£º
	//****************************************

	function OnUseItem(){
		
		$res = SubPlayerInfo(-1,"item",44495,1)
		if $res == 0
			AddPlayerInfo(-1,"givepoint",600)
		endif
		
	}
	
