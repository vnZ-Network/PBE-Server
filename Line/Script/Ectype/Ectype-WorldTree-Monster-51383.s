  //****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/07/20
	//		Author：刘晓璐
	//		TaskName：Ectype-WorldTree-Monster-51383.s
	//		TaskID：精华水元素
	//****************************************
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1, 250 )	
		
		$ectype_type = GetEctypeVar( -1, 113 )
		$ectype_type = $ectype_type + 1
		SetEctypeVar( -1, 113, $ectype_type )
		
				
		$ectype_type = GetEctypeVar( -1, 113 )
		if $ectype_type >= 20
			StartEctypeTimer( $ectype_ID, 2 )
			SetEctypeVar( -1, 113, 0 )
		endif	
		
	}