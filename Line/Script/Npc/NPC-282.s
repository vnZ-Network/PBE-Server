	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/07/15
	//		Author:???
	//		TaskName:NPC-282.s
	//		TaskID:????
	//
	//****************************************
	
	function OnRequest(){
		//??	
		$Now_Hour =  GetSystemTime( "hour" )
		//???.0-6
		$Now_Week =  GetSystemTime( "week" )
		//????
		$time0 = GetSystemTime( "yday" )
		//??
		$PlayerVar = GetPlayerVar( -1, 3710 )
		//????
		$level = GetPlayerInfo( -1, "level" )
		
//		if $Now_Hour < 18
//			DisableNpcOption(0)
//		endif
//		
//		if $Now_Hour > 21
//			DisableNpcOption(0)
//		endif
		
		if $PlayerVar == $time0
			DisableNpcOption(0)
		endif
		
		if $level < 25
			DisableNpcOption(0)
		endif
	}
	
	
	function OnOption0(){
		//??	
		$Now_Hour =  GetSystemTime( "hour" )
		//????
		$time0 = GetSystemTime( "yday" )
		//??
		$PlayerVarTime = GetPlayerVar( -1, 3710 )
		//????
		$level = GetPlayerInfo( -1, "level" )
		
		if $level < 25
			BC( "dialogbox", "player", -1, "Quiz is open to LV25 and stronger players." )
			return
		endif
		
//		if $Now_Hour < 18
//			BC( "dialogbox", "player", -1, "GUID:08139000001" )
//			return
//		endif
//		
//		if $Now_Hour > 21
//			BC( "dialogbox", "player", -1, "GUID:08139000002" )
//			return
//		endif
		
		if $PlayerVarTime == $time0
			BC( "dialogbox", "player", -1, "You have already participated the Quiz today." )
			return
		endif
		
		//2011????????
		$result = IsTaskAccept( -1, 1992 )
		$now_day = GetSystemTime( "yday" )
		if $result == 0
		   SetTaskDone( -1, 1992 )
		   SetPlayerVar( -1, 4045, $now_day )
		   $n = GetPlayerVar( -1, 3871 ) 
       $n = $n + 550
       SetPlayerVar( -1, 3871, $n )
       BC( "messagebox", "player", -1, "You are smart enough to understand the Warning of Wisdom, which is a great way to get EXP. You have obtained 550 Lucky Points from Oalid." )
       BC( "chat", "player", -1, "You are smart enough to understand the Warning of Wisdom, which is a great way to get EXP. You have obtained 550 Lucky Points from Oalid." )
		else
		   SetPlayerVar( -1, 4045, $now_day )
		endif
		//????   
		
		//????
		$PlayerVar = GetPlayerVar( -1, 3803 )
		//?????
		$ServerVar = GetServerVar( 999 )
		
		SetPlayerVar( -1, 3710, $time0 )
		if $PlayerVar != $ServerVar
			SetPlayerVar( -1, 3803, $ServerVar )
			ReqAsk( -1, 7 )
		else
			ReqAsk( -1, 8 )
		endif
		//????-START
			$TJ_join_number = GetGlobalVar(915)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(915 , $TJ_join_number)
			//????-END
		
	}