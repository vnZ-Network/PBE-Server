	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/30
	//		Author:???
	//		TaskName:NPC-201
	//		TaskID:???
	//
	//****************************************
	
	//???????????3910
	//???????????3911
	//???????????3912
	
	
	function OnRequest(){
		
		DisableNpcOption(0)
		$ectype_id = GetEctypeID( -1 , 261 )
		$accept = IsTaskAccept( -1 , 192 )
		$done = IsTaskDone( -1 , 192 )
		$done1 = IsTaskDone( -1 , 193 )
		
		if $ectype_id > 0
				if $done1 == 0
					DisableNpcOption(5)
					DisableNpcOption(6)
				else
					$team_count = GetTeamMemberCount(-1)
					if $team_count < 2
						DisableNpcOption(6)
						DisableNpcOption(7)
						DisableNpcOption(8)
					else
						DisableNpcOption(5)
						DisableNpcOption(6)
					endif
				endif
		else
			if $done1 == 0
				DisableNpcOption(5)
			else
				if $accept != 0
					if $done != 0
						DisableNpcOption(5)
					endif
				endif
				DisableNpcOption(6)
			endif
			DisableNpcOption(7)
			DisableNpcOption(8)
		endif
		
		$b1 = GetPlayerInfo(-1,"item",12739)
		$b2 = GetPlayerInfo(-1,"item",12740)
		$b3 = GetPlayerInfo(-1,"item",12741)
		$b4 = GetPlayerInfo(-1,"item",12742)	
		
		if $b1 == 0
			if $b2 == 0
				if $b3 == 0
					if $b4 == 0
						DisableNpcOption(0)
						DisableNpcOption(1)
						DisableNpcOption(2)
						DisableNpcOption(3)
					endif
				endif
			endif
		endif

		
	}
	
	
	//??????1?
//	function OnOption0(){
//	
//	
//		$lv = GetPlayerInfo( -1 , "level" )
//		if $lv < 95
//			BC( "screen" , "player" , -1 , "You can not receive it again until you reach level 95!" )
//			return
//		endif
//		
//		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
//		if $nullitem < 3
//			BC( "dialogbox" , "player" , -1 , "GUID:08123000001" )
//			return
//		endif
//		
//		
//		//???????
//		$time = GetSystemTime( "yday" )
//		$day = GetPlayerVar( -1 , 3910 )
//		//?????,?????????0
//		if $time != $day
//			SetPlayerVar( -1 , 3910 , $time )
//		else
//			BC( "dialogbox" , "player" , -1 , "GUID:08123000002" )
//			return
//		endif
//		
//		
//		//??3?
//		$n = 0
//		while $n < 3
//			$n = $n + 1
//		
//			$random = RandomNumber( 1 , 10000 )
//			//64%??
//			if $random >= 1
//				if $random < 6400
//					AddPlayerInfo( -1 , "item" , 12739 , 1 )
//				endif
//			endif
//		
//			//25%??
//			if $random >= 6400
//				if $random < 8900
//					AddPlayerInfo( -1 , "item" , 12740 , 1 )
//				endif 
//			endif
//			
//			//10%??
//			if $random >= 8900
//				if $random < 9900
//					AddPlayerInfo( -1 , "item" , 12741 , 1 )
//				endif 
//			endif
//			
//			//1%??
//			if $random >= 9900
//				if $random <= 10000
//					AddPlayerInfo( -1 , "item" , 12742 , 1 )
//				endif 
//			endif
//			
//		endwhile
//	
//	}
	
	
	//????
	function OnOption0(){
		
		$lv = GetPlayerInfo( -1 , "level" )
		if $lv < 95
			BC( "screen" , "player" , -1 , "You can not receive it again until you reach level 95!" )
			return
		endif
		
		//???????
		$count = GetPlayerInfo( -1 , "item" , 12739 )
		if $count <= 0
			BC( "dialogbox" , "player" , -1 , "You are wasting my time, you do not have a Revelation of Dead!" )
			return
		endif
		
		
		//???????3?
		$time = GetSystemTime( "yday" )
		$day = GetPlayerVar( -1 , 3911 )
		//?????,?????????0
		if $time != $day
			SetPlayerVar( -1 , 3911 , $time )
			SetPlayerVar( -1 , 3912 , 0 )
		endif
		
		
		$times = GetPlayerVar( -1 , 3912 )
		if $times < 3
			$times = $times + 1

				//??????
				$random = RandomNumber( 1 , 3 )
				$task1 = IsTaskAccept( -1 , 3305 )
				$task2 = IsTaskAccept( -1 , 3309 )
				$task3 = IsTaskAccept( -1 , 3313 )
				if $random == 1
					if $task1 == 1
						AcceptTask( -1 , 3305 )
						$result = SubPlayerInfo( -1 , "item" , 12739 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					endif
					if $task2 == 1
						AcceptTask( -1 , 3309 )
						$result = SubPlayerInfo( -1 , "item" , 12739 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					endif
					if $task3 == 1
						AcceptTask( -1 , 3313 )
						$result = SubPlayerInfo( -1 , "item" , 12739 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					else
						BC( "dialogbox" , "player" , -1 , "Please complete the previous quest first." )
						return
					endif
				endif
				
				if $random == 2
					if $task2 == 1
						AcceptTask( -1 , 3309 )
						$result = SubPlayerInfo( -1 , "item" , 12739 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					endif
					if $task3 == 1
						AcceptTask( -1 , 3313 )
						$result = SubPlayerInfo( -1 , "item" , 12739 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					endif
					if $task1 == 1
						AcceptTask( -1 , 3305 )
						$result = SubPlayerInfo( -1 , "item" , 12739 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					else
						BC( "dialogbox" , "player" , -1 , "Please complete the previous quest first." )
						return
					endif
				endif
				
				if $random == 3
					if $task3 == 1
						AcceptTask( -1 , 3313 )
						$result = SubPlayerInfo( -1 , "item" , 12739 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					endif
					if $task1 == 1
						AcceptTask( -1 , 3305 )
						$result = SubPlayerInfo( -1 , "item" , 12739 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					endif
					if $task2 == 1
						AcceptTask( -1 , 3309 )
						$result = SubPlayerInfo( -1 , "item" , 12739 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					else
						BC( "dialogbox" , "player" , -1 , "Please complete the previous quest first." )
						return
					endif
				endif
		else
			BC( "dialogbox" , "player" , -1 , "You can receive this daily quest 3 times per day." )
			return
		endif
		
	}
	
	
	//????
	function OnOption1(){
		
		$lv = GetPlayerInfo( -1 , "level" )
		if $lv < 95
			BC( "screen" , "player" , -1 , "You can not receive it again until you reach level 95!" )
			return
		endif
		
		//???????
		$count = GetPlayerInfo( -1 , "item" , 12740 )
		if $count <= 0
			BC( "dialogbox" , "player" , -1 , "You are wasting my time, you do not have a Revelation of Dead!" )
			return
		endif
		
		
		//???????3?
		$time = GetSystemTime( "yday" )
		$day = GetPlayerVar( -1 , 3911 )
		//?????,?????????0
		if $time != $day
			SetPlayerVar( -1 , 3911 , $time )
			SetPlayerVar( -1 , 3912 , 0 )
		endif
		
		
		$times = GetPlayerVar( -1 , 3912 )
		if $times < 3
			$times = $times + 1
			SetPlayerVar( -1 , 3912 , $times )

				//??????
				$random = RandomNumber( 1 , 3 )
				$task1 = IsTaskAccept( -1 , 3306 )
				$task2 = IsTaskAccept( -1 , 3310 )
				$task3 = IsTaskAccept( -1 , 3314 )
				if $random == 1
					if $task1 == 1
						AcceptTask( -1 , 3306 )
						$result = SubPlayerInfo( -1 , "item" , 12740 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					endif
					if $task2 == 1
						AcceptTask( -1 , 3310 )
						$result = SubPlayerInfo( -1 , "item" , 12740 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					endif
					if $task3 == 1
						AcceptTask( -1 , 3314 )
						$result = SubPlayerInfo( -1 , "item" , 12740 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					else
						BC( "dialogbox" , "player" , -1 , "Please complete the previous quest first." )
						return
					endif
				endif
				
				if $random == 2
					if $task2 == 1
						AcceptTask( -1 , 3310 )
						$result = SubPlayerInfo( -1 , "item" , 12740 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					endif
					if $task3 == 1
						AcceptTask( -1 , 3314 )
						$result = SubPlayerInfo( -1 , "item" , 12740 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					endif
					if $task1 == 1
						AcceptTask( -1 , 3306 )
						$result = SubPlayerInfo( -1 , "item" , 12740 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					else
						BC( "dialogbox" , "player" , -1 , "Please complete the previous quest first." )
						return
					endif
				endif
				
				if $random == 3
					if $task3 == 1
						AcceptTask( -1 , 3314 )
						$result = SubPlayerInfo( -1 , "item" , 12740 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					endif
					if $task1 == 1
						AcceptTask( -1 , 3306 )
						$result = SubPlayerInfo( -1 , "item" , 12740 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					endif
					if $task2 == 1
						AcceptTask( -1 , 3310 )
						$result = SubPlayerInfo( -1 , "item" , 12740 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					else
						BC( "dialogbox" , "player" , -1 , "Please complete the previous quest first." )
						return
					endif
				endif

		else
			BC( "dialogbox" , "player" , -1 , "You can receive this daily quest 3 times per day." )
			return
		endif
		
	}
	
	
	//????
	function OnOption2(){
		
		$lv = GetPlayerInfo( -1 , "level" )
		if $lv < 95
			BC( "screen" , "player" , -1 , "You can not receive it again until you reach level 95!" )
			return
		endif
		
		//???????
		$count = GetPlayerInfo( -1 , "item" , 12741 )
		if $count <= 0
			BC( "dialogbox" , "player" , -1 , "You are wasting my time, you do not have a Revelation of Dead!" )
			return
		endif
		
		
		//???????3?
		$time = GetSystemTime( "yday" )
		$day = GetPlayerVar( -1 , 3911 )
		//?????,?????????0
		if $time != $day
			SetPlayerVar( -1 , 3911 , $time )
			SetPlayerVar( -1 , 3912 , 0 )
		endif
		
		
		$times = GetPlayerVar( -1 , 3912 )
		if $times < 3
			$times = $times + 1
			SetPlayerVar( -1 , 3912 , $times )

			if $result == 0
				//??????
				$random = RandomNumber( 1 , 3 )
				$task1 = IsTaskAccept( -1 , 3307 )
				$task2 = IsTaskAccept( -1 , 3311 )
				$task3 = IsTaskAccept( -1 , 3315 )
				if $random == 1
					if $task1 == 1
						AcceptTask( -1 , 3307 )
						$result = SubPlayerInfo( -1 , "item" , 12741 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					endif
					if $task2 == 1
						AcceptTask( -1 , 3311 )
						$result = SubPlayerInfo( -1 , "item" , 12741 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					endif
					if $task3 == 1
						AcceptTask( -1 , 3315 )
						$result = SubPlayerInfo( -1 , "item" , 12741 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					else
						BC( "dialogbox" , "player" , -1 , "Please complete the previous quest first." )
						return
					endif
				endif
				
				if $random == 2
					if $task2 == 1
						AcceptTask( -1 , 3311 )
						$result = SubPlayerInfo( -1 , "item" , 12741 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					endif
					if $task3 == 1
						AcceptTask( -1 , 3315 )
						$result = SubPlayerInfo( -1 , "item" , 12741 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					endif
					if $task1 == 1
						AcceptTask( -1 , 3307 )
						$result = SubPlayerInfo( -1 , "item" , 12741 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					else
						BC( "dialogbox" , "player" , -1 , "Please complete the previous quest first." )
						return
					endif
				endif
				
				if $random == 3
					if $task3 == 1
						AcceptTask( -1 , 3315 )
						$result = SubPlayerInfo( -1 , "item" , 12741 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					endif
					if $task1 == 1
						AcceptTask( -1 , 3307 )
						$result = SubPlayerInfo( -1 , "item" , 12741 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					endif
					if $task2 == 1
						AcceptTask( -1 , 3311 )
						$result = SubPlayerInfo( -1 , "item" , 12741 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					else
						BC( "dialogbox" , "player" , -1 , "Please complete the previous quest first." )
						return
					endif
				endif
				
			endif 
		else
			BC( "dialogbox" , "player" , -1 , "You can receive this daily quest 3 times per day." )
			return
		endif
		
	}
	
	
	//????
	function OnOption3(){
		
		$lv = GetPlayerInfo( -1 , "level" )
		if $lv < 95
			BC( "screen" , "player" , -1 , "You can not receive it again until you reach level 95!" )
			return
		endif
		
		//???????
		$count = GetPlayerInfo( -1 , "item" , 12742 )
		if $count <= 0
			BC( "dialogbox" , "player" , -1 , "You are wasting my time, you do not have a Revelation of Dead!" )
			return
		endif
		
		
		//???????3?
		$time = GetSystemTime( "yday" )
		$day = GetPlayerVar( -1 , 3911 )
		//?????,?????????0
		if $time != $day
			SetPlayerVar( -1 , 3911 , $time )
			SetPlayerVar( -1 , 3912 , 0 )
		endif
		
		
		$times = GetPlayerVar( -1 , 3912 )
		if $times < 3
			$times = $times + 1
			SetPlayerVar( -1 , 3912 , $times )
			
				//??????
				$random = RandomNumber( 1 , 3 )
				$task1 = IsTaskAccept( -1 , 3308 )
				$task2 = IsTaskAccept( -1 , 3312 )
				$task3 = IsTaskAccept( -1 , 3316 )
				if $random == 1
					if $task1 == 1
						AcceptTask( -1 , 3308 )
						$result = SubPlayerInfo( -1 , "item" , 12742 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					endif
					if $task2 == 1
						AcceptTask( -1 , 3312 )
						$result = SubPlayerInfo( -1 , "item" , 12742 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					endif
					if $task3 == 1
						AcceptTask( -1 , 3316 )
						$result = SubPlayerInfo( -1 , "item" , 12742 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					else
						BC( "dialogbox" , "player" , -1 , "Please complete the previous quest first." )
						return
					endif
				endif
				
				if $random == 2
					if $task2 == 1
						AcceptTask( -1 , 3312 )
						$result = SubPlayerInfo( -1 , "item" , 12742 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					endif
					if $task3 == 1
						AcceptTask( -1 , 3316 )
						$result = SubPlayerInfo( -1 , "item" , 12742 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					endif
					if $task1 == 1
						AcceptTask( -1 , 3308 )
						$result = SubPlayerInfo( -1 , "item" , 12742 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					else
						BC( "dialogbox" , "player" , -1 , "Please complete the previous quest first." )
						return
					endif
				endif
				
				if $random == 3
					if $task3 == 1
						AcceptTask( -1 , 3316 )
						$result = SubPlayerInfo( -1 , "item" , 12742 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					endif
					if $task1 == 1
						AcceptTask( -1 , 3308 )
						$result = SubPlayerInfo( -1 , "item" , 12742 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					endif
					if $task2 == 1
						AcceptTask( -1 , 3312 )
						$result = SubPlayerInfo( -1 , "item" , 12742 , 1 )
						SetPlayerVar( -1 , 3912 , $times )
						return
					else
						BC( "dialogbox" , "player" , -1 , "Please complete the previous quest first." )
						return
					endif
				endif

		else
			BC( "dialogbox" , "player" , -1 , "You can receive this daily quest 3 times per day." )
			return
		endif
		
	}
	
	function OnOption4(){
	
		FlyToMap( -1 , 475 , 100 , 64 )
		
	}
	
	function OnOption5(){
	
		$accept = IsTaskAccept( -1 , 192 )
		$done = IsTaskDone( -1 , 192 )
		if $accept != 0
			if $done != 0
				return
			endif
		endif
		
		$in_team = IsPlayerInTeam(-1)
		if $in_team == 0
			BC( "dialogbox", "player", -1, "Diabolic Valley (Scenario) can only be done solo." )
			return
		endif
		
		$team_count = GetTeamMemberCount(-1)
		if $team_count > 1
			BC( "dialogbox", "player", -1, "Diabolic Valley (Scenario) can only be done solo." )
			return
		endif
		
		$player_id = GetPlayerID()
		$is_succeed = FlyToEctype( -1, 261, 41, 27 )
		if $is_succeed > 0
			$ectype_id = GetEctypeID( -1 , 261 )
			$done1 = IsTaskDone( -1, 193 )
			SetEctypeVar( $ectype_id, 1, $done1 )
			BC( "screen", "player", -1, "Welcome to Diabolic Valley (Scenario)." )
		else
			BC( "dialogbox", "player",  -1, "Error. Please, try again later or switch realms." )
			return
		endif	
	}
		
	function OnOption6(){
	
		$done = IsTaskDone( -1 , 193 )
		if $done != 0
			return
		endif
		
		$team_count = GetTeamMemberCount(-1)
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		$size = GetTeamAreaSize(-1)
		$in_team = IsPlayerInTeam(-1)
		
		if $in_team == 0
			//????????
			if $size > 10
				BC( "dialogbox", "player", -1, "One or more of your party members are too far away." )
				return
			else
				if $team_count < 2	
					$is_succeed = FlyToEctype( -1, 261, 41, 27 )
					$ectype_id = GetEctypeID( $team_headerID , 261 )
					if $is_succeed > 0
						$ectype_id = GetEctypeID( -1 , 261 )
						$done1 = IsTaskDone( -1, 193 )
						SetEctypeVar( $ectype_id, 1, $done1 )
						BC( "screen", "player", -1, "Welcome to Diabolic Valley (Daily)." )
					else
						//BC( "dialogbox", "player",  -1, "GUID:08123000033" )
						BC( "dialogbox", "player",  -1, "Present instance is still activated. To continue, choose Return.  To start again, choose Reset and re-enter the instance." )
						return
					endif
				else
					$ectype_id = GetEctypeID( $team_headerID , 261 )
					if $ectype_id > 0
						BC( "dialogbox", "player",  -1, "Present instance is still activated. To continue, choose Return.  To start again, choose Reset and re-enter the instance." )
						return
					else
						call Fly()
					endif
					
				endif
			endif
		else
			BC( "dialogbox", "player", -1, "Diabolic Valley (Daily) can only be entered when in a party. Please, create one first." )
			return
		endif
		
	}
	
	function OnOption7(){
	
		$done = IsTaskDone( -1 , 193 )
		if $done != 0
			BC( "dialogbox", "player", -1, #name , "You can't enter without having finished your present instance quests." )
			return
		endif

		$ectype_id = GetEctypeID( -1, 261 )
		$player_count = GetMapPlayerCount( $ectype_id )
		
		if $player_count >= 6
			BC( "dialogbox", "player", -1, "Diabolic Valley is already full with 6 people." )
			return
		endif
		
		if $ectype_id > 0
			$is_succeed = FlyToEctype( -1, 261, 41, 27 )
			if $is_succeed > 0
				BC( "screen", "player", -1, "Welcome back to Diabolic Valley." )
			endif
		else
			BC( "dialogbox", "player", -1 , "You do not belong to this instance any more." )
			return
		endif
		
	}
	
	function OnOption8(){
		
		$team_count = GetTeamMemberCount( -1 )
		$team_headerID = GetTeamHeaderID( -1 )
		$player_id = GetPlayerID()
		
		if $team_count < 2
			$ectype_id = GetEctypeID( -1 , 261 )
			if $ectype_id > 0
				$revalue = ReleaseEctype(-1 , 261)
				if $revalue == 0
					BC( "dialogbox", "player", -1, "Diabolic Valley has been reset!" )
				else
					BC( "dialogbox", "player", -1, "Failed to reset instance." )
					return
				endif
			endif
		else
			if $player_id != $team_headerID
				BC( "dialogbox", "player", -1, "Only the party leader can reset the instance." )
				return
			endif
			
			$ectype_id = GetEctypeID( -1 , 261 )
			if $ectype_id > 0
				$player_number = GetMapPlayerCount( $ectype_id )
				if $player_number != 0
					BC( "dialogbox", "player", -1, "Unable to reset the instance! Party members are still inside." )
					return
				endif
				
				$revalue = ReleaseEctype(-1 , 261)
				if $revalue == 0
					BC( "screen", "team", $team_headerID, "Diabolic Valley has been reset!" )
					BC( "dialogbox", "player", -1, "Diabolic Valley has been reset!" )
				else
					BC( "dialogbox", "player", -1, "Failed to reset instance." )
					return
				endif
			endif
		endif
	}
	
	function Fly(){

		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "Only the party leader can lead the party into the instance." )
			return
		endif
			
		$size = GetTeamAreaSize(-1)
		//????????
		if $size > 10
			BC( "dialogbox", "player", -1, "One or more of your party members are too far away." )
			return
		endif
					
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )
					
		if $teamplayer1_id != -1
			if $teamplayer1_id != $team_headerID
				$done = IsTaskDone( $teamplayer1_id, 193 )
				if $done != 0
					#name = GetPlayerInfo( $teamplayer1_id, "name", )
					BC( "dialogbox", "player", -1, #name , "You can't enter without having finished your present instance quests." )
					return
				endif
			endif
		endif
		
		if $teamplayer2_id != -1
			if $teamplayer2_id != $team_headerID
				$done = IsTaskDone( $teamplayer2_id, 193 )
				if $done != 0
					#name = GetPlayerInfo( $teamplayer2_id, "name", )
					BC( "dialogbox", "player", -1, #name , "You can't enter without having finished your present instance quests." )
					return
				endif
			endif
		endif
					
		if $teamplayer3_id != -1
			if $teamplayer3_id != $team_headerID
				$done = IsTaskDone( $teamplayer3_id, 193 )
				if $done != 0
					#name = GetPlayerInfo( $teamplayer3_id, "name", )
					BC( "dialogbox", "player", -1, #name , "You can't enter without having finished your present instance quests." )
					return
				endif
			endif
		endif
					
		if $teamplayer4_id != -1
			if $teamplayer4_id != $team_headerID
				$done = IsTaskDone( $teamplayer4_id, 193 )
				if $done != 0
					#name = GetPlayerInfo( $teamplayer4_id, "name", )
					BC( "dialogbox", "player", -1, #name , "You can't enter without having finished your present instance quests." )
					return
				endif
			endif
		endif
					
		if $teamplayer5_id != -1
			if $teamplayer5_id != $team_headerID
				$done = IsTaskDone( $teamplayer5_id, 193 )
				if $done != 0
					#name = GetPlayerInfo( $teamplayer5_id, "name", )
					BC( "dialogbox", "player", -1, #name , "You can't enter without having finished your present instance quests." )
					return
				endif
			endif
		endif
					
		if $teamplayer6_id != -1
			if $teamplayer6_id != $team_headerID
				$done = IsTaskDone( $teamplayer6_id, 193 )
				if $done != 0
					#name = GetPlayerInfo( $teamplayer6_id, "name", )
					BC( "dialogbox", "player", -1, #name , "You can't enter without having finished your present instance quests." )
					return
				endif
			endif
		endif
			
		$ectype_id = GetEctypeID( -1 , 261 )
		if $ectype_id > 0
			ReleaseEctype ( -1 , 261 )
		endif	
		
		$is_succeed = FlyToEctype( -1, 261, 41, 27 )
		if $is_succeed > 0
			$ectype_id = GetEctypeID( -1 , 261 )
			$done1 = IsTaskDone( -1, 193 )
			SetEctypeVar( $ectype_id, 1, $done1 )
			BC( "screen" , "player" , $team_headerID, "Welcome to Diabolic Valley (Daily)." )
		else
			BC( "dialogbox", "player", $team_headerID, "Error. Please, try again later or switch realms." )
			return
		endif
					
		if $teamplayer1_id != -1
			if $teamplayer1_id != $team_headerID
				$is_succeed = FlyToEctype( $teamplayer1_id, 261, 41, 27 )
				if $is_succeed > 0
					BC( "screen", "player", $teamplayer1_id, "Welcome to Diabolic Valley (Daily)." )
				else
					BC( "chat", "player", $teamplayer1_id, "Error! Error code: ", $is_succeed )
					return
				endif	
			endif	
		endif
					
		if $teamplayer2_id != -1
			if $teamplayer2_id != $team_headerID
				$is_succeed = FlyToEctype( $teamplayer2_id, 261, 41, 27 )
				if $is_succeed > 0
					BC( "screen", "player", $teamplayer2_id, "Welcome to Diabolic Valley (Daily)." )
				else
					BC( "chat", "player", $teamplayer2_id, "Error! Error code: ", $is_succeed )
					return
				endif	
			endif	
		endif
					
		if $teamplayer3_id != -1
			if $teamplayer3_id != $team_headerID
				$is_succeed = FlyToEctype( $teamplayer3_id, 261, 41, 27 )
				if $is_succeed > 0
					BC( "screen", "player", $teamplayer3_id, "Welcome to Diabolic Valley (Daily)." )
				else
					BC( "chat", "player", $teamplayer3_id, "Error! Error code: ", $is_succeed )
					return
				endif	
			endif	
		endif
					
		if $teamplayer4_id != -1
			if $teamplayer4_id != $team_headerID
				$is_succeed = FlyToEctype( $teamplayer4_id, 261, 41, 27 )
				if $is_succeed > 0
					BC( "screen", "player", $teamplayer4_id, "Welcome to Diabolic Valley (Daily)." )
				else
					BC( "chat", "player", $teamplayer4_id, "Error! Error code: ", $is_succeed )
					return
				endif	
			endif	
		endif
					
		if $teamplayer5_id != -1
			if $teamplayer5_id != $team_headerID
				$is_succeed = FlyToEctype( $teamplayer5_id, 261, 41, 27 )
				if $is_succeed > 0
					BC( "screen", "player", $teamplayer5_id, "Welcome to Diabolic Valley (Daily)." )
				else
					BC( "chat", "player", $teamplayer5_id, "Error! Error code: ", $is_succeed )
					return
				endif	
			endif	
		endif
					
		if $teamplayer6_id != -1
			if $teamplayer6_id != $team_headerID
				$is_succeed = FlyToEctype( $teamplayer6_id, 261, 41, 27 )
				if $is_succeed > 0
					BC( "screen", "player", $teamplayer6_id, "Welcome to Diabolic Valley (Daily)." )
				else
					BC( "chat", "player", $teamplayer6_id, "Error! Error code: ", $is_succeed )
					return
				endif	
			endif	
		endif
		
	}