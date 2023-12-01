
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/20
	//		Author:???
	//		TaskName:Item-63558.s
	//		TaskID:   
	//****************************************
	
	function OnUseItem(){
		
		$Accept = IsTaskAccept( -1 , 4474 )
		if $Accept == 0
			return
		endif
		
		$mapid = GetPlayerInfo( -1 , "mapid" )
		$lv = GetPlayerInfo( -1 , "level" )
		$mapx = GetPlayerInfo( -1 , "mapx" )
		$mapy = GetPlayerInfo( -1 , "mapy" )
		
		if $lv < 60
			BC( "screen" , "player" , -1 , "You have to be above LV60 to use it." )
			BC( "chat" , "player" , -1 , "You have to be above LV60 to use it." )
			return
		endif
		if $mapid != 66
			BC( "screen" , "player" , -1 , "This can only be used in Devilhunter Gorge." )
			BC( "chat" , "player" , -1 , "This can only be used in Devilhunter Gorge." )
			return
		endif
		
		$Time = GetSystemTime( "yday" )
		$Task_Time = GetPlayerVar( -1 , 3739 )
		
		if $Time == $Task_Time
			$n = GetPlayerVar( -1 , 3740 )
			$n = $n + 1
			if $n <= 3
				$info = SubPlayerInfo( -1, "item", 63558 , 1  )
				if $info != 0
					return
				endif
				AcceptTask( -1 , 4474 )
				AddMonster( 30054 , 1 , 66 ,$mapx , $mapy , 2 , -1 )
				SetPlayerVar( -1 , 3740 , $n )
			else
				BC( "screen" , "player" , -1 , "Wolfking Karth's Soul can only be used 3 times a day." )
				BC( "chat" , "player" , -1 , "Wolfking Karth's Soul can only be used 3 times a day." )
			endif
		else
			$info = SubPlayerInfo( -1, "item", 63558 , 1  )
			if $info != 0
				return
			endif
			AcceptTask( -1 , 4474 )
			AddMonster( 30054 , 1 , 66 ,$mapx , $mapy , 2 , -1 )
			SetPlayerVar( -1 , 3740 , 1 )
			SetPlayerVar( -1 , 3739 , $Time )
		endif
		
	}

