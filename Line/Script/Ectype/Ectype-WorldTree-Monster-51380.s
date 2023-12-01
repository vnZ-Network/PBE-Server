  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/20
	//		Author:???
	//		TaskName:Ectype-WorldTree-Monster-51380.s
	//		TaskID:?????
	//****************************************
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1, 250 )	
		
		$ectype_type = GetEctypeVar( -1, 111 )
		$ectype_type = $ectype_type + 1
		SetEctypeVar( -1, 111, $ectype_type )
		
		$ectype_type = GetEctypeVar( -1, 111 )
		$ectype_type = 15 - $ectype_type
		if $ectype_type > 0
			BC( "screen", "map", $ectype_ID, "There are ",$ectype_type," Frenzy Fire Elementals remaining. " )
		endif
				
		$ectype_type = GetEctypeVar( -1, 111 )
		if $ectype_type >= 15
			BC( "screen", "map", $ectype_ID, "All Frenzy Fire Elementals have been swept away." )
			return
		endif	
		
	}