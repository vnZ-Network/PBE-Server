
	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/2/4
	//		Author��˾�Ĳ�
	//		TaskName��Swb-Mjmy-Monster-51513.s
	//		TaskID�����ʾ���2
	//****************************************

	
	function OnDead(){
		
		DropMonsterItems( -1, 51513 )		
		$ectype_id = GetEctypeID( -1 , 254 )	
		AddMonsterByFloat( 51514 , 1 , $ectype_id , 215 , 212, 0 )
		
	}	