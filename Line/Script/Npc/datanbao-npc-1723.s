	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/24
	//		Author:???
	//		TaskName:datanbao-npc-1723.s
	//		TaskID:
	//
	//****************************************
	
	//????3419 ?????????????
	//????3420 ????
	//????3862 ????UID
		
	function OnRequest(){
		
		$week = GetNowWeek()
		$lastweek = GetPlayerVar(-1,3420)
		if $week != $lastweek 
			SetPlayerVar(-1,3419,0)
		endif

//		//??????,?5???????????
//		$time = GetSystemTime("week")
//		if $time == 0
//			DisableNpcOption(1)
//			DisableNpcOption(0)
//		endif
//		
//		if $time > 4
//			DisableNpcOption(1)
//			DisableNpcOption(0)
//		endif	
		
		$ectype_id = GetEctypeID(-1, 559 )
		if $ectype_id <= 0
			DisableNpcOption(1)
		else
			DisableNpcOption(0)
		endif
				
	}
	
	function OnOption0(){
		
		//????
		$ectype_ID = GetEctypeID(-1, 559)
		if $ectype_ID > 0
			ReleaseEctype(-1,559)
		endif
		
		$playerid = GetPlayerID()
		
		$team = IsPlayerInTeam(-1)
		if $team == 0
			BC("dialogbox","player",-1,"Please leave your party. Only one person may enter the Gate of Fate Instance.")
			return
		endif
		
		$dengji = GetPlayerInfo(-1,"level")
		if $dengji < 75
			BC("dialogbox","player",-1,"The path ahead is too dangerous for you! You need to be at least LV75 to continue!")
			return
		endif

//		//??????,?????????1-?4????		
//		$time = GetSystemTime("week")
//		if $time == 0
//			BC("dialogbox","player",-1,"GUID:08043000002")
//			return
//		endif
//		
//		if $time > 4
//			BC("dialogbox","player",-1,"GUID:08043000003")
//			return
//		endif
		
		$week = GetNowWeek()
		$lastweek = GetPlayerVar(-1,3420)
		if $week == $lastweek
			BC("dialogbox","player",-1,"For your safety, you can only open the Gate of Fate once a week!")
			return
		endif
		
		$fly = FlyToEctype(-1,559,32,30)
		if $fly > 0 
			SetPlayerActLog(-1,25,0)
			$week = GetNowWeek()
			SetPlayerVar(-1,3420,$week)
			SetPlayerVar(-1,3419,1)
			SetPlayerVar(-1,3862,$fly)
			BC( "screen" , "player" , -1, "You have entered the Gate of Fate!" )
		else
			BC( "screen" , "player" , -1, "The instance is full, please try again later." )
			return
		endif
			
	}
	
	function OnOption1(){
		
		$mapid = 559
		$ectype_ID = GetEctypeID(-1,$mapid)
		$ectype_UID = GetEctypeUniqueID( -1, $mapid )
		$Player_UID = GetPlayerVar( -1, 3862 )
		if $ectype_ID == 0
			BC( "screen" , "player" , -1, "You still haven't unlocked the Gate of Fate instance!" )
			return
		endif
		
		if $Player_UID != $ectype_UID
			BC( "screen" , "player" , -1, "You still haven't unlocked the Gate of Fate instance!" )
			return
		endif
					
		$ceng = GetPlayerVar(-1,3419)
		if $ceng == 1
			$fly = FlyToEctype(-1,559,32,30)
			if $fly > 0 
				BC( "screen" , "player" , -1, "You have returned to the Gate of Fate!" )
			else
				BC( "screen" , "player" , -1, "You still haven't unlocked the Gate of Fate!" )
			endif
		endif
		
		if $ceng == 2
			$fly = FlyToEctype(-1,559,50,33)
			if $fly > 0 
				BC( "screen" , "player" , -1, "You have returned to the Gate of Fate!" )
			else
				BC( "screen" , "player" , -1, "Unknown error, oh no!" )
			endif
		endif
		
		if $ceng == 3
			$fly = FlyToEctype(-1,559,68,33)
			if $fly > 0 
				BC( "screen" , "player" , -1, "You have returned to the Gate of Fate!" )
			else
				BC( "screen" , "player" , -1, "Unknown error, oh no!" )
			endif
		endif
		
		if $ceng == 4
			$fly = FlyToEctype(-1,559,87,33)
			if $fly > 0 
				BC( "screen" , "player" , -1, "You have returned to the Gate of Fate!" )
			else
				BC( "screen" , "player" , -1, "Unknown error, oh no!" )
			endif
		endif
		
		if $ceng == 5
			$fly = FlyToEctype(-1,559,33,51)
			if $fly > 0 
				BC( "screen" , "player" , -1, "You have returned to the Gate of Fate!" )
			else
				BC( "screen" , "player" , -1, "Unknown error, oh no!" )
			endif
		endif
		
		if $ceng == 6
			$fly = FlyToEctype(-1,559,50,51)
			if $fly > 0 
				BC( "screen" , "player" , -1, "You have returned to the Gate of Fate!" )
			else
				BC( "screen" , "player" , -1, "Unknown error, oh no!" )
			endif
		endif
		
		if $ceng == 7
			$fly = FlyToEctype(-1,559,68,51)
			if $fly > 0 
				BC( "screen" , "player" , -1, "You have returned to the Gate of Fate!" )
			else
				BC( "screen" , "player" , -1, "Unknown error, oh no!" )
			endif
		endif
		
		if $ceng == 8
			$fly = FlyToEctype(-1,559,87,51)
			if $fly > 0 
				BC( "screen" , "player" , -1, "You have returned to the Gate of Fate!" )
			else
				BC( "screen" , "player" , -1, "Unknown error, oh no!" )
			endif
		endif
		
		if $ceng == 9
			$fly = FlyToEctype(-1,559,32,68)
			if $fly > 0 
				BC( "screen" , "player" , -1, "You have returned to the Gate of Fate!" )
			else
				BC( "screen" , "player" , -1, "Unknown error, oh no!" )
			endif
		endif
		
		if $ceng == 10
			$fly = FlyToEctype(-1,559,50,68)
			if $fly > 0 
				BC( "screen" , "player" , -1, "You have returned to the Gate of Fate!" )
			else
				BC( "screen" , "player" , -1, "Unknown error, oh no!" )
			endif
		endif
		
		if $ceng == 11
			$fly = FlyToEctype(-1,559,68,68)
			if $fly > 0 
				BC( "screen" , "player" , -1, "You have returned to the Gate of Fate!" )
			else
				BC( "screen" , "player" , -1, "Unknown error, oh no!" )
			endif
		endif
		
		if $ceng == 12
			$fly = FlyToEctype(-1,559,87,68)
			if $fly > 0 
				BC( "screen" , "player" , -1, "You have returned to the Gate of Fate!" )
			else
				BC( "screen" , "player" , -1, "Unknown error, oh no!" )
			endif
		endif
		
		if $ceng == 13
			$fly = FlyToEctype(-1,559,88,90)
			if $fly > 0 
				BC( "screen" , "player" , -1, "You have returned to the Gate of Fate!" )
			else
				BC( "screen" , "player" , -1, "Unknown error, oh no!" )
			endif
		endif
			
	}
	//????
	//function OnOption2(){
		
	//	$PlayerFE = GetPlayerVar( -1, 3319 )
	//	$PlayerFE = $PlayerFE
	//	$PlayerFE = $PlayerFE * 5
	//	$tcm = GetTarotCostMax(-1)
	//	$tacm = GetTarotAwardCostMax(-1)
	//	$tcm = $tcm - 20
	//	$qita = $tcm - $tacm
	//	$chazhi = $PlayerFE - $qita
	//	if $chazhi > 0
	//		AddTarotCostMax(-1,$chazhi)
	//		BC( "screen" , "player" , -1, "GUID:08043000035" )
	//	endif
		
	//}