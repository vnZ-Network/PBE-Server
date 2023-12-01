	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/09
	//		Author:??
	//		TaskName:NPC-9001.s
	//		TaskID:????
	//
	//****************************************
	//46
	function OnRequest(){
	
		
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 55
			DisableNpcOption(0)
		endif
		
		$is_get = GetPlayerVar(-1 , 46)
		if $is_get != 0
			DisableNpcOption(0)
		endif
	}
	
	
	function OnOption0(){
	
		$level = GetPlayerInfo( -1, "level" )
		if $level < 55
			return
		endif
		
		$is_get = GetPlayerVar(-1 , 46)
		if $is_get != 0
			return
		endif
		
		$revalue = AddPlayerInfo( -1, "item", 59161, 1 )
		if $revalue == 0
			SetPlayerVar(-1 , 46 , 1)
		else
			BC( "dialogbox", "player", -1, "Your bag is full." )
		endif
		
		
	}