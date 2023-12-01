
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/04/19
	//		Author:???
	//		TaskName:Item-ogulasoul-59288.s
	//		TaskID:   
	//****************************************
	
	function OnUseItem(){
		
		$Accept = IsTaskAccept( -1 , 4499 )
		if $Accept == 0
			BC( "screen" , "player" , -1 , "You have acquired the Kiss of Okula quest." )
			BC( "chat" , "player" , -1 , "You have acquired the Kiss of Okula quest." )
			return
		endif
		
		$mapid = GetPlayerInfo( -1 , "mapid" )
		$lv = GetPlayerInfo( -1 , "level" )
		$mapx = GetPlayerInfo( -1 , "mapx" )
		$mapy = GetPlayerInfo( -1 , "mapy" )
		
		if $lv < 75
			BC( "screen" , "player" , -1 , "You can't use this before reaching LV75." )
			BC( "chat" , "player" , -1 , "You can't use this before reaching LV75." )
			return
		endif
		if $mapid != 66
			BC( "screen" , "player" , -1 , "You can only use this in Devilhunter Gorge." )
			BC( "chat" , "player" , -1 , "You can only use this in Devilhunter Gorge." )
			return
		endif
		
		$Time = GetSystemTime( "yday" )
		$Task_Time = GetPlayerVar( -1 , 3986 )
		
		if $Time == $Task_Time
			$n = GetPlayerVar( -1 , 3276 )
			$n = $n + 1
			if $n <= 10
				$info = SubPlayerInfo( -1, "item", 59288 , 1  )
				if $info != 0
					return
				endif
				AcceptTask( -1 , 4499 )
				AddMonster( 30055 , 1 , 66 ,$mapx , $mapy , 2 , -1 )
				SetPlayerVar( -1 , 3276 , $n )
			else
				BC( "screen" , "player" , -1 , "You can only use Okula's Soul 10 times a day." )
				BC( "chat" , "player" , -1 , "You can only use Okula's Soul 10 times a day." )
			endif
		else
			$info = SubPlayerInfo( -1, "item", 59288 , 1  )
			if $info != 0
				return
			endif
			AcceptTask( -1 , 4499 )
			AddMonster( 30055 , 1 , 66 ,$mapx , $mapy , 2 , -1 )
			SetPlayerVar( -1 , 3276 , 1 )
			SetPlayerVar( -1 , 3986 , $Time )
		endif
		
	}

