	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/11/10
	//		Author£ºË¾ÎÄ²©
	//		TaskName£º90-Minghe-Ectype-Npc-398.s
	//		TaskID£º 
	//
	//****************************************
	
	function OnRequest(){
	

	}
	
	function OnOption0(){

		$ectype_id = GetEctypeID( -1 , 244 )
		FlyToMap( -1 , $ectype_id , 38 , 75 )
		AddStatus( -1 , 10703, 1 )
		
	}