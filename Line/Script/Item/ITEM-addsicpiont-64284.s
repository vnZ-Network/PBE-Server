	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/15
	//		Author:???
	//		TaskName:ITEM-addsicpiont-64284.s
	//		TaskID:?????  1000
	//
	//****************************************
	
	//????1:??????????? 3668
	//????2:??????????? 3669
	
	
	function OnUseItem(){
	
		$level = GetPlayerInfo( -1, "level" )
		//????????
		if $level < 35
		BC( "screen", "player", -1, "Cannot use Tech Stone of Power under LV35." )
			return
		endif
		
		//??????
		$time = GetSystemTime( "yday" )
		
		//???????????
		$Task_Time = GetPlayerVar( -1, 3668 )
		
		//???????????
		$Task_number = GetPlayerVar( -1, 3669 )
	
		
		if $time != $Task_Time
			
			$info = SubPlayerInfo ( -1 , "item" , 64284 , 1 )
			if  $info != 0
				return
			endif
			AddSciPoint(-1 ,1000)
			BC( "screen", "player", -1, "You have acquired 1000 Tech points." )
			SetPlayerVar(-1,3669,1)
			SetPlayerVar(-1,3668,$time)
		else 
			if $Task_number < 3
				$info = SubPlayerInfo ( -1 , "item" , 64284 , 1 )
				if  $info != 0
					return
				endif
				AddSciPoint(-1,1000)
				BC( "screen", "player", -1, "You have acquired 1000 Tech points." )
				$a = $Task_number + 1
				SetPlayerVar(-1,3669,$a)
			else 
				BC( "screen", "player", -1, "You have already used Tech Stone of Power 3 times today. You cannot use it again now. " )
			endif
		endif
		}