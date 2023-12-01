	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/12/6
	//		Author:???
	//		TaskName:ITEM-reducetirevalue-63336.s
	//		TaskID:?????
	//
	//****************************************
	
	//????1:??????????? 3640
	//????2:??????????? 3641
	
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 35
		BC( "screen", "player", -1, "You cannot use Tech Stone of Stamina until LV35." )
			return
		endif
		
		//??????
		$time = GetSystemTime( "yday" )
		
		//???????????
		$Task_Time = GetPlayerVar( -1, 3640 )
		
		//???????????
		$Task_number = GetPlayerVar( -1, 3641 )
	
		
		if $time != $Task_Time
			
			$info = SubPlayerInfo ( -1 , "item" , 63336 , 1 )
			if  $info != 0
				return
			endif
			ReduceTireVAlue(-1,100)
			BC( "screen", "player", -1, "Your Exhaustion has been reduced by 100." )
			SetPlayerVar(-1,3641,1)
			SetPlayerVar(-1,3640,$time)
		else 
			if $Task_number < 3
				$info = SubPlayerInfo ( -1 , "item" , 63336 , 1 )
				if  $info != 0
					return
				endif
				ReduceTireVAlue(-1,100)
				BC( "screen", "player", -1, "Your Exhaustion has been reduced by 100." )
				$a = $Task_number + 1
				SetPlayerVar(-1,3641,$a)
			else 
				BC( "screen", "player", -1, "You cannot use Tech Stone of Stamina more than 3 times per day." )
			endif
		endif
		}