 	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/6/25
	//		Author£ºË¾ÎÄ²©
	//		TaskName£ºITEM-AV-SB-64342.s
	//		TaskID£ºÉùÍû
	//****************************************
	
	function OnUseItem(){
	
		$info = SubPlayerInfo ( -1 , "item" , 64342 , 1 )
		if  $info != 0
			return
		endif
		AddTitle( -1 , 44 )
	}