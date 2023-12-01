	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/29
	//		Author:??
	//		TaskName:????-??????
	//		TaskID:Xingpan-huntianyi.s
	//
	//****************************************
	
	function OnRequest(){		
		$taskday = GetPlayerVar( -1, 3996 )
		$Now_Yday =  GetSystemTime( "yday" )
		$lv = GetPlayerInfo( -1, "level")					
		$result = IsTaskDone( -1, 1735 )
		$num = GetPlayerVar( -1, 3321 )
		$count = GetPlayerInfo( -1, "item", 59886 )
		if $count > 0
			 DisableNpcOption(0)
		endif
		if $result != 0
			 DisableNpcOption(0)
		endif											
		if $taskday == $Now_Yday
			 DisableNpcOption(0)
		endif
		if $num >= 24
			 DisableNpcOption(0)
		endif
}
	
//????????????
	function OnOption0(){
		$taskday = GetPlayerVar( -1, 3996 )
		$Now_Yday =  GetSystemTime( "yday" )
		$lv = GetPlayerInfo( -1, "level")	
		$count = GetPlayerInfo( -1, "item", 59886 )
		$num = GetPlayerVar( -1, 3321 )
		if $num >= 24
			return
		endif
		if $count > 0
				BC( "dialogbox", "player", -1, "You have already acquired this quest.")
				return
		endif
//		$task = IsTaskAccept(-1, 1734)
//		if $task = 0
//    	BC( "dialogbox", "player", -1, "You have already acquired this quest.")
//		endif
		//????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		if $bag_count < 2
				BC( "screen", "player", -1, "You must have at least 2 free bag spaces." )
				return
		endif
		
		if $taskday == $Now_Yday
				BC( "screen", "player", -1, "You have already acquired this quest today." )
				return
		endif
		
		//????,????,??????												
		BC( "messagebox", "player", -1, "You have removed the Energy Core.\nRecharge it and bring it back." )		
		AcceptTask( -1, 1734 )
		SetPlayerVar(-1, 3996, $Now_Yday )			
	}	