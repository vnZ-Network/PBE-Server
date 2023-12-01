	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/18
	//		Author:??
	//		TaskName:Script\Ectype\nengyuanzhijin\Ectype-nengyuanzhijin-NPC-Enter-183.s
	//		TaskID:????????
	//
	//****************************************
	

	//????249
	//???????????????       3770
	//?????????????ID 3812
	//????????????? 3409
	
	//option0 ????(?)
	//option1 ????(??)
	//option2 ????(??) 
	//option3 ????
	//option4 ??????????
	
	
	function OnRequest(){
		
		//?????????????ID,??????ID???????
		$ectype_ID = GetEctypeID( -1 , 249 )
		if $ectype_ID > 0
		    DisableNpcOption(0)  
		    DisableNpcOption(1)
		    DisableNpcOption(2)
		else
		    DisableNpcOption(3)        			 					
		endif
			
		//??????           
		$Line = GetServerLineID()
		if $Line != 1            									        
			if $Line != 2                  
				DisableNpcOption(0)          
				DisableNpcOption(1)  
				DisableNpcOption(2)  
				DisableNpcOption(3)  
 			endif                  
    	endif
    
   //??????????1(???????),????0
    	$week = GetSystemTime( "week" )
    	$mday =	GetSystemTime( "mday" )
    	if $week == 0
    		DisableNpcOption(0)
    			if $mday < 15
    				DisableNpcOption(2)
    			endif	
    			if $mday >= 15
    				if $mday <= 21
    					DisableNpcOption(1)
    				endif
    			endif		
    			if $mday > 21
    				DisableNpcOption(2)
    			endif
    					   										
   	else
    		DisableNpcOption(1)
    		DisableNpcOption(2)
    	endif
    	
    	$yday = GetSystemTime( "yday" )	
	$TaskVar = GetPlayerVar( -1, 3914 )
	$Task1 = IsTaskAccept( -1, 3533 )
	$Task2 = IsTaskAccept( -1, 3534 )
	$Task3 = IsTaskAccept( -1, 3535 )
	
	if $TaskVar == $yday
		DisableNpcOption(4)
	endif
	
	$level = GetPlayerInfo( -1, "level" )
	if $level < 45
		DisableNpcOption(4)
	endif
    	
    	if $Task1 == 0
		DisableNpcOption(4)
    	endif
	if $Task2 == 0
		DisableNpcOption(4)
    	endif
	if $Task3 == 0
		DisableNpcOption(4)
	endif
    	  					   	  				                
}
	
	//??????????                           
  function OnOption0(){
  
	$team_headerID = GetTeamHeaderID(-1)
	$player_id = GetPlayerID()
	//????????????
	if $player_id != $team_headerID
		BC( "dialogbox", "player", -1, "Sorry, you must be the Party Leader and Level 45+ to activate Energy Well - Common Mode" )
		return
	endif
	
	$team_count = GetTeamMemberCount(-1)
	//??????,????????
	if $team_count < 3
		BC( "dialogbox", "player", -1, "Sorry, you must have more than 3 players to enter the Energy Well in common mode!" )
		return
	endif
	
	$size = GetTeamAreaSize(-1)
	//??????????
	if $size > 10
		BC( "dialogbox", "player", -1, "Your party member is too far away." )
		return
	endif
	
	//???????ID,??????ID?-1
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )
		
		$today_time = GetSystemTime( "yday" )
		
		//-----------------------------
		//????????????1????
		$foul_playernumber = 0
		//--------------------------------------------------------------------------------------------------1?
		if $teamplayer1_id != -1
			$player1_time =  GetPlayerVar( $teamplayer1_id, 3770 )
			//????????????????,???
			$lv = GetPlayerInfo( $teamplayer1_id , "level" )
			if $lv < 45
				//??????45???,????
				BC( "dialogbox", "player", -1, "Players under level 45 can not enter!" )
				return
			endif
			if $player1_time == $today_time
				//?????????????,??????????????
				$player1_number =  GetPlayerVar( $teamplayer1_id, 3409 )
				if $player1_number >= 1
					#name = GetPlayerInfo( $teamplayer1_id, "name", )
					BC( "chat", "player", -1, #name ,"You have already participated in the Energy Well event today." )
					$foul_playernumber = $foul_playernumber + 1
					return
				endif	
			endif
		endif
		
		if $teamplayer2_id != -1
			$player2_time =  GetPlayerVar( $teamplayer2_id, 3770 )
			//????????????????,???
			$lv = GetPlayerInfo( $teamplayer2_id , "level" )
			if $lv < 45
				//??????45???,????
				BC( "dialogbox", "player", -1, "Players under level 45 can not enter!" )
				return
			endif
			if $player2_time == $today_time
				//?????????????,??????????????
				$player2_number =  GetPlayerVar( $teamplayer2_id, 3409 )
				if $player2_number >= 1
					#name = GetPlayerInfo( $teamplayer2_id, "name", )
					BC( "chat", "player", -1, #name ,"You have already participated in the Energy Well event today." )
					$foul_playernumber = $foul_playernumber + 1
					return
				endif	
			endif
		endif
		
		if $teamplayer3_id != -1
			$player3_time =  GetPlayerVar( $teamplayer3_id, 3770 )
			//????????????????,???
			$lv = GetPlayerInfo( $teamplayer3_id , "level" )
			if $lv < 45
				//??????45???,????
				BC( "dialogbox", "player", -1, "Players under level 45 can not enter!" )
				return
			endif
			if $player3_time == $today_time
				//?????????????,??????????????
				$player3_number =  GetPlayerVar( $teamplayer3_id, 3409 )
				if $player3_number >= 1
					#name = GetPlayerInfo( $teamplayer3_id, "name", )
					BC( "chat", "player", -1, #name ,"You have already participated in the Energy Well event today." )
					$foul_playernumber = $foul_playernumber + 1
					return
				endif	
			endif
		endif
		
		if $teamplayer4_id != -1
			$player4_time =  GetPlayerVar( $teamplayer4_id, 3770 )
			//????????????????,???
			$lv = GetPlayerInfo( $teamplayer4_id , "level" )
			if $lv < 45
				//??????45???,????
				BC( "dialogbox", "player", -1, "Players under level 45 can not enter!" )
				return
			endif
			if $player4_time == $today_time
				//?????????????,??????????????
				$player4_number =  GetPlayerVar( $teamplayer4_id, 3409 )
				if $player4_number >= 1
					#name = GetPlayerInfo( $teamplayer4_id, "name", )
					BC( "chat", "player", -1, #name ,"You have already participated in the Energy Well event today." )
					$foul_playernumber = $foul_playernumber + 1
					return
				endif	
			endif
		endif
		
		if $teamplayer5_id != -1
			$player5_time =  GetPlayerVar( $teamplayer5_id, 3770 )
			//????????????????,???
			$lv = GetPlayerInfo( $teamplayer5_id , "level" )
			if $lv < 45
				//??????45???,????
				BC( "dialogbox", "player", -1, "Players under level 45 can not enter!" )
				return
			endif
			if $player5_time == $today_time
				//?????????????,??????????????
				$player5_number =  GetPlayerVar( $teamplayer5_id, 3409 )
				if $player5_number >= 1
					#name = GetPlayerInfo( $teamplayer5_id, "name", )
					BC( "chat", "player", -1, #name ,"You have already participated in the Energy Well event today." )
					$foul_playernumber = $foul_playernumber + 1
					return
				endif	
			endif
		endif
		
		if $teamplayer6_id != -1
			$player6_time =  GetPlayerVar( $teamplayer6_id, 3770 )
			//????????????????,???
			$lv = GetPlayerInfo( $teamplayer6_id , "level" )
			if $lv < 45
				//??????45???,????
				BC( "dialogbox", "player", -1, "Players under level 45 can not enter!" )
				return
			endif
			if $player6_time == $today_time
				//?????????????,??????????????
				$player6_number =  GetPlayerVar( $teamplayer6_id, 3409 )
				if $player6_number >= 1
					#name = GetPlayerInfo( $teamplayer6_id, "name", )
					BC( "chat", "player", -1, #name ,"You have already participated in the Energy Well event today." )
					$foul_playernumber = $foul_playernumber + 1
					return
				endif	
			endif
		endif
		if $foul_playernumber > 0
			BC( "dialogbox", "player", -1,"Your party members have finished Energy Well today." )
			return
		endif
		//------------------------------------------------------------------------------------------??????
		$a = 0
		if $teamplayer1_id != -1
			$lv = GetPlayerInfo( $teamplayer1_id , "level" )
			$a = $lv
		endif
		if $teamplayer2_id != -1
			$lv = GetPlayerInfo( $teamplayer2_id , "level" )
			$a = $a + $lv
		endif
		if $teamplayer3_id != -1
			$lv = GetPlayerInfo( $teamplayer3_id , "level" )
			$a = $a + $lv
		endif	
		if $teamplayer4_id != -1
			$lv = GetPlayerInfo( $teamplayer4_id , "level" )
			$a = $a + $lv
		endif		
		if $teamplayer5_id != -1
			$lv = GetPlayerInfo( $teamplayer5_id , "level" )
			$a = $a + $lv
		endif
		if $teamplayer6_id != -1
			$lv = GetPlayerInfo( $teamplayer6_id , "level" )
			$a = $a + $lv
		endif
		$team_level = $a / $team_count
													
		//????.?????
	
		$is_succeed = FlyToEctype($team_headerID ,249 ,60 ,48)
		
		//????	
		if $is_succeed > 0
				SetPlayerActLog($team_headerID,20,1)
				SetPlayerVar( $team_headerID , 3812 , $is_succeed )	
				$player_time =  GetPlayerVar( $team_headerID, 3770 )
				
			if $player_time != $today_time
					//????????????????????1
					SetPlayerVar( $team_headerID , 3770 ,$today_time )
					SetPlayerVar( $team_headerID , 3409 ,1 )
					//????ID
					$ectype_ID = GetEctypeID($team_headerID ,249)
					SetEctypeVar( $ectype_ID , 110, 0 )
					SetEctypeVar( $ectype_ID, 111, $team_level )
					StartEctypeTimer( $team_headerID , 249, 0 )
					BC( "screen", "player", $team_headerID, "You enter a new common Energy Well." )
					//????-START
					$TJ_join_number = GetGlobalVar(953)
					$TJ_join_number = $TJ_join_number + $team_count
					SetGlobalVar(953 , $TJ_join_number)
					//????-END
			else
					//?????????
					BC( "screen", "player", $team_headerID, "You have finished Energy Well already today." )	
					return
			endif
		else
				BC( "dialogbox", "player", -1, "Instance is currently full. Please try again later or switch realms." )
				return
		endif						
//--------------------------------------------------------------------------------------	1
		if $teamplayer1_id != -1
			if $teamplayer1_id != $team_headerID
				
				$is_succeed = FlyToEctype($teamplayer1_id ,249 ,60 ,48)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer1_id,20,1)
					SetPlayerVar( $teamplayer1_id , 3812 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer1_id, 3770 )
					
					if $player_time != $today_time
						SetPlayerVar( $teamplayer1_id, 3770 ,$today_time )
						SetPlayerVar( $teamplayer1_id , 3409 ,1 )
					
						BC( "screen", "player", $teamplayer1_id, "You enter a new common Energy Well." )
					else
						BC( "screen", "player", $teamplayer1_id, "You have finished Energy Well already today." )
						return
					endif
				else
						BC( "dialogbox", "player", $teamplayer1_id, "Error, error code:" , $is_succeed )
						return
				endif	
			endif	
		endif				

//--------------------------------------------------------------------------------------	2
		if $teamplayer2_id != -1
			if $teamplayer2_id != $team_headerID
				
				$is_succeed = FlyToEctype($teamplayer2_id ,249 ,60 ,48)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer2_id,20,1)
					SetPlayerVar( $teamplayer2_id , 3812 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer2_id, 3770 )
					
					if $player_time != $today_time
						SetPlayerVar( $teamplayer2_id, 3770 ,$today_time )
						SetPlayerVar( $teamplayer2_id , 3409 ,1 )
					
						BC( "screen", "player", $teamplayer2_id, "You enter a new common Energy Well." )
					else
						BC( "screen", "player", $teamplayer2_id, "You have finished Energy Well already today." )
						return
					endif
				else
						BC( "dialogbox", "player", $teamplayer2_id, "Error, error code:" , $is_succeed )
						return
				endif	
			endif	
		endif
//--------------------------------------------------------------------------------------	3
		
		if $teamplayer3_id != -1
			if $teamplayer3_id != $team_headerID
				
				$is_succeed = FlyToEctype($teamplayer3_id ,249 ,60 ,48)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer3_id,20,1)
					SetPlayerVar( $teamplayer3_id , 3812 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer3_id, 3770 )
					
					if $player_time != $today_time
						SetPlayerVar( $teamplayer3_id, 3770 ,$today_time )
						SetPlayerVar( $teamplayer3_id , 3409 ,1 )
					
						BC( "screen", "player", $teamplayer3_id, "You enter a new common Energy Well." )
					else
						BC( "screen", "player", $teamplayer3_id, "You have finished Energy Well already today." )
						return
					endif
				else
						BC( "dialogbox", "player", $teamplayer3_id, "Error, error code:" , $is_succeed )
						return
				endif	
			endif	
		endif	

//--------------------------------------------------------------------------------------	4
		
		if $teamplayer4_id != -1
			if $teamplayer4_id != $team_headerID
				
				$is_succeed = FlyToEctype($teamplayer4_id ,249 ,60 ,48)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer4_id,20,1)
					SetPlayerVar( $teamplayer4_id , 3812 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer4_id, 3770 )
					
					if $player_time != $today_time
						SetPlayerVar( $teamplayer4_id, 3770 ,$today_time )
						SetPlayerVar( $teamplayer4_id , 3409 ,1 )
					
						BC( "screen", "player", $teamplayer4_id, "You enter a new common Energy Well." )
					else
						BC( "screen", "player", $teamplayer4_id, "You have finished Energy Well already today." )
						return
					endif
				else
						BC( "dialogbox", "player", $teamplayer4_id, "Error, error code:" , $is_succeed )
						return
				endif	
			endif	
		endif	
		
//--------------------------------------------------------------------------------------	5
		
		if $teamplayer5_id != -1
			if $teamplayer5_id != $team_headerID
				
				$is_succeed = FlyToEctype($teamplayer5_id ,249 ,60 ,48)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer5_id,20,1)
					SetPlayerVar( $teamplayer5_id , 3812 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer5_id, 3770 )
					
					if $player_time != $today_time
						SetPlayerVar( $teamplayer5_id, 3770 ,$today_time )
						SetPlayerVar( $teamplayer5_id , 3409 ,1 )
					
						BC( "screen", "player", $teamplayer5_id, "You enter a new common Energy Well." )
					else
						BC( "screen", "player", $teamplayer5_id, "You have finished Energy Well already today." )
						return
					endif
				else
						BC( "dialogbox", "player", $teamplayer5_id, "Error, error code:" , $is_succeed )
						return
				endif	
			endif	
		endif	
		
//--------------------------------------------------------------------------------------	6
		
		if $teamplayer6_id != -1
			if $teamplayer6_id != $team_headerID
				
				$is_succeed = FlyToEctype($teamplayer6_id ,249 ,60 ,48)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer6_id,20,1)
					SetPlayerVar( $teamplayer6_id , 3812 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer6_id, 3770 )
					
					if $player_time != $today_time
						SetPlayerVar( $teamplayer6_id, 3770 ,$today_time )
						SetPlayerVar( $teamplayer6_id , 3409 ,1 )
					
						BC( "screen", "player", $teamplayer6_id, "You enter a new common Energy Well." )
					else
						BC( "screen", "player", $teamplayer6_id, "You have finished Energy Well already today." )
						return
					endif
				else
						BC( "dialogbox", "player", $teamplayer6_id, "Error, error code:" , $is_succeed )
						return
				endif	
			endif	
		endif	
}

	//??????????	
 function OnOption1(){
	$team_headerID = GetTeamHeaderID(-1)
	$player_id = GetPlayerID()
	//????????????
	if $player_id != $team_headerID
		BC( "dialogbox", "player", -1, "Sorry, you must be the Party Leader and Level 45+ to activate Energy Well - Elite Mode, only available on Sundays." )
		return
	endif
	
	$team_count = GetTeamMemberCount(-1)
	//??????,????????
	if $team_count < 3
		BC( "dialogbox", "player", -1, "Sorry, you must have more than 3 players to enter the Energy Well in elite mode!" )
		return
	endif
	
	$size = GetTeamAreaSize(-1)
	//??????????
	if $size > 10
		BC( "dialogbox", "player", -1, "Your party member is too far away." )
		return
	endif
	
	//???????ID,??????ID?-1
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )
		
		$today_time = GetSystemTime( "yday" )
		
		//-----------------------------
		//????????????1????
		$foul_playernumber = 0
		//--------------------------------------------------------------------------------------------------1?
		if $teamplayer1_id != -1
			$player1_time =  GetPlayerVar( $teamplayer1_id, 3770 )
			//????????????????,???
			$lv = GetPlayerInfo( $teamplayer1_id , "level" )
			if $lv < 45
				//??????45???,????
				BC( "dialogbox", "player", -1, "Players under level 45 can not enter!" )
				return
			endif

			if $player1_time == $today_time
				//?????????????,??????????????
				$player1_number =  GetPlayerVar( $teamplayer1_id, 3409 )
				if $player1_number >= 1
					#name = GetPlayerInfo( $teamplayer1_id, "name", )
					BC( "chat", "player", -1, #name ,"You have already participated in the Energy Well event today." )
					$foul_playernumber = $foul_playernumber + 1
					return
				endif	
			endif
		endif
		
		if $teamplayer2_id != -1
			$player2_time =  GetPlayerVar( $teamplayer2_id, 3770 )
			//????????????????,???
			$lv = GetPlayerInfo( $teamplayer2_id , "level" )
			if $lv < 45
				//??????45???,????
				BC( "dialogbox", "player", -1, "Players under level 45 can not enter!" )
				return
			endif
			if $player2_time == $today_time
				//?????????????,??????????????
				$player2_number =  GetPlayerVar( $teamplayer2_id, 3409 )
				if $player2_number >= 1
					#name = GetPlayerInfo( $teamplayer2_id, "name", )
					BC( "chat", "player", -1, #name ,"You have already participated in the Energy Well event today." )
					$foul_playernumber = $foul_playernumber + 1
					return
				endif	
			endif
		endif
		
		if $teamplayer3_id != -1
			$player3_time =  GetPlayerVar( $teamplayer3_id, 3770 )
			//????????????????,???
			$lv = GetPlayerInfo( $teamplayer3_id , "level" )
			if $lv < 45
				//??????60???,????
				BC( "dialogbox", "player", -1, "Players under level 45 can not enter!" )
				return
			endif
			if $player3_time == $today_time
				//?????????????,??????????????
				$player3_number =  GetPlayerVar( $teamplayer3_id, 3409 )
				if $player3_number >= 1
					#name = GetPlayerInfo( $teamplayer3_id, "name", )
					BC( "chat", "player", -1, #name ,"You have already participated in the Energy Well event today." )
					$foul_playernumber = $foul_playernumber + 1
					return
				endif	
			endif
		endif
		
		if $teamplayer4_id != -1
			$player4_time =  GetPlayerVar( $teamplayer4_id, 3770 )
			//????????????????,???
			$lv = GetPlayerInfo( $teamplayer4_id , "level" )
			if $lv < 45
				//??????60???,????
				BC( "dialogbox", "player", -1, "Players under level 45 can not enter!" )
				return
			endif
			if $player4_time == $today_time
				//?????????????,??????????????
				$player4_number =  GetPlayerVar( $teamplayer4_id, 3409 )
				if $player4_number >= 1
					#name = GetPlayerInfo( $teamplayer4_id, "name", )
					BC( "chat", "player", -1, #name ,"You have already participated in the Energy Well event today." )
					$foul_playernumber = $foul_playernumber + 1
					return
				endif	
			endif
		endif
		
		if $teamplayer5_id != -1
			$player5_time =  GetPlayerVar( $teamplayer5_id, 3770 )
			//????????????????,???
			$lv = GetPlayerInfo( $teamplayer5_id , "level" )
			if $lv < 45
				//??????60???,????
				BC( "dialogbox", "player", -1, "Players under level 45 can not enter!" )
				return
			endif
			if $player5_time == $today_time
				//?????????????,??????????????
				$player5_number =  GetPlayerVar( $teamplayer5_id, 3409 )
				if $player5_number >= 1
					#name = GetPlayerInfo( $teamplayer5_id, "name", )
					BC( "chat", "player", -1, #name ,"You have already participated in the Energy Well event today." )
					$foul_playernumber = $foul_playernumber + 1
					return
				endif	
			endif
		endif
		
		if $teamplayer6_id != -1
			$player6_time =  GetPlayerVar( $teamplayer6_id, 3770 )
			//????????????????,???
			$lv = GetPlayerInfo( $teamplayer6_id , "level" )
			if $lv < 45
				//??????60???,????
				BC( "dialogbox", "player", -1, "Players under level 45 can not enter!" )
				return
			endif
			if $player6_time == $today_time
				//?????????????,??????????????
				$player6_number =  GetPlayerVar( $teamplayer6_id, 3409 )
				if $player6_number >= 1
					#name = GetPlayerInfo( $teamplayer6_id, "name", )
					BC( "chat", "player", -1, #name ,"You have already participated in the Energy Well event today." )
					$foul_playernumber = $foul_playernumber + 1
					return
				endif	
			endif
		endif
		if $foul_playernumber > 0
			BC( "dialogbox", "player", -1,"Your party members have finished Energy Well today." )
			return
		endif
		
		$a = 0
		if $teamplayer1_id != -1
			$lv = GetPlayerInfo( $teamplayer1_id , "level" )
			$a = $lv
		endif
		if $teamplayer2_id != -1
			$lv = GetPlayerInfo( $teamplayer2_id , "level" )
			$a = $a + $lv
		endif
		if $teamplayer3_id != -1
			$lv = GetPlayerInfo( $teamplayer3_id , "level" )
			$a = $a + $lv
		endif	
		if $teamplayer4_id != -1
			$lv = GetPlayerInfo( $teamplayer4_id , "level" )
			$a = $a + $lv
		endif		
		if $teamplayer5_id != -1
			$lv = GetPlayerInfo( $teamplayer5_id , "level" )
			$a = $a + $lv
		endif
		if $teamplayer6_id != -1
			$lv = GetPlayerInfo( $teamplayer6_id , "level" )
			$a = $a + $lv
		endif
		$team_level = $a / $team_count
		
		//????.?????
	
		$is_succeed = FlyToEctype($team_headerID ,249 ,60 ,48)
		
		//????	
		if $is_succeed > 0
				SetPlayerActLog($team_headerID,20,2)
				SetPlayerVar( $team_headerID , 3812 , $is_succeed )	
				$player_time =  GetPlayerVar( $team_headerID, 3770 )
				
			if $player_time != $today_time
					//????????????????????1
					SetPlayerVar( $team_headerID , 3770 ,$today_time )
					SetPlayerVar( $team_headerID , 3409 ,1 )
					//????ID
					$ectype_ID = GetEctypeID($team_headerID ,249)
					StartEctypeTimer( $team_headerID , 249, 0 )
					SetEctypeVar( $ectype_ID, 111, $team_level )
					BC( "screen", "player", $team_headerID, "You enter a new elite Energy Well!" )
					//????-START
					$TJ_join_number = GetGlobalVar(954)
					$TJ_join_number = $TJ_join_number + $team_count
					SetGlobalVar(954 , $TJ_join_number)
					//????-END
					//??????
					SetEctypeVar($ectype_ID , 110, 1)
			else
					//?????????
					BC( "screen", "player", $team_headerID, "You have finished Energy Well already today." )	
					return
			endif
		else
				BC( "dialogbox", "player", -1, "Instance is currently full. Please try again later or switch realms." )
				return
		endif	

//--------------------------------------------------------------------------------------	1
		if $teamplayer1_id != -1
			if $teamplayer1_id != $team_headerID
				
				$is_succeed = FlyToEctype($teamplayer1_id ,249 ,60 ,48)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer1_id,20,2)
					SetPlayerVar( $teamplayer1_id , 3812 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer1_id, 3770 )
					
					if $player_time != $today_time
						SetPlayerVar( $teamplayer1_id, 3770 ,$today_time )
						SetPlayerVar( $teamplayer1_id , 3409 ,1 )
					
						BC( "screen", "player", $teamplayer1_id, "You enter a new elite Energy Well!" )
					else
						BC( "screen", "player", $teamplayer1_id, "You have finished Energy Well already today." )
						return
					endif
				else
						BC( "dialogbox", "player", $teamplayer1_id, "Error, error code:" , $is_succeed )
						return
				endif	
			endif	
		endif				

//--------------------------------------------------------------------------------------	2
		if $teamplayer2_id != -1
			if $teamplayer2_id != $team_headerID
				
				$is_succeed = FlyToEctype($teamplayer2_id ,249 ,60 ,48)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer2_id,20,2)
					SetPlayerVar( $teamplayer2_id , 3812 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer2_id, 3770 )
					
					if $player_time != $today_time
						SetPlayerVar( $teamplayer2_id, 3770 ,$today_time )
						SetPlayerVar( $teamplayer2_id , 3409 ,1 )
					
						BC( "screen", "player", $teamplayer2_id, "You enter a new elite Energy Well!" )
					else
						BC( "screen", "player", $teamplayer2_id, "You have finished Energy Well already today." )
						return
					endif
				else
						BC( "dialogbox", "player", $teamplayer2_id, "Error, error code:" , $is_succeed )
						return
				endif	
			endif	
		endif
//--------------------------------------------------------------------------------------	3
		
		if $teamplayer3_id != -1
			if $teamplayer3_id != $team_headerID
				
				$is_succeed = FlyToEctype($teamplayer3_id ,249 ,60 ,48)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer3_id,20,2)
					SetPlayerVar( $teamplayer3_id , 3812 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer3_id, 3770 )
					
					if $player_time != $today_time
						SetPlayerVar( $teamplayer3_id, 3770 ,$today_time )
						SetPlayerVar( $teamplayer3_id , 3409 ,1 )
					
						BC( "screen", "player", $teamplayer3_id, "You enter a new elite Energy Well!" )
					else
						BC( "screen", "player", $teamplayer3_id, "You have finished Energy Well already today." )
						return
					endif
				else
						BC( "dialogbox", "player", $teamplayer3_id, "Error, error code:" , $is_succeed )
						return
				endif	
			endif	
		endif	

//--------------------------------------------------------------------------------------	4
		
		if $teamplayer4_id != -1
			if $teamplayer4_id != $team_headerID
				
				$is_succeed = FlyToEctype($teamplayer4_id ,249 ,60 ,48)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer4_id,20,2)
					SetPlayerVar( $teamplayer4_id , 3812 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer4_id, 3770 )
					
					if $player_time != $today_time
						SetPlayerVar( $teamplayer4_id, 3770 ,$today_time )
						SetPlayerVar( $teamplayer4_id , 3409 ,1 )
					
						BC( "screen", "player", $teamplayer4_id, "You enter a new elite Energy Well!" )
					else
						BC( "screen", "player", $teamplayer4_id, "You have finished Energy Well already today." )
						return
					endif
				else
						BC( "dialogbox", "player", $teamplayer4_id, "Error, error code:" , $is_succeed )
						return
				endif	
			endif	
		endif	
		
//--------------------------------------------------------------------------------------	5
		
		if $teamplayer5_id != -1
			if $teamplayer5_id != $team_headerID
				
				$is_succeed = FlyToEctype($teamplayer5_id ,249 ,60 ,48)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer5_id,20,2)
					SetPlayerVar( $teamplayer5_id , 3812 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer5_id, 3770 )
					
					if $player_time != $today_time
						SetPlayerVar( $teamplayer5_id, 3770 ,$today_time )
						SetPlayerVar( $teamplayer5_id , 3409 ,1 )
					
						BC( "screen", "player", $teamplayer5_id, "You enter a new elite Energy Well!" )
					else
						BC( "screen", "player", $teamplayer5_id, "You have finished Energy Well already today." )
						return
					endif
				else
						BC( "dialogbox", "player", $teamplayer5_id, "Error, error code:" , $is_succeed )
						return
				endif	
			endif	
		endif	
		
//--------------------------------------------------------------------------------------	6
		
		if $teamplayer6_id != -1
			if $teamplayer6_id != $team_headerID
				
				$is_succeed = FlyToEctype($teamplayer6_id ,249 ,60 ,48)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer6_id,20,2)
					SetPlayerVar( $teamplayer6_id , 3812 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer6_id, 3770 )
					
					if $player_time != $today_time
						SetPlayerVar( $teamplayer6_id, 3770 ,$today_time )
						SetPlayerVar( $teamplayer6_id , 3409 ,1 )
					
						BC( "screen", "player", $teamplayer6_id, "You enter a new elite Energy Well!" )
					else
						BC( "screen", "player", $teamplayer6_id, "You have finished Energy Well already today." )
						return
					endif
				else
						BC( "dialogbox", "player", $teamplayer6_id, "Error, error code:" , $is_succeed )
						return
				endif	
			endif	
		endif	
}

	//??????????
 function OnOption2(){
  
	$team_headerID = GetTeamHeaderID(-1)
	$player_id = GetPlayerID()
	//????????????
	if $player_id != $team_headerID
		BC( "dialogbox", "player", -1, "Sorry, you must be the Party Leader and Level 45+ to activate Energy Well - Challenge Mode, only available on the 3rd Sunday of every month." )
		return
	endif
	
	$team_count = GetTeamMemberCount(-1)
	//??????,????????
	if $team_count < 3
		BC( "dialogbox", "player", -1, "Sorry, you must have more than 3 players to enter the Energy Well in challenge mode!" )
		return
	endif
	
	$size = GetTeamAreaSize(-1)
	//??????????
	if $size > 10
		BC( "dialogbox", "player", -1, "Your party member is too far away." )
		return
	endif
	
	//???????ID,??????ID?-1
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )
		
		$today_time = GetSystemTime( "yday" )
		
		//-----------------------------
		//????????????1????
		$foul_playernumber = 0
		//--------------------------------------------------------------------------------------------------1?
		if $teamplayer1_id != -1
			$player1_time =  GetPlayerVar( $teamplayer1_id, 3770 )
			//????????????????,???
			$lv = GetPlayerInfo( $teamplayer1_id , "level" )
			if $lv < 45
				//??????45???,????
				BC( "dialogbox", "player", -1, "Players under level 45 can not enter!" )
				return
			endif
			if $player1_time == $today_time
				//?????????????,??????????????
				$player1_number =  GetPlayerVar( $teamplayer1_id, 3409 )
				if $player1_number >= 1
					#name = GetPlayerInfo( $teamplayer1_id, "name", )
					BC( "chat", "player", -1, #name ,"You have already participated in the Energy Well event today." )
					$foul_playernumber = $foul_playernumber + 1
					return
				endif	
			endif
		endif
		
		if $teamplayer2_id != -1
			$player2_time =  GetPlayerVar( $teamplayer2_id, 3770 )
			//????????????????,???
			$lv = GetPlayerInfo( $teamplayer2_id , "level" )
			if $lv < 45
				//??????45???,????
				BC( "dialogbox", "player", -1, "Players under level 45 can not enter!" )
				return
			endif
			if $player2_time == $today_time
				//?????????????,??????????????
				$player2_number =  GetPlayerVar( $teamplayer2_id, 3409 )
				if $player2_number >= 1
					#name = GetPlayerInfo( $teamplayer2_id, "name", )
					BC( "chat", "player", -1, #name ,"You have already participated in the Energy Well event today." )
					$foul_playernumber = $foul_playernumber + 1
					return
				endif	
			endif
		endif
		
		if $teamplayer3_id != -1
			$player3_time =  GetPlayerVar( $teamplayer3_id, 3770 )
			//????????????????,???
			$lv = GetPlayerInfo( $teamplayer3_id , "level" )
			if $lv < 45
				//??????45???,????
				BC( "dialogbox", "player", -1, "Players under level 45 can not enter!" )
				return
			endif
			if $player3_time == $today_time
				//?????????????,??????????????
				$player3_number =  GetPlayerVar( $teamplayer3_id, 3409 )
				if $player3_number >= 1
					#name = GetPlayerInfo( $teamplayer3_id, "name", )
					BC( "chat", "player", -1, #name ,"You have already participated in the Energy Well event today." )
					$foul_playernumber = $foul_playernumber + 1
					return
				endif	
			endif
		endif
		
		if $teamplayer4_id != -1
			$player4_time =  GetPlayerVar( $teamplayer4_id, 3770 )
			//????????????????,???
			$lv = GetPlayerInfo( $teamplayer4_id , "level" )
			if $lv < 45
				//??????45???,????
				BC( "dialogbox", "player", -1, "Players under level 45 can not enter!" )
				return
			endif
			if $player4_time == $today_time
				//?????????????,??????????????
				$player4_number =  GetPlayerVar( $teamplayer4_id, 3409 )
				if $player4_number >= 1
					#name = GetPlayerInfo( $teamplayer4_id, "name", )
					BC( "chat", "player", -1, #name ,"You have already participated in the Energy Well event today." )
					$foul_playernumber = $foul_playernumber + 1
					return
				endif	
			endif
		endif
		
		if $teamplayer5_id != -1
			$player5_time =  GetPlayerVar( $teamplayer5_id, 3770 )
			//????????????????,???
			$lv = GetPlayerInfo( $teamplayer5_id , "level" )
			if $lv < 45
				//??????45???,????
				BC( "dialogbox", "player", -1, "Players under level 45 can not enter!" )
				return
			endif
			if $player5_time == $today_time
				//?????????????,??????????????
				$player5_number =  GetPlayerVar( $teamplayer5_id, 3409 )
				if $player5_number >= 1
					#name = GetPlayerInfo( $teamplayer5_id, "name", )
					BC( "chat", "player", -1, #name ,"You have already participated in the Energy Well event today." )
					$foul_playernumber = $foul_playernumber + 1
					return
				endif	
			endif
		endif
		
		if $teamplayer6_id != -1
			$player6_time =  GetPlayerVar( $teamplayer6_id, 3770 )
			//????????????????,???
			$lv = GetPlayerInfo( $teamplayer6_id , "level" )
			if $lv < 45
				//??????45???,????
				BC( "dialogbox", "player", -1, "Players under level 45 can not enter!" )
				return
			endif
			if $player6_time == $today_time
				//?????????????,??????????????
				$player6_number =  GetPlayerVar( $teamplayer6_id, 3409 )
				if $player6_number >= 1
					#name = GetPlayerInfo( $teamplayer6_id, "name", )
					BC( "chat", "player", -1, #name ,"You have already participated in the Energy Well event today." )
					$foul_playernumber = $foul_playernumber + 1
					return
				endif	
			endif
		endif
		if $foul_playernumber > 0
			BC( "dialogbox", "player", -1,"Your party members have finished Energy Well today." )
			return
		endif
		
		$a = 0
		if $teamplayer1_id != -1
			$lv = GetPlayerInfo( $teamplayer1_id , "level" )
			$a = $lv
		endif
		if $teamplayer2_id != -1
			$lv = GetPlayerInfo( $teamplayer2_id , "level" )
			$a = $a + $lv
		endif
		if $teamplayer3_id != -1
			$lv = GetPlayerInfo( $teamplayer3_id , "level" )
			$a = $a + $lv
		endif	
		if $teamplayer4_id != -1
			$lv = GetPlayerInfo( $teamplayer4_id , "level" )
			$a = $a + $lv
		endif		
		if $teamplayer5_id != -1
			$lv = GetPlayerInfo( $teamplayer5_id , "level" )
			$a = $a + $lv
		endif
		if $teamplayer6_id != -1
			$lv = GetPlayerInfo( $teamplayer6_id , "level" )
			$a = $a + $lv
		endif
		$team_level = $a / $team_count	

		//------------------------------------------------------------------------------------------
		//????.?????
	
		$is_succeed = FlyToEctype($team_headerID ,249 ,60 ,48)
		
		//????	
		if $is_succeed > 0
				SetPlayerActLog($team_headerID,20,3)
				SetPlayerVar( $team_headerID , 3812 , $is_succeed )	
				$player_time =  GetPlayerVar( $team_headerID, 3770 )
				
			if $player_time != $today_time
					//????????????????????1
					SetPlayerVar( $team_headerID , 3770 ,$today_time )
					SetPlayerVar( $team_headerID , 3409 ,1 )
					//????ID
					$ectype_ID = GetEctypeID($team_headerID ,249)
					StartEctypeTimer( $team_headerID , 249, 0 )
					SetEctypeVar( $ectype_ID, 111, $team_level )
					BC( "screen", "player", $team_headerID, "You enter a new challenge Energy Well." )
					//????-START
					$TJ_join_number = GetGlobalVar(955)
					$TJ_join_number = $TJ_join_number + $team_count
					SetGlobalVar(955 , $TJ_join_number)
					//????-END
					//??????
					SetEctypeVar($ectype_ID , 110, 2)
			else
					//?????????
					BC( "screen", "player", $team_headerID, "You have finished Energy Well already today." )	
					return
			endif
		else
				BC( "dialogbox", "player", -1, "Instance is currently full. Please try again later or switch realms." )
				return
		endif	
		
		if $teamplayer1_id != -1
			if $teamplayer1_id != $team_headerID
				
				$is_succeed = FlyToEctype($teamplayer1_id ,249 ,60 ,48)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer1_id,20,3)
					SetPlayerVar( $teamplayer1_id , 3812 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer1_id, 3770 )
					
					if $player_time != $today_time
						SetPlayerVar( $teamplayer1_id, 3770 ,$today_time )
						SetPlayerVar( $teamplayer1_id , 3409 ,1 )
					
						BC( "screen", "player", $teamplayer1_id, "You enter a new challenge Energy Well." )
					else
						BC( "screen", "player", $teamplayer1_id, "You have finished Energy Well already today." )
						return
					endif
				else
						BC( "dialogbox", "player", $teamplayer1_id, "Error, error code:" , $is_succeed )
						return
				endif	
			endif	
		endif				

//--------------------------------------------------------------------------------------	2
		if $teamplayer2_id != -1
			if $teamplayer2_id != $team_headerID
				
				$is_succeed = FlyToEctype($teamplayer2_id ,249 ,60 ,48)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer2_id,20,3)
					SetPlayerVar( $teamplayer2_id , 3812 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer2_id, 3770 )
					
					if $player_time != $today_time
						SetPlayerVar( $teamplayer2_id, 3770 ,$today_time )
						SetPlayerVar( $teamplayer2_id , 3409 ,1 )
					
						BC( "screen", "player", $teamplayer2_id, "You enter a new challenge Energy Well." )
					else
						BC( "screen", "player", $teamplayer2_id, "You have finished Energy Well already today." )
						return
					endif
				else
						BC( "dialogbox", "player", $teamplayer2_id, "Error, error code:" , $is_succeed )
						return
				endif	
			endif	
		endif
//--------------------------------------------------------------------------------------	3
		
		if $teamplayer3_id != -1
			if $teamplayer3_id != $team_headerID
				
				$is_succeed = FlyToEctype($teamplayer3_id ,249 ,60 ,48)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer3_id,20,3)
					SetPlayerVar( $teamplayer3_id , 3812 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer3_id, 3770 )
					
					if $player_time != $today_time
						SetPlayerVar( $teamplayer3_id, 3770 ,$today_time )
						SetPlayerVar( $teamplayer3_id , 3409 ,1 )
					
						BC( "screen", "player", $teamplayer3_id, "You enter a new challenge Energy Well." )
					else
						BC( "screen", "player", $teamplayer3_id, "You have finished Energy Well already today." )
						return
					endif
				else
						BC( "dialogbox", "player", $teamplayer3_id, "Error, error code:" , $is_succeed )
						return
				endif	
			endif	
		endif	

//--------------------------------------------------------------------------------------	4
		
		if $teamplayer4_id != -1
			if $teamplayer4_id != $team_headerID
				
				$is_succeed = FlyToEctype($teamplayer4_id ,249 ,60 ,48)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer4_id,20,3)
					SetPlayerVar( $teamplayer4_id , 3812 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer4_id, 3770 )
					
					if $player_time != $today_time
						SetPlayerVar( $teamplayer4_id, 3770 ,$today_time )
						SetPlayerVar( $teamplayer4_id , 3409 ,1 )
					
						BC( "screen", "player", $teamplayer4_id, "You enter a new challenge Energy Well." )
					else
						BC( "screen", "player", $teamplayer4_id, "You have finished Energy Well already today." )
						return
					endif
				else
						BC( "dialogbox", "player", $teamplayer4_id, "Error, error code:" , $is_succeed )
						return
				endif	
			endif	
		endif	
		
//--------------------------------------------------------------------------------------	5
		
		if $teamplayer5_id != -1
			if $teamplayer5_id != $team_headerID
				
				$is_succeed = FlyToEctype($teamplayer5_id ,249 ,60 ,48)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer5_id,20,3)
					SetPlayerVar( $teamplayer5_id , 3812 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer5_id, 3770 )
					
					if $player_time != $today_time
						SetPlayerVar( $teamplayer5_id, 3770 ,$today_time )
						SetPlayerVar( $teamplayer5_id , 3409 ,1 )
					
						BC( "screen", "player", $teamplayer5_id, "You enter a new challenge Energy Well." )
					else
						BC( "screen", "player", $teamplayer5_id, "You have finished Energy Well already today." )
						return
					endif
				else
						BC( "dialogbox", "player", $teamplayer5_id, "Error, error code:" , $is_succeed )
						return
				endif	
			endif	
		endif	
		
//--------------------------------------------------------------------------------------	6
		
		if $teamplayer6_id != -1
			if $teamplayer6_id != $team_headerID
				
				$is_succeed = FlyToEctype($teamplayer6_id ,249 ,60 ,48)
				if $is_succeed > 0
					SetPlayerActLog($teamplayer6_id,20,3)
					SetPlayerVar( $teamplayer6_id , 3812 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer6_id, 3770 )
					
					if $player_time != $today_time
						SetPlayerVar( $teamplayer6_id, 3770 ,$today_time )
						SetPlayerVar( $teamplayer6_id , 3409 ,1 )
					
						BC( "screen", "player", $teamplayer6_id, "You enter a new challenge Energy Well." )
					else
						BC( "screen", "player", $teamplayer6_id, "You have finished Energy Well already today." )
						return
					endif
				else
						BC( "dialogbox", "player", $teamplayer6_id, "Error, error code:" , $is_succeed )
						return
				endif	
			endif	
		endif	
}

//???????????
	function OnOption3(){
		
		$ectype_ID = GetEctypeID(-1 ,249)
		//????ID
		$ectype_UID = GetEctypeUniqueID(-1 ,249)
		$today_time = GetSystemTime( "yday" )
		$player_time =  GetPlayerVar( -1, 3770 )
		$player_number = GetMapPlayerCount($ectype_ID)
		if $player_number >= 6
			BC( "dialogbox", "player", -1, "Instance is full." )
			return
		endif
		$lv = GetPlayerInfo( -1, "level" )
		if $lv < 45
			BC( "dialogbox", "player", -1, "You can enter after reaching level 45." )
			return
		endif			
		//---------------------------------------------------------------------------------------------------------
		//??????
		if $ectype_ID > 0
			//?????????
			$ectype_type = GetEctypeVar($ectype_ID ,110)
			//?????????,,????????????????????????,???.??,????+1,???,?????
			if $ectype_type == 0	
				$player_time =  GetPlayerVar( -1, 3770 )
				$Player_UID = GetPlayerVar( -1, 3812 )
				//??????????????
				if $Player_UID == $ectype_UID
					//???????,?????
				else
					//??????????????
				//-----------------------------------------------------------------------------------
					if $player_time == $today_time
						$player_number =  GetPlayerVar( -1, 3409 )
						if $player_number >= 1
							BC( "dialogbox", "player", -1, "You have finished Energy Well already today." )
							return
						endif
					else
						//????????????
					endif
				endif	
			endif	
				
			if $ectype_type == 1	
				$player_time =  GetPlayerVar( -1, 3770 )
				$Player_UID = GetPlayerVar( -1, 3812 )
				//??????????????
				if $Player_UID == $ectype_UID
					//???????,?????
				else
					//??????????????
				//-----------------------------------------------------------------------------------
					if $player_time == $today_time
						$player_number =  GetPlayerVar( -1, 3409 )
						if $player_number >= 1
							BC( "dialogbox", "player", -1, "You have finished Energy Well already today." )
							return
						endif
					else
						//????????????,????????,???????
						$week = GetSystemTime("week")
						if $week != 0
							BC( "dialogbox", "player", -1, "Sorry, the elite Energy Well only opens on Sunday, do not try to cheat." )
							return
						endif		
					endif
				endif	
			endif	
							
			if $ectype_type == 2	
				$player_time =  GetPlayerVar( -1, 3770 )
				$Player_UID = GetPlayerVar( -1, 3812 )
				//??????????????
				if $Player_UID == $ectype_UID
					//???????,?????
				else
					//??????????????
				//-----------------------------------------------------------------------------------
					if $player_time == $today_time
						$player_number =  GetPlayerVar( -1, 3409 )
						if $player_number >= 1
							BC( "dialogbox", "player", -1, "You have finished Energy Well already today." )
							return
						endif
					else
						//????????????,????????,???????
						$week = GetSystemTime("week")
						if $week != 0
							BC( "dialogbox", "player", -1, "Sorry, the challenge Energy Well only opens on Sunday, do not try to cheat." )
							return						
						endif
					endif	
				endif
			endif	
		else		
			//????ID??
			return
		endif	
		
		$is_succeed = FlyToEctype(-1 ,249 ,60 ,48)
		if $is_succeed > 0
			//??????
			$ectype_type = GetEctypeVar($ectype_ID ,110)
			//??????,????ID??,???????????????,??????+1
			if $ectype_type == 0
				$Player_UID = GetPlayerVar( -1, 3812 )
				//??????????????
				if $Player_UID == $ectype_UID
					//?????,?????
					BC( "screen", "player", -1, "You have gone back to common Energy Well." )	
				else
					//???????????????,????????????,?????????
					BC( "screen", "player", -1, "You enter a new common Energy Well." )
					SetPlayerActLog($team_headerID,20,1)
					SetPlayerVar( -1 , 3812 , $ectype_UID )
					if $player_time != $today_time
						SetPlayerVar( -1, 3770 ,$today_time )	
						SetPlayerVar( -1 , 3409 ,1 )
					else
						BC( "screen", "player", -1, "You have finished Energy Well already today." )	
						return
					endif
				endif				
			endif
			
			//???????,????ID??,???????????????,??????+1	
			if $ectype_type == 1
				$Player_UID = GetPlayerVar( -1, 3812 )
				//??????????????
				if $Player_UID == $ectype_UID
					//?????,?????
					BC( "screen", "player", -1, "You have gone back to elite Energy Well." )	
				else
					//???????????????,????????????,?????????
					BC( "screen", "player", -1, "You enter a new elite Energy Well!" )
					SetPlayerActLog($team_headerID,20,2)
					SetPlayerVar( -1 , 3812 , $ectype_UID )
					if $player_time != $today_time
						SetPlayerVar( -1, 3770 ,$today_time )	
						SetPlayerVar( -1 , 3409 ,1 )
					else
						BC( "screen", "player", -1, "You have finished Energy Well already today." )	
						return
					endif
				endif				
			endif	

			//???????,????ID??,???????????????,??????+1	
			if $ectype_type == 2
				$Player_UID = GetPlayerVar( -1, 3812 )
				//??????????????
				if $Player_UID == $ectype_UID
					//?????,?????
					BC( "screen", "player", -1, "You have gone back to challenge Energy Well." )	
				else
					//???????????????,????????????,?????????
					BC( "screen", "player", -1, "You enter a new challenge Energy Well." )
					SetPlayerActLog($team_headerID,20,3)
					SetPlayerVar( -1 , 3812 , $ectype_UID )
					if $player_time != $today_time
						SetPlayerVar( -1, 3770 ,$today_time )	
						SetPlayerVar( -1 , 3409 ,1 )
					else
						BC( "screen", "player", -1, "You have finished Energy Well already today." )	
						return
					endif
				endif				
			endif	
		else
			BC( "dialogbox", "player", -1, "Instance is full. Failed to enter." )
			//???????
		endif
}	

	function OnOption4(){
			
    		$yday = GetSystemTime( "yday" )	
		$TaskVar = GetPlayerVar( -1, 3914 )
		$Task1 = IsTaskAccept( -1, 3533 )
		$Task2 = IsTaskAccept( -1, 3534 )
		$Task3 = IsTaskAccept( -1, 3535 )
		$level = GetPlayerInfo( -1, "level" )
		$week = GetSystemTime( "week" )
    		$mday =	GetSystemTime( "mday" )
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 45
			BC( "dialogbox", "player", -1, "Sorry, you have not reached level 45." )
			return
		endif
		
		if $TaskVar == $yday
			BC( "dialogbox", "player", -1, "You have acquired the quest today. Please come back tomorrow." )
			return
		endif
		
		if $Task1 == 0
			BC( "dialogbox", "player", -1, "Hurry up and finish the quest assigned to you!" )
			return
		endif

		if $Task2 == 0
			BC( "dialogbox", "player", -1, "Hurry up and finish the quest assigned to you!" )
			return
		endif
		
		if $Task3 == 0
			BC( "dialogbox", "player", -1, "Hurry up and finish the quest assigned to you!" )
			return
		endif
				
		if $week == 0
    			if $mday < 15
    				AcceptTask( -1, 3534 )
    				SetPlayerVar( -1, 3914, $yday )
    			endif	
    			if $mday >= 15
    				if $mday <= 21
    					AcceptTask( -1, 3535 )
    					SetPlayerVar( -1, 3914, $yday )
    				endif
    			endif		
    			if $mday > 21
    				AcceptTask( -1, 3534 )
    				SetPlayerVar( -1, 3914, $yday )
    			endif
		else
		    	AcceptTask( -1, 3533 )
    			SetPlayerVar( -1, 3914, $yday )
    		endif
 }   															 												 															