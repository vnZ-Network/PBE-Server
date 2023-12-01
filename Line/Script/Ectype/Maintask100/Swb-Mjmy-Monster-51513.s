
	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2010/2/4
	//		Author£ºË¾ÎÄ²©
	//		TaskName£ºSwb-Mjmy-Monster-51513.s
	//		TaskID£ºÃÎ÷Ê¾§Ìå2
	//****************************************

	
	function OnDead(){
		
		DropMonsterItems( -1, 51513 )		
		$ectype_id = GetEctypeID( -1 , 254 )	
		AddMonsterByFloat( 51514 , 1 , $ectype_id , 215 , 212, 0 )
		
	}	