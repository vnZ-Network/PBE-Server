	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/3/1
	//		Author:???
	//		TaskName:Ectype-haihuangpian-Npc-Enter-2186.s
	//		TaskID:????????
	//
	//****************************************
	//

	
	
	
	function OnRequest(){
		
	}
	
	
	//????1
	function OnOption0(){

		
		//???????
		$week = GetSystemTime("week")
		if $week != 6
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return	
		endif
		
		//21:00-23:00??
		$Now_Hour =  GetSystemTime( "hour" )
		if $Now_Hour <= 20
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return	
		endif
		
		if $Now_Hour >= 23
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return
		endif
		
		
		//??????,??6???
		$line = GetServerLineID()
		if $line != 6
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return	
		endif
		
		
		//????80?????
		$level = GetPlayerInfo( -1 , "level" )
		if $level < 80
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return
		endif
		
		
		//????
		//????????????????
		$mapcount = GetMapPlayerCount( 273 )
		
		if $mapcount < 300
			//BC( "screen", "player", -1, "GUID:04426000005" )
			FlyToMap( -1 , 273 , 64 , 30 )
			//????
			BC( "screen", "player", -1, "Defeat Poseidon's 7 lieutenants and destroy the pillars they protect. Then challenge Poseidon himself!" )
			BC( "chat", "player", -1, "Defeat Poseidon's 7 lieutenants and destroy the pillars they protect. Then challenge Poseidon himself!" )
			
			//??
			$history = GetGlobalVar( 973 )
			$history = $history + 1
			SetGlobalVar( 973 , $history )
			
		else
			BC( "dialogbox", "player", -1, "The map is full, try later please!" )
			return
		endif
		
	}
	
	
	//????1
	function OnOption1(){
		
		
		//???????
		$week = GetSystemTime("week")
		if $week != 6
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return	
		endif
		
		//21:00-23:00??
		$Now_Hour =  GetSystemTime( "hour" )
		if $Now_Hour <= 20
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return	
		endif
		
		if $Now_Hour >= 23
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return
		endif
		
		
		//??????,??6???
		$line = GetServerLineID()
		if $line != 6
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return	
		endif
		
		
		//????80?????
		$level = GetPlayerInfo( -1 , "level" )
		if $level < 80
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return
		endif
		
		
		//??????
		//????????????????
		$mapcount = GetMapPlayerCount( 273 )
		
		if $mapcount < 300
			//BC( "screen", "player", -1, "GUID:04426000014" )
			FlyToMap( -1 , 273 , 91 , 49 )
			//????
			BC( "screen", "player", -1, "Defeat Poseidon's 7 lieutenants and destroy the pillars they protect. Then challenge Poseidon himself!" )
			BC( "chat", "player", -1, "Defeat Poseidon's 7 lieutenants and destroy the pillars they protect. Then challenge Poseidon himself!" )
		
			//??
			$history = GetGlobalVar( 973 )
			$history = $history + 1
			SetGlobalVar( 973 , $history )		
		else
			BC( "dialogbox", "player", -1, "The map is full, try later please!" )
			return
		endif
		
	}
	
	//????1
	function OnOption2(){
		
		
		//???????
		$week = GetSystemTime("week")
		if $week != 6
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return	
		endif
		
		//21:00-23:00??
		$Now_Hour =  GetSystemTime( "hour" )
		if $Now_Hour <= 20
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return	
		endif
		
		if $Now_Hour >= 23
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return
		endif
		
		
		//??????,??6???
		$line = GetServerLineID()
		if $line != 6
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return	
		endif
		
		
		//????80?????
		$level = GetPlayerInfo( -1 , "level" )
		if $level < 80
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return
		endif
		
		
		//??????
		//????????????????
		$mapcount = GetMapPlayerCount( 273 )
		
		if $mapcount < 300
			//BC( "screen", "player", -1, "GUID:04426000023" )
			FlyToMap( -1 , 273 , 71 , 94 )
			//????
			BC( "screen", "player", -1, "Defeat Poseidon's 7 lieutenants and destroy the pillars they protect. Then challenge Poseidon himself!" )
			BC( "chat", "player", -1, "Defeat Poseidon's 7 lieutenants and destroy the pillars they protect. Then challenge Poseidon himself!" )
		
			//??
			$history = GetGlobalVar( 973 )
			$history = $history + 1
			SetGlobalVar( 973 , $history )
		else
			BC( "dialogbox", "player", -1, "The map is full, try later please!" )
			return
		endif
		
	}
	
	//????1
	function OnOption3(){
		
		
		//???????
		$week = GetSystemTime("week")
		if $week != 6
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return	
		endif
		
		//21:00-23:00??
		$Now_Hour =  GetSystemTime( "hour" )
		if $Now_Hour <= 20
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return	
		endif
		
		if $Now_Hour >= 23
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return
		endif
		
		
		//??????,??6???
		$line = GetServerLineID()
		if $line != 6
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return	
		endif
		
		
		//????80?????
		$level = GetPlayerInfo( -1 , "level" )
		if $level < 80
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return
		endif
		
		
		//??????
		//????????????????
		$mapcount = GetMapPlayerCount( 273 )
		
		if $mapcount < 300
			//BC( "screen", "player", -1, "GUID:04426000032" )
			FlyToMap( -1 , 273 , 42 , 87 )
			//????
			BC( "screen", "player", -1, "Defeat Poseidon's 7 lieutenants and destroy the pillars they protect. Then challenge Poseidon himself!" )
			BC( "chat", "player", -1, "Defeat Poseidon's 7 lieutenants and destroy the pillars they protect. Then challenge Poseidon himself!" )
			
			//??
			$history = GetGlobalVar( 973 )
			$history = $history + 1
			SetGlobalVar( 973 , $history )
		else
			BC( "dialogbox", "player", -1, "The map is full, try later please!" )
			return
		endif
		
	}
	
	//????1
	function OnOption4(){
		
		
		//???????
		$week = GetSystemTime("week")
		if $week != 6
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return	
		endif
		
		//21:00-23:00??
		$Now_Hour =  GetSystemTime( "hour" )
		if $Now_Hour <= 20
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return	
		endif
		
		if $Now_Hour >= 23
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return
		endif
		
		
		//??????,??6???
		$line = GetServerLineID()
		if $line != 6
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return	
		endif
		
		
		//????80?????
		$level = GetPlayerInfo( -1 , "level" )
		if $level < 80
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return
		endif
		
		
		//??????
		//????????????????
		$mapcount = GetMapPlayerCount( 273 )
		
		if $mapcount < 300
			//BC( "screen", "player", -1, "GUID:04426000041" )
			FlyToMap( -1 , 273 , 28 , 70 )
			//????
			BC( "screen", "player", -1, "Defeat Poseidon's 7 lieutenants and destroy the pillars they protect. Then challenge Poseidon himself!" )
			BC( "chat", "player", -1, "Defeat Poseidon's 7 lieutenants and destroy the pillars they protect. Then challenge Poseidon himself!" )
		
			//??
			$history = GetGlobalVar( 973 )
			$history = $history + 1
			SetGlobalVar( 973 , $history )
		else
			BC( "dialogbox", "player", -1, "The map is full, try later please!" )
			return
		endif
		
	}
	
	//????1
	function OnOption5(){
		
		
		//???????
		$week = GetSystemTime("week")
		if $week != 6
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return	
		endif
		
		//21:00-23:00??
		$Now_Hour =  GetSystemTime( "hour" )
		if $Now_Hour <= 20
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return	
		endif
		
		if $Now_Hour >= 23
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return
		endif
		
		
		//??????,??6???
		$line = GetServerLineID()
		if $line != 6
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return	
		endif
		
		
		//????80?????
		$level = GetPlayerInfo( -1 , "level" )
		if $level < 80
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return
		endif
		
		
		//??????
		//????????????????
		$mapcount = GetMapPlayerCount( 273 )
		
		if $mapcount < 300
			//BC( "screen", "player", -1, "GUID:04426000050" )
			FlyToMap( -1 , 273 , 31 , 43 )
			//????
			BC( "screen", "player", -1, "Defeat Poseidon's 7 lieutenants and destroy the pillars they protect. Then challenge Poseidon himself!" )
			BC( "chat", "player", -1, "Defeat Poseidon's 7 lieutenants and destroy the pillars they protect. Then challenge Poseidon himself!" )
		
			//??
			$history = GetGlobalVar( 973 )
			$history = $history + 1
			SetGlobalVar( 973 , $history )
		else
			BC( "dialogbox", "player", -1, "The map is full, try later please!" )
			return
		endif
		
		
	}
	
	//????1
	function OnOption6(){
		
		
		//???????
		$week = GetSystemTime("week")
		if $week != 6
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return	
		endif
		
		//21:00-23:00??
		$Now_Hour =  GetSystemTime( "hour" )
		if $Now_Hour <= 20
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return	
		endif
		
		if $Now_Hour >= 23
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return
		endif
		
		
		//??????,??6???
		$line = GetServerLineID()
		if $line != 6
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return	
		endif
		
		
		//????80?????
		$level = GetPlayerInfo( -1 , "level" )
		if $level < 80
			BC( "dialogbox", "player", -1, "The instance is only open on realm 6 for players LV80 and higher between 21:00 and 23:00." )
			return
		endif
		
		
		//??????
		//????????????????
		$mapcount = GetMapPlayerCount( 273 )
		
		if $mapcount < 300
			//BC( "screen", "player", -1, "GUID:04426000059" )
			FlyToMap( -1 , 273 , 43 , 30 )
			//????
			BC( "screen", "player", -1, "Defeat Poseidon's 7 lieutenants and destroy the pillars they protect. Then challenge Poseidon himself!" )
			BC( "chat", "player", -1, "Defeat Poseidon's 7 lieutenants and destroy the pillars they protect. Then challenge Poseidon himself!" )
			
			//??
			$history = GetGlobalVar( 973 )
			$history = $history + 1
			SetGlobalVar( 973 , $history )
		else
			BC( "dialogbox", "player", -1, "The map is full, try later please!" )
			return
		endif
		
	}