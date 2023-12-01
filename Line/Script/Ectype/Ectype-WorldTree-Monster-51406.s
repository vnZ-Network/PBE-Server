  //****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/07/20
	//		Author£ºÁõÏþè´
	//		TaskName£ºEctype-WorldTree-Monster-51406.s
	//		TaskID£º³á»Æ¶ê
	//****************************************
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1, 250 )	
		
		$ectype_type = GetEctypeVar( -1, 116 )
		$ectype_type = $ectype_type + 1
		SetEctypeVar( -1, 116, $ectype_type )
				
		$ectype_type = GetEctypeVar( -1, 116 )
		if $ectype_type >= 7
			DeleteMonster( $ectype_ID, 51400 )
			AddNPC( 476, $ectype_ID )
		endif	
		
	}