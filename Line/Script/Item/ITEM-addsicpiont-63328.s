	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/29
	//		Author:???
	//		TaskName:ITEM-addsicpiont-63328.s
	//		TaskID:?????(??)
	//
	//****************************************
	
	//????1:??????????? 3638
	//????2:??????????? 3639
	
	
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
		$Task_Time = GetPlayerVar( -1, 3638 )
		
		//???????????
		$Task_number = GetPlayerVar( -1, 3639 )
	
		
		if $time != $Task_Time
			
			$info = SubPlayerInfo ( -1 , "item" , 63328 , 1 )
			if  $info != 0
				return
			endif
			AddSciPoint(-1 ,2000)
			BC( "screen", "player", -1, "You have acquired 2000 Tech points." )
			SetPlayerVar(-1,3639,1)
			SetPlayerVar(-1,3638,$time)
		else 
			if $Task_number < 3
				$info = SubPlayerInfo ( -1 , "item" , 63328 , 1 )
				if  $info != 0
					return
				endif
				AddSciPoint(-1,2000)
				BC( "screen", "player", -1, "You have acquired 2000 Tech points." )
				$a = $Task_number + 1
				SetPlayerVar(-1,3639,$a)
			else 
				BC( "screen", "player", -1, "You have already used Tech Stone of Power 3 times today. You cannot use it again now. " )
			endif
		endif
		}