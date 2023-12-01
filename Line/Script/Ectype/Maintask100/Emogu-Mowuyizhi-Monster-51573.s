	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/02/24
	//		Author：王家麒
	//		TaskName：Zhenshizhijing-Mowuyizhi-Monster-51573.s
	//		TaskID 魔物意志
	//
	//****************************************
	
	
	function OnDead(){

		$ectype_ID = GetEctypeID( -1 , 261 )
		$num = GetEctypeVar( $ectype_ID, 0 )
		$num = $num - 1
		SetEctypeVar( $ectype_ID, 0, $num )
		if $num == 8
			StartEctypeTimer( $ectype_ID, 1 )
		endif
		
		if $num == 0
			StartEctypeTimer( $ectype_ID, 2 )
		endif

	}