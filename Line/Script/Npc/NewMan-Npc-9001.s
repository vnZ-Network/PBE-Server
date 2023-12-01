	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/19
	//		Author:???
	//		TaskName:NewMan-Npc-9001.s
	//		TaskID:???
	//
	//****************************************
	//
	function OnRequest(){
		$playervar1 = GetPlayerVar( -1, 3752 )
		$playervar2 = GetPlayerVar( -1, 3751 )
		$playervar3 = GetPlayerVar( -1, 3750 )
		$playervar4 = GetPlayerVar( -1, 3749 )
		$today_time = GetSystemTime( "yday" )
		if $playervar1 == $today_time
			DisableNpcOption(0)
		endif
		if $playervar2 == $today_time
			DisableNpcOption(1)
		endif
		if $playervar3 == $today_time
			DisableNpcOption(2)
		endif
		if $playervar4 == $today_time
			DisableNpcOption(3)
		endif
		
		$RankList = GetRankListValue( 1, 499 )
		if $RankList < 50
				DisableNpcOption(0)
				DisableNpcOption(1)
				DisableNpcOption(2)
				DisableNpcOption(3)
		endif
		if $RankList >= 50
			if $RankList <= 69
				DisableNpcOption(2)
				DisableNpcOption(3)
			endif
		endif
		if $RankList >= 70
			if $RankList <= 89
				DisableNpcOption(3)
			endif
		endif
		
		$Task1 = IsTaskAccept( -1, 1701 )
		$Task2 = IsTaskAccept( -1, 1702 )
		$Task3 = IsTaskAccept( -1, 1703 )
		if $Task1 == 0
			DisableNpcOption(1)
		endif
		if $Task2 == 0
			DisableNpcOption(2)
		endif
		if $Task3 == 0
			DisableNpcOption(3)
		endif
	}
	
	function OnOption0(){
		$RankList = GetRankListValue( 1, 499 )
		if $RankList >= 50
			if $RankList <= 69
				call Newman1()
			endif
		endif
		if $RankList >= 70
			if $RankList <= 89
				call Newman2()
			endif
		endif
		if $RankList >= 90
			call Newman3()
		endif
					
	}
	
	function OnOption1(){
		
		$TaskCount = GetTaskCount( -1 )
		if $TaskCount >= 20
			BC( "dialogbox", "player", -1, "Sorry, your quest list is full." )
			return
		endif
		
		$playervar2 = GetPlayerVar( -1, 3751 )
		$today_time = GetSystemTime( "yday" )
		if $playervar2 == $today_time
			BC( "dialogbox", "player", -1, "You have received the New Player Welcome level 45 quest." )
			return
		endif
		
		AcceptTask( -1, 1701 )
		SetPlayerVar( -1, 3751, $today_time )
					
	}
	
	function OnOption2(){
		
		$TaskCount = GetTaskCount( -1 )
		if $TaskCount >= 20
			BC( "dialogbox", "player", -1, "Sorry, your quest list is full." )
			return
		endif
		
		$playervar2 = GetPlayerVar( -1, 3750 )
		$today_time = GetSystemTime( "yday" )
		if $playervar2 == $today_time
			BC( "dialogbox", "player", -1, "You have received the New Player Welcome level 45 quest." )
			return
		endif
		
		AcceptTask( -1, 1702 )
		SetPlayerVar( -1, 3750, $today_time )
					
	}
	
	function OnOption3(){
		
		$TaskCount = GetTaskCount( -1 )
		if $TaskCount >= 20
			BC( "dialogbox", "player", -1, "Sorry, your quest list is full." )
			return
		endif
		
		$playervar2 = GetPlayerVar( -1, 3749 )
		$today_time = GetSystemTime( "yday" )
		if $playervar2 == $today_time
			BC( "dialogbox", "player", -1, "You have received the New Player Welcome level 45 quest." )
			return
		endif
		
		AcceptTask( -1, 1703 )
		SetPlayerVar( -1, 3749, $today_time )
					
	}
	
	function Newman1(){
		$level = GetPlayerInfo( -1, "level" )
		if $level > 30
			BC( "dialogbox", "player", -1, "Your server is now level 1, players under level 30 are new players. You are above level 30." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		$playervar1 = GetPlayerVar( -1, 3752 )
		$today_time = GetSystemTime( "yday" )
		if $playervar1 == $today_time
			BC( "screen", "player", -1, "You have received the reward for new players today." )
			return
		endif
		
		AddPlayerInfo( -1, "item", 12720, 5 )
		AddStatus( -1, 11780, 1 )
		SetPlayerVar( -1, 3752, $today_time )
		
	}	
	
	function Newman2(){
		$level = GetPlayerInfo( -1, "level" )
		if $level > 50
			BC( "dialogbox", "player", -1, "Your server is now level 2, players under level 50 are new players. You are above level 50." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		$playervar1 = GetPlayerVar( -1, 3752 )
		$today_time = GetSystemTime( "yday" )
		if $playervar1 == $today_time
			BC( "screen", "player", -1, "You have received the reward for new players today." )
			return
		endif
		
		AddPlayerInfo( -1, "item", 12720, 5 )
		AddStatus( -1, 11780, 2 )
		SetPlayerVar( -1, 3752, $today_time )
		
	}
	
	function Newman3(){
		$level = GetPlayerInfo( -1, "level" )
		if $level > 70
			BC( "dialogbox", "player", -1, "Your server is now level 3, players under level 70 are new players. You are above level 70." )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		$playervar1 = GetPlayerVar( -1, 3752 )
		$today_time = GetSystemTime( "yday" )
		if $playervar1 == $today_time
			BC( "screen", "player", -1, "You have received the reward for new players today." )
			return
		endif
		
		AddPlayerInfo( -1, "item", 12720, 5 )
		AddStatus( -1, 11780, 3 )
		SetPlayerVar( -1, 3752, $today_time )
		
	}