	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/02/24
	//		Author��������
	//		TaskName��Zhenshizhijing-Monster-Joke-51593.s
	//		TaskID ��������˹����Ц
	//
	//****************************************
	
	
	function OnDead(){
	
		$ectype_ID = GetEctypeID( -1 , 253 )
		$count = GetEctypeVar( $ectype_ID, 44 )
		if $count == 0
			SetEctypeVar( $ectype_ID, 39, 38 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 99, 209, 0 )
			SetEctypeVar( $ectype_ID, 44, 1 )
		endif

	}