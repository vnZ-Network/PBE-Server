	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/05
	//		Author:??
	//		TaskName:HD-shangjinrenwu-NPC.s
	//		TaskID:????,????15??????
	//
	//**************************************
	//3?NPC 295   186 184
	
	//3616 ????15??????
	function OnRequest(){
	
		$today_time = GetSystemTime( "yday" )	
		$player_time =  GetPlayerVar( -1, 3616 )
			
		if $player_time == $today_time
			DisableNpcOption(0)
			return
		endif
	}
	
	//??15???,?????????,???,?15???
	function OnOption0(){
		
		
		
		SubPlayerInfo( -1, "item", 12257, -1)
		SubPlayerInfo( -1, "item", 12258, -1)
		SubPlayerInfo( -1, "item", 12259, -1)
		$bag_count = GetPlayerInfo(-1 , "nullitem" , 3)
		if $bag_count < 3
			BC( "dialogbox", "player", -1, "You have not enough space in your bag,please fix your bag." )
			return
		endif
		//----------
		AddPlayerInfo( -1, "item", 12257, 5)
		AddPlayerInfo( -1, "item", 12258, 5)
		AddPlayerInfo( -1, "item", 12259, 5)
		
		$today_time = GetSystemTime( "yday" )
		SetPlayerVar( -1 , 3616 , $today_time )
		
	}