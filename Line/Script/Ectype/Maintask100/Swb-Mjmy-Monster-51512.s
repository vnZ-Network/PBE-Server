
	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/2/4
	//		Author��˾�Ĳ�
	//		TaskName��Swb-Mjmy-Monster-51512.s
	//		TaskID�����ʾ���1
	//****************************************

	
	function OnDead(){
	
		DropMonsterItems( -1, 51512 )
		$ectype_id = GetEctypeID( -1 , 254 )	
		AddMonsterByFloat( 51513 , 1 , $ectype_id , 236 , 174, 0 )
		
	}	