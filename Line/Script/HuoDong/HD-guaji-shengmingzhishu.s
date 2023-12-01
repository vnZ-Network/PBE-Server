	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/08/25
	//		Author:??
	//		TaskName:HD-shengmingzhishu.s
	//		TaskID:????NPC????
	//
	//****************************************
	
	//??????
	function OnRequest(){
	
		$level = GetPlayerInfo(-1,"level")
		if $level < 20
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		
		
		$last_time =  GetPlayerVar( -1, 3608 )
		$today_time = GetSystemTime( "yday" )
		//????????????
		if $today_time == $last_time
			DisableNpcOption(1)
		endif
		
	}
	
	//??????
	
	function OnOption0(){
		$level = GetPlayerInfo( -1, "level" )
		//????
		if $level < 20
			BC( "chat", "player", -1, "You can enter Tree of Life above level 20." )
			return
		endif

		$result = FlyToMap( -1, 113, 61, 65,1 )
	}
	
	function OnOption1(){
	
		$level = GetPlayerInfo( -1, "level" )
		//????
		if $level < 20
			BC( "chat", "player", -1, "You must receive Heaven Tree Seed above level 20." )
			return
		endif
		
		$last_time =  GetPlayerVar( -1, 3608 )
		$today_time = GetSystemTime( "yday" )
		
		if $today_time == $last_time
			BC( "dialogbox", "player", -1, "You have received Heaven Tree Seed already today." )
			return
		endif
		
		$revalue = AddPlayerInfo( -1, "item", 63048, 1 )
		
		if $revalue == 0
			BC( "dialogbox", "player", -1, "You have received the free Heaven Tree Seed today." )
			SetPlayerVar( -1, 3608 ,$today_time)
			//?????????????
   			//??-START
			$TJ_join_number = GetGlobalVar(914)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(914 , $TJ_join_number)
			//??-END
		else
			BC( "dialogbox", "player", -1, "Your bag is full." )
		endif
	}