  //****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/07/20
	//		Author�������
	//		TaskName��Ectype-WorldTree-Monster-51385_51386.s
	//		TaskID���ɶ�
	//****************************************
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1, 250 )	
		$ectype_type1 = GetEctypeVar( -1, 110 )
		$ectype_type = GetEctypeVar( -1, 114 )
		$ectype_type = $ectype_type + 1
		SetEctypeVar( -1, 114, $ectype_type )
		
				
		$ectype_type = GetEctypeVar( -1, 114 )
		if $ectype_type >= 48
			AddLevelMonster( 51392, 33, $ectype_type1, 1, $ectype_ID, 82, 83, 0 )
			return
		endif	
		
	}