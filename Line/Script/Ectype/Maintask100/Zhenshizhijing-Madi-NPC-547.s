	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2010/02/24
	//		Author£ºÍõ¼Ò÷è
	//		TaskName£ºZhenshizhijing-Madi-NPC-547.s
	//		TaskID£ºNPCÂíµÙ
	//
	//****************************************
	
	
	function OnRequest(){
	
		$accept = IsTaskAccept( -1 , 189 )
		
		if $accept != 0
			DisableNpcOption( 0 )
		endif
	
	}
	
	function OnOption0(){
	
		FlyToMap( -1, 227, 59, 179 )
		
	}