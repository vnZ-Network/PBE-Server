	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/01
	//		Author:??
	//		TaskName:HD-NPC-wakuang.s
	//		TaskID:??NPC??NPC199
	//
	//****************************************
	
	//??????
	function OnRequest(){
	
		$level = GetPlayerInfo( -1, "level" )
		//???????????
		if $level < 15
			DisableNpcOption(0)
		endif

		//???????????????
		//if $level < 45
		//	DisableNpcOption(2)
		//endif
		//$time = GetSystemTime( "hour" )
		//BC( "chat", "player", -1, "test:",$time )
		//if $time < 18 
		//	if $time > 13
		//		DisableNpcOption(2)
		//		return
		//	endif
		//endif
		//if $time > 19
		//	DisableNpcOption(2)
		//	return
		//endif	
		//if $time < 12
			//DisableNpcOption(2)
			//return
		//endif
	}
	
	
	//????????
	function OnOption0(){
	
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 15
			BC( "chat", "player", -1, "You must reach LV15 to receive items for collecting!" )
			BC( "screen", "player", -1, "You must reach LV15 to receive items for collecting!" )
			return
		endif
		//???????????
		$draw_day =  GetPlayerVar( -1, 3603 )
		//???????
		$time_days = GetSystemTime( "yday" )
		//???????,??????
		if $time_days == $draw_day
			BC( "chat", "player", -1, "You can only get one collection tool per day." )
			BC( "screen", "player", -1, "You can only get one collection tool per day." )
			return
		endif
		
		
		//???????????,?????
		$item_count = GetPlayerInfo( -1, "item", 19912)
		if $item_count != 0
			BC( "chat", "player", -1, "You already have a Collector. You can't get another!" )
			BC( "screen", "player", -1, "You already have a Collector. You can't get another!" )
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "chat", "player", -1, "Insufficient space in your common bag!" )
			BC( "screen", "player", -1, "Insufficient space in your common bag!" )
			return
		endif
		
		//??????
		AddPlayerInfo( -1, "item", 19912, 1 )
		//?????????????
		SetPlayerVar( -1, 3603 ,$time_days)
		BC( "messagebox", "player", -1, "You have successfully acquired a Collector." )

	}
	
//?????
	function OnOption1(){

		FlyToMap( -1, 59, 64, 64, 1 )
	//	BC( "chat", "player", -1, "GUID:05037000009" )
	}
	
	
