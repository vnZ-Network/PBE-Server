	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/17
	//		Author:??
	//		TaskName:HD-guajichuansong-shengmingzhishu.s
	//		TaskID:????????????
	//
	//****************************************
	
	
	//
	function OnRequest(){
		
		$last_time =  GetPlayerVar( -1, 3715 )
		$today_time = GetSystemTime( "yday" )
		
		if $today_time == $last_time
			DisableNpcOption(0)
		endif
		$times = GetSystemTime( "hour" )	
		
		if $times < 22
			if $times >= 6
				DisableNpcOption(0)
			endif
		endif
		
	}

	function OnOption0(){
		
		$today_time = GetSystemTime( "yday" )
		$count = GetPlayerInfo( -1, "item", 63504 )
		if $count < 1
			BC( "dialogbox", "player", -1, "You do not have any Heaven Tree Seed." )
			return
		endif
		$result = SubPlayerInfo( -1, "item", 63504, 1 )
		if $result == 0
			AddStatus( -1, 11908 , 6)
			SetPlayerVar( -1 , 3715, $today_time)
			 //??-START
			$TJ_join_number = GetGlobalVar(962)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(962 , $TJ_join_number)
			//??-END    
		endif
		
	}
	//???????
	function OnOption1(){
		
		$count = GetPlayerInfo( -1, "item", 63082 )
		$countbang = GetPlayerInfo( -1, "item", 63048 )
		
		$allhujiacount = $count + $countbang
		if $allhujiacount < 3
			BC( "dialogbox", "player", -1, "You do not have 3 Heaven Tree Seeds." )
			return
		endif
		
	
		if $countbang >= 3
			$result = SubPlayerInfo( -1, "item", 63048, 3 )
			if $result == 0
				AddStatus( -1, 11908 , 3)
			endif
			
		else
		
			$countcha = 3 - $countbang
			
			if $countbang == 0
				$result1 = SubPlayerInfo( -1, "item", 63082, $countcha )
				if $result1 == 0
					AddStatus( -1, 11908 , 3)
				endif
			else
				$result = SubPlayerInfo( -1, "item", 63048, $countbang )
				$result1 = SubPlayerInfo( -1, "item", 63082, $countcha )
				if $result != 0
					return
				endif
				if $result1 != 0
					return
				endif	
				AddStatus( -1, 11908 , 3)
				
			endif		
		endif
		
	}
	//
	function OnOption2(){
		
		$count = GetPlayerInfo( -1, "item", 63082 )
		$countbang = GetPlayerInfo( -1, "item", 63048 )
		
		$allhujiacount = $count + $countbang
		if $allhujiacount < 6
			BC( "dialogbox", "player", -1, "You do not have 6 Heaven Tree Seeds." )
			return
		endif
		
	
		if $countbang >= 6
			$result = SubPlayerInfo( -1, "item", 63048, 6 )
			if $result == 0
				AddStatus( -1, 11908 , 6)
			endif
			
		else
		
			$countcha = 6 - $countbang
			
			if $countbang == 0
				$result1 = SubPlayerInfo( -1, "item", 63082, $countcha )
				if $result1 == 0
					AddStatus( -1, 11908 , 6)
				endif
			else
				$result = SubPlayerInfo( -1, "item", 63048, $countbang )
				$result1 = SubPlayerInfo( -1, "item", 63082, $countcha )
				if $result != 0
					return
				endif
				if $result1 != 0
					return
				endif	
				AddStatus( -1, 11908 , 6)
				
			endif		
		endif
		
	}
	function OnOption3(){
		$result = FlyToMap( -1, 475, 75, 56 ,1)
	}
