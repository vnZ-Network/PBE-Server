	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/02/24
	//		Author:???
	//		TaskName:Zhenshizhijing-Madi-NPC-547.s
	//		TaskID:NPC??
	//
	//****************************************
	
	
	function OnRequest(){
	
		$accept = IsTaskAccept( -1 , 189 )
		$done = IsTaskDone( -1 , 189 )
		
		if $accept != 0
			if $done != 0
				DisableNpcOption(0)
			endif
		endif
		$ectype_id = GetEctypeID( -1 , 253 )
		$accept = IsTaskAccept( -1 , 207 )
		if $accept != 0
			DisableNpcOption(1)
			DisableNpcOption(2)
		endif
		$a = GetEctypeVar( $ectype_id , 50 )
		if $a == 1
			DisableNpcOption(1)
		else
			DisableNpcOption(2)
		endif
		
		
		
	
	}
	
	function OnOption0(){
	
		FlyToMap( -1, 227, 23, 70 )
		
	}
	
	function OnOption1(){
		
		$ectype_id = GetEctypeID( -1 , 253 )
		$accept = IsTaskAccept( -1 , 207 )
		if $accept != 0
			return
		endif
		$a = GetEctypeVar( $ectype_id , 50 )
		if $a == 1
			return
		endif
		
		SetEctypeVar( $ectype_id , 50 , 1 )
		DeleteNPC( 547 , $ectype_id )
		AddMonsterByFloat( 51524 , 1 , $ectype_id , 185 , 86, 0 )
		
	}
	
	function OnOption2(){
		
		$ectype_id = GetEctypeID( -1 , 253 )
		$accept = IsTaskAccept( -1 , 207 )
		if $accept != 0
			return
		endif
		$no_bag = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $no_bag < 1
			BC( "screen", "player", -1, "Your bag is full." )
			return
		endif
		$a = GetEctypeVar( $ectype_id , 52 )
		if $a < 6
			BC( "screen" , "player" , -1 , "Gain crystal of Weeping Wall by defeating Seven Sins" )
			BC( "chat" , "player" , -1 , "Gain crystal of Weeping Wall by defeating Seven Sins" )
			return
		else
			$info = GetPlayerInfo( -1, "item", 12778 )
			if $info > 0
				BC( "screen", "player", -1, "You have obtained crystal of Weeping Wall" )
				return
			endif
			AddPlayerInfo( -1 , "item" , 12778 , 1 )
		endif
		
		
		
	}