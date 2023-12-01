
	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2010/2/4
	//		Author£ºË¾ÎÄ²©
	//		TaskName£ºSwb-Mjmy-Monster-51512.s
	//		TaskID£ºÃÎ÷Ê¾§Ìå1
	//****************************************

	
	function OnDead(){
	
		DropMonsterItems( -1, 51512 )
		$ectype_id = GetEctypeID( -1 , 254 )	
		AddMonsterByFloat( 51513 , 1 , $ectype_id , 236 , 174, 0 )
		
	}	