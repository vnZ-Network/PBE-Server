	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/02/24
	//		Author：王家麒
	//		TaskName：Zhenshizhijing-Area-185_159.s
	//		TaskID 触发对话
	//
	//****************************************
	
	
	function EnterArea(){
	
		$accept = IsTaskAccept( -1, 187 )
		if $accept == 0
			$ectype_ID = GetEctypeID( -1 , 253 )
			$a = GetEctypeVar( $ectype_ID, 35 )
			if $a == 0
				SetEctypeVar( $ectype_ID, 39, 34 )
				SetEctypeVar( $ectype_ID, 35, 1 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 185, 159, 0 )
			endif
		endif
	
	}
	
