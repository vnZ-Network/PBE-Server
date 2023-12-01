
	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2010/2/4
	//		Author£ºË¾ÎÄ²©
	//		TaskName£ºSwb-Mjmy-Monster-51515.s
	//		TaskID£ºÃÎ÷Ê¾§Ìå4
	//****************************************

	
	function OnDead(){
			
		DropMonsterItems( -1, 51515 )
		$ectype_id = GetEctypeID( -1 , 254 )	
		AddMonsterByFloat( 51516 , 1 , $ectype_id , 195 , 257, 0 )
		
	}	