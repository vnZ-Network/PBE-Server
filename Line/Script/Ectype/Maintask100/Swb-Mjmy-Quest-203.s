
	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/2/3
	//		Author��˾�Ĳ�
	//		TaskName��Swb-Mjmy-Quest-203.s
	//		TaskID�� 507 ��˹�� ����
	//****************************************
	
	
	function OnTaskAccept(){
		
		$ectype_id = GetEctypeID( -1 , 254 )
		AddMonsterByFloat( 51507 , 1 , $ectype_id , 126 , 215, 0 )
		DeleteNPC( 507, $ectype_id )
		SetPlayerVar( -1 , 57 , 1 )
		
	}
	
	function OnTaskDone(){
		
	}