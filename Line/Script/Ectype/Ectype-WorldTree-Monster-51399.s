  //****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/07/20
	//		Author�������
	//		TaskName��Ectype-WorldTree-Monster-51399.s
	//		TaskID��̰�Ե���»���
	//****************************************
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1, 250 )
		DeleteMonster( $ectype_ID, 51395 )
		
	}