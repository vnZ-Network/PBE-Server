	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2010/01/29
	//		Author£º´úÀñ½Ü
	//		TaskName£º97-jianzhong-Monster-59121.s
	//		TaskID£º  XXX
	//
	//****************************************
	
	
	function OnDead(){
		$ectype_id = GetEctypeID( -1 , 255 )		
		StartEctypeTimer( $ectype_id, 4 )
		SetPlayerVar( -1 , 52 , 1 )	

	}