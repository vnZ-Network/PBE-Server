
	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2010/2/4
	//		Author£ºË¾ÎÄ²©
	//		TaskName£ºSwb-Mjmy-Monster-51514.s
	//		TaskID£ºÃÎ÷Ê¾§Ìå3
	//****************************************

	
	function OnDead(){
		
		DropMonsterItems( -1, 51514 )	
		$ectype_id = GetEctypeID( -1 , 254 )	
		AddMonsterByFloat( 51515 , 1 , $ectype_id , 172 , 194, 0 )
	}	