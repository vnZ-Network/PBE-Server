
	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/2/4
	//		Author��˾�Ĳ�
	//		TaskName��Swb-Mjmy-Monster-51514.s
	//		TaskID�����ʾ���3
	//****************************************

	
	function OnDead(){
		
		DropMonsterItems( -1, 51514 )	
		$ectype_id = GetEctypeID( -1 , 254 )	
		AddMonsterByFloat( 51515 , 1 , $ectype_id , 172 , 194, 0 )
	}	