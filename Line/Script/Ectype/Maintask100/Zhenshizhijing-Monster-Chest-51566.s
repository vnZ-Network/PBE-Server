	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/02/24
	//		Author��������
	//		TaskName��Zhenshizhijing-Monster-Chest-51566.s
	//		TaskID ̰��BOSS�ٻ����ı���
	//
	//****************************************
	
	
	function OnDead(){
	
		$ectype_ID = GetEctypeID( -1, 253 )
		SetEctypeVar( $ectype_ID, 23, 0 )
		AddMonsterByFloat( 51586, 1, $ectype_ID, 194, 204, 0 )

	}