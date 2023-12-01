	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/02/24
	//		Author:???
	//		TaskName:Zhenshizhijing-NPC-363.s
	//		TaskID ?????????NPC
	//
	//****************************************
	
	function OnRequest(){
	//???????????????????,??????,??????????????????
		$accept = IsTaskAccept( -1 , 183 )
		$done = IsTaskDone( -1 , 183 )
		if $accept != 0
			if $done != 0
				DisableNpcOption(0)
			endif
		endif

	}

	//????
	function OnOption0(){
	
		$accept = IsTaskAccept( -1 , 183 )
		$done = IsTaskDone( -1 , 183 )
		if $accept != 0
			if $done != 0
				return
			endif
		endif

		$succeed = FlyToEctype( -1 , 253 , 97, 252 )	
		if $succeed > 0
			$ectype_id = GetEctypeID( -1 , 253 )
			$ectype_uid = GetEctypeUniqueID( -1 , 253 )
			$value = GetPlayerVar( -1, 3256 )
			SetEctypeVar( $ectype_id, 119, $value )
			BC( "screen" , "player" , -1 , "You have entered Mirror of Reality instance in single adventure mode." )
		else
			BC( "screen", "player", -1, "Mirror of Reality instance is full. Please try later or change realm." )
			return
		endif
		
	}