
	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/2/4
	//		Author��˾�Ĳ�
	//		TaskName��Swb-Mjmy-Monster-51515.s
	//		TaskID�����ʾ���4
	//****************************************

	
	function OnDead(){
			
		DropMonsterItems( -1, 51515 )
		$ectype_id = GetEctypeID( -1 , 254 )	
		AddMonsterByFloat( 51516 , 1 , $ectype_id , 195 , 257, 0 )
		
	}	