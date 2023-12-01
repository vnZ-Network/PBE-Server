	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/14
	//		Author:??
	//		TaskName:HD-jinzita-NPC-anquanditu.s
	//		TaskID:????????-????????NPC,???????????
	//
	//****************************************
	//3617,?????????????????
	//3214,???????????????????????
	
	function OnRequest(){
	//????????????
	
		$today_days = GetSystemTime( "yday" )	
		$today_week = GetSystemTime( "week" )
		$times = GetSystemTime( "hour" )	
		
		if $today_week != 5
			
			DisableNpcOption(0)
			return
			
		endif
		
		if $times < 20
			DisableNpcOption(0)
			return
		endif
		//-------------------------
		
		$last_days = GetPlayerVar(-1,3617)
		
		if $today_days != $last_days
			DisableNpcOption(0)
			return
		endif
		
	}
	
	//?????
	function OnOption0(){
		
		$today_days = GetSystemTime( "yday" )	
		$last_days = GetPlayerVar(-1,3617)
		
		if $today_days != $last_days
			BC( "chat", "player", -1, "You have not been to the Pyramid today." )
			return
		endif
		
		$line =  GetServerLineID()
		if $line != 6
			BC( "chat", "player", -1, "Only Realm 6 can enter the Pyramid." )
			return
		endif
		
		
		$map_type = GetPlayerVar(-1, 3214)
		
		$map_id = 111
		$map_x = 58
		$map_y = 45
		
		if $map_type == 0
			$map_id = 123
			$map_x = 36
			$map_y = 26
		endif
		if $map_type == 1
			$map_id = 124
			$map_x = 86
			$map_y = 26
		endif
		if $map_type == 2
			$map_id = 125
			$map_x = 31
			$map_y = 101
		endif
		if $map_type == 3
			$map_id = 126
			$map_x = 95
			$map_y = 95
		endif
		
		FlyToMap( -1, $map_id, $map_x, $map_y )
		
	}
	//????
	function OnOption1(){

		FlyToMap( -1, 475, 71, 39 )
	}