	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/01/29
	//		Author�������
	//		TaskName��97-jianzhong-Monster-59121.s
	//		TaskID��  XXX
	//
	//****************************************
	
	
	function OnDead(){
		$ectype_id = GetEctypeID( -1 , 255 )		
		StartEctypeTimer( $ectype_id, 4 )
		SetPlayerVar( -1 , 52 , 1 )	

	}