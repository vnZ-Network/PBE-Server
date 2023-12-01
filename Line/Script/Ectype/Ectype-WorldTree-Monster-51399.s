  //****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/07/20
	//		Author£ºÁõÏþè´
	//		TaskName£ºEctype-WorldTree-Monster-51399.s
	//		TaskID£ºÌ°³ÔµÄÄáµÂ»ô¸ñ
	//****************************************
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1, 250 )
		DeleteMonster( $ectype_ID, 51395 )
		
	}