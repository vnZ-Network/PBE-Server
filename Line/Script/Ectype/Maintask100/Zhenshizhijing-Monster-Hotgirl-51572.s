	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2010/02/24
	//		Author��������
	//		TaskName��Zhenshizhijing-Madi-Monster-51572.s
	//		TaskID ������BOSS��������Ů�ʹ�
	//
	//****************************************
	
	
	function OnDead(){

		$ectype_ID = GetEctypeID( -1 , 253 )
		$num = GetEctypeVar( $ectype_ID, 10 )
		if $num < 7
			$num = $num + 1
			SetEctypeVar( $ectype_ID, 10, $num )
		endif
		

	}