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
		$playervar1 = GetPlayerVar( -1, 3752 )
		$playervar2 = GetPlayerVar( -1, 3751 )
		$playervar3 = GetPlayerVar( -1, 3750 )
		$playervar4 = GetPlayerVar( -1, 3749 )
		$playervar5 = GetPlayerVar( -1, 4058 )
		$playervar6 = GetPlayerVar( -1, 4057 )
		$25 = GetPlayerVar( -1, 25 )
		$26 = GetPlayerVar( -1, 26 )
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
		if $playervar5 == $today_time
			DisableNpcOption(4)
		endif
		if $playervar6 == $today_time
			DisableNpcOption(5)
		endif
		
		$RankList = GetRankListValue( 1, 499 )
		//????????????????
		if $RankList < 75
				DisableNpcOption(0)
				DisableNpcOption(1)
				DisableNpcOption(2)
				DisableNpcOption(3)
				DisableNpcOption(4)
				DisableNpcOption(5)
		endif
		//1?????75,90,100??????
		if $RankList >= 75
			if $RankList <= 89
				DisableNpcOption(3)
				DisableNpcOption(4)
				DisableNpcOption(5)
			endif
		endif
		//2?????90,100??????
		if $RankList >= 90
			if $RankList <= 99
				DisableNpcOption(4)
				DisableNpcOption(5)
			endif
		endif
		//3?????100??????
		if $RankList >= 100
			if $RankList <= 109
				DisableNpcOption(5)
			endif
		endif
		
		$Task1 = IsTaskAccept( -1, 1701 )
		$Task2 = IsTaskAccept( -1, 1702 )
		$Task3 = IsTaskAccept( -1, 1703 )
		$Task4 = IsTaskAccept( -1, 1704 )
		$Task5 = IsTaskAccept( -1, 1940 )
		//45??????
		if $Task1 == 0
			DisableNpcOption(1)
		endif
		//60??????
		if $Task2 == 0
			DisableNpcOption(2)
		endif
		//75??????
		if $Task3 == 0
			DisableNpcOption(3)
		endif
		//90??????
		if $Task4 == 0
			DisableNpcOption(4)
		endif
		//100??????
		if $Task5 == 0
			DisableNpcOption(5)
		endif
		
		//??6????????,????		
//		$level = GetPlayerInfo( -1, "level" )
//		if $level < 55
			DisableNpcOption(6)
//		endif
		
//		$is_get = GetPlayerVar(-1 , 46)
//		if $is_get != 0
//			DisableNpcOption(6)
//		endif
		
		//??????????????
		if $25 == 1
			if $26 == 1
				DisableNpcOption(7)
			endif
		endif
		
	}
	
	function OnOption0(){
		$RankList = GetRankListValue( 1, 499 )
		if $RankList >= 75
			if $RankList <= 89
				call Newman1()
			endif
		endif
		
		if $RankList >= 90
			if $RankList <= 99
				call Newman2()
			endif
		endif
		
		if $RankList >= 100
			if $RankList <= 109
				call Newman3()
			endif
		endif
		
		if $RankList >= 110
			if $RankList <= 119
				call Newman4()
			endif	
		endif
		
		if $RankList >= 120
			call Newman5()
		endif
								
	}
	
	function OnOption1(){
		
		$TaskCount = GetTaskCount( -1 )
		if $TaskCount >= 20
			BC( "dialogbox", "player", -1, "Sorry, your quest list is full." )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 40
			BC( "dialogbox", "player", -1, "Sorry, you can receive this quest only after reaching level 40." )
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
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 50
			BC( "dialogbox", "player", -1, "Sorry, you can receive this quest only after reaching level 50." )
			return
		endif
		
		$playervar2 = GetPlayerVar( -1, 3750 )
		$today_time = GetSystemTime( "yday" )
		if $playervar2 == $today_time
			BC( "dialogbox", "player", -1, "You have received the New Player Welcome level 60 quest." )
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
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 65
			BC( "dialogbox", "player", -1, "Sorry, you can receive this quest only after reaching level 65." )
			return
		endif
		
		$playervar2 = GetPlayerVar( -1, 3749 )
		$today_time = GetSystemTime( "yday" )
		if $playervar2 == $today_time
			BC( "dialogbox", "player", -1, "You have received the New Player Welcome level 75 quest." )
			return
		endif
		
		AcceptTask( -1, 1703 )
		SetPlayerVar( -1, 3749, $today_time )
					
	}
	
	function OnOption4(){
		
		$TaskCount = GetTaskCount( -1 )
		if $TaskCount >= 20
			BC( "dialogbox", "player", -1, "Sorry, your quest list is full." )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 80
			BC( "dialogbox", "player", -1, "You must have reached LV80 before you can receive the gift." )
			return
		endif
		
		$playervar2 = GetPlayerVar( -1, 4058 )
		$today_time = GetSystemTime( "yday" )
		if $playervar2 == $today_time
			BC( "dialogbox", "player", -1, "You have received the LV90 Newbie quest." )
			return
		endif
		
		AcceptTask( -1, 1704 )
		SetPlayerVar( -1, 4058, $today_time )
					
	}
	
	function OnOption5(){
		
		$TaskCount = GetTaskCount( -1 )
		if $TaskCount >= 20
			BC( "dialogbox", "player", -1, "Sorry, your quest list is full." )
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 95
			BC( "dialogbox", "player", -1, "You must have reached LV95 before you can receive the gift." )
			return
		endif
		
		$playervar2 = GetPlayerVar( -1, 4057 )
		$today_time = GetSystemTime( "yday" )
		if $playervar2 == $today_time
			BC( "dialogbox", "player", -1, "You have received the LV100 Newbie quest." )
			return
		endif
		
		AcceptTask( -1, 1940 )
		SetPlayerVar( -1, 4057, $today_time )
					
	}	
	
	function OnOption6(){
	
//		$level = GetPlayerInfo( -1, "level" )
//		if $level < 55
//			return
//		endif
//		
//		$is_get = GetPlayerVar(-1 , 46)
//		if $is_get != 0
//			return
//		endif
//		
//		$revalue = AddPlayerInfo( -1, "item", 59161, 1 )
//		if $revalue == 0
//			SetPlayerVar(-1 , 46 , 1)
//		else
//			BC( "dialogbox", "player", -1, "GUID:08110000015" )
//		endif
				
	}
	
	function OnOption8(){
	  Cmd(-1, "fanscard 2")
	}
	
	function Newman1(){
		$level = GetPlayerInfo( -1, "level" )
		if $level > 60
			BC( "dialogbox", "player", -1, "The server is now LV1. Players below LV60 are new players. You are above LV60." )
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
		
		if $level < 45
			BC( "screen", "player", -1, "Only characters above LV45 can receive a Champion's Soul." )
			AddStatus( -1, 11780, 1 )
			SetPlayerVar( -1, 3752, $today_time )
		endif
		
		if $level >= 45
			AddStatus( -1, 11780, 1 )
			AddPlayerInfo( -1, "item", 44081, 2 )
			SetPlayerVar( -1, 3752, $today_time )
			SetPlayerActLog(-1,32,0)
		endif	
	}	

	
	function Newman2(){
		$level = GetPlayerInfo( -1, "level" )
		if $level > 75
			BC( "dialogbox", "player", -1, "The server is now LV2. Players below LV75 are new players. You are above LV75." )
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
		
		if $level < 45
			BC( "screen", "player", -1, "Only characters above LV45 can receive a Champion's Soul." )
			AddStatus( -1, 11780, 2 )
			SetPlayerVar( -1, 3752, $today_time )
		endif
		
		if $level >= 45
			AddStatus( -1, 11780, 2 )
			AddPlayerInfo( -1, "item", 44081, 2 )
			SetPlayerVar( -1, 3752, $today_time )
			SetPlayerActLog(-1,32,0)
		endif	
	}	

        function Newman3(){
		$level = GetPlayerInfo( -1, "level" )
		if $level > 90
			BC( "dialogbox", "player", -1, "The server is now LV3. Players below LV90 are new players. You are above LV90." )
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
		
		if $level < 45
			BC( "screen", "player", -1, "Only characters above LV45 can receive a Champion's Soul." )
			AddStatus( -1, 11780, 3 )
			SetPlayerVar( -1, 3752, $today_time )
		endif
		
		if $level >= 45
			AddStatus( -1, 11780, 3 )
			AddPlayerInfo( -1, "item", 44081, 2 )
			SetPlayerVar( -1, 3752, $today_time )
			SetPlayerActLog(-1,32,0)
		endif	
	}	

        function Newman4(){
		$level = GetPlayerInfo( -1, "level" )
		if $level > 100
			BC( "dialogbox", "player", -1, "The server is now LV4. Players below LV100 are new players. You are above LV100." )
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
		
		if $level < 45
			BC( "screen", "player", -1, "Only characters above LV45 can receive a Champion's Soul." )
			AddStatus( -1, 11780, 4 )
			SetPlayerVar( -1, 3752, $today_time )
		endif
		
		if $level >= 45
			AddStatus( -1, 11780, 4 )
			AddPlayerInfo( -1, "item", 44081, 2 )
			SetPlayerVar( -1, 3752, $today_time )
			SetPlayerActLog(-1,32,0)
		endif	
	}
	
        function Newman5(){
		$level = GetPlayerInfo( -1, "level" )
		if $level > 110
			BC( "dialogbox", "player", -1, "The server is now LV5. Only players below LV110 are new players. You are above LV110." )
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
		
		if $level < 45
			BC( "screen", "player", -1, "Only characters above LV45 can receive a Champion's Soul." )
			AddStatus( -1, 11780, 4 )
			SetPlayerVar( -1, 3752, $today_time )
		endif
		
		if $level >= 45
			AddStatus( -1, 11780, 4 )
			AddPlayerInfo( -1, "item", 44081, 2 )
			SetPlayerVar( -1, 3752, $today_time )
			SetPlayerActLog(-1,32,0)
		endif	
	}
	

	//---------------------????????---------------------------
	
	function OnOption7(){
	
		$65 = GetPlayerVar( -1, 65 )
		$66 = GetPlayerVar( -1, 66 )
		$25 = GetPlayerVar( -1, 25 )
		$26 = GetPlayerVar( -1, 26 )
		$bag = GetPlayerInfo( -1, "nullitem", 0 )
	
		if $25 == 1
			if $26 == 1
				BC( "screen", "player", -1, "You have gained and used two Fruits of Potential." )
				return
			endif
		endif
		
		
		//---------------------------
		
		if $25 < 1
			if $65 < 1
				if $bag < 1
					BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
					return
				else
					AddPlayerInfo( -1 , "item" , 64383, 1 )
					SetPlayerVar( -1 , 65 , 1 )
					return
				endif
			endif
		endif
		
		//-------------------------
		
		if $26 < 1
			if $66 < 1
				if $bag < 1
					BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
					return
				else
					AddPlayerInfo( -1 , "item" , 64410, 1 )
					SetPlayerVar( -1 , 66 , 1 )
					return
				endif
			endif
		endif
		
		BC( "screen", "player", -1, "You've received another Fruit of Potential." )
	
	}