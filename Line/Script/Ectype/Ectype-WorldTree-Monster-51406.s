  //****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/07/20
	//		Author�������
	//		TaskName��Ectype-WorldTree-Monster-51406.s
	//		TaskID����ƶ�
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