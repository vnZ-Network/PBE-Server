	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/02/24
	//		Author��������
	//		TaskName��Zhenshizhijing-Task-185.s
	//		TaskID ����֮ʯ��������
	//
	//****************************************
	
	function OnTaskAccept(){
		
		$ectype_ID = GetEctypeID( -1 , 253 )
		SetEctypeVar( $ectype_ID, 39, 13 )
		AddMonsterByFloat( 51596, 1, $ectype_ID, 99, 209, 0 )
		
	}
	
	function OnTaskDone(){
		
		

	}