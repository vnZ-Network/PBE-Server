	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/05
	//		Author:???
	//		TaskName:Ectype-shiliandongku-NPC-1709.s
	//		TaskID ??????
	//
	//****************************************
	
	function OnRequest(){

//------????????233????,????????????????????------------------------------------
		$ectype_id = GetEctypeID( -1 , 233 )
		if $ectype_id > 0
			DisableNpcOption(0)
			DisableNpcOption(1)
		else
			DisableNpcOption(2)
		endif		
		
		
	}
	
//??????
	function OnOption0(){
	
		$lv = GetPlayerInfo( -1 , "level" )
		$hour = GetSystemTime( "hour" )
		$minute =  GetSystemTime( "minute")
//--------30????---------------------------------------
		$line = GetServerLineID()
		$line = $line % 2
		if $line == 1
			BC( "dialogbox", "player", -1, "The Trial for the Brave event is only available on realms 2, 4, 6, and 8." )
			return
		endif
		if $lv < 30
			BC( "dialogbox", "player", -1, "Your LV is lower than 30. Unable to attend event Cavern of Trials!" )
		endif
//----------------------------------
		$team = IsPlayerInTeam(-1)
		//????
		if $team == -1
			BC( "dialogbox", "player", -1, "You must form a party to enter the instance." )
			return
		else
			$headerID = GetTeamHeaderID( -1 )
			$id = GetPlayerID()
			if $id != $headerID
				BC( "dialogbox", "player", -1, "You are not the party leader." )
				return
			endif
			$team_count = GetTeamMemberCount( -1 )
			if $team_count > 1
				BC( "dialogbox", "player", -1, "Easy Mode is only for a single player!" )
				return
			endif
//			$size = GetTeamAreaSize(-1)
//			if $size > 10
//				BC( "dialogbox", "player", -1, "Your party members are too far away!" )
//				return
//			endif

	//-----????,????return,??????-----------------------------------------
	//-----??????????,????????????????????(????)---
	//-----??????,???????-1,???????,????????,BC?????????---		
			$Mem1 = GetTeamMemberID( -1, 0 )
			$Mem2 = GetTeamMemberID( -1, 1 )
			$Mem3 = GetTeamMemberID( -1, 2 )
			$Mem4 = GetTeamMemberID( -1, 3 )
			$Mem5 = GetTeamMemberID( -1, 4 )
			$Mem6 = GetTeamMemberID( -1, 5 )
			$time = GetSystemTime( "yday" )
			$team_count = GetTeamMemberCount( -1 )
			
			if $Mem1 != -1
				#name = GetPlayerInfo( $Mem1 , "name" )
				$lv = GetPlayerInfo( $Mem1 , "level" )
				$lasttime = GetPlayerVar( $Mem1 , 3763 )
				if $lv < 30
					BC( "dialogbox", "player", $headerID ,#name, "LV is lower than 30. Unable to move in!" )
					return
				endif
				if $lasttime == $time
					BC( "dialogbox", "player", $headerID, #name,"One or more members of your party has already completed Trial for the Brave today.  Unable to enter." )
					return
				endif
			endif
			if $Mem2 != -1
				#name = GetPlayerInfo( $Mem2 , "name" )
				$lv = GetPlayerInfo( $Mem2 , "level" )
				$lasttime = GetPlayerVar( $Mem2 , 3763 )
				if $lv < 30
					BC( "dialogbox", "player", $headerID ,#name, "LV is lower than 30. Unable to move in!" )
					return
				endif
				if $lasttime == $time
					BC( "dialogbox", "player", $headerID, #name,"One or more members of your party has already completed Trial for the Brave today.  Unable to enter." )
					return
				endif
			endif
			if $Mem3 != -1
				#name = GetPlayerInfo( $Mem3 , "name" )
				$lv = GetPlayerInfo( $Mem3 , "level" )
				$lasttime = GetPlayerVar( $Mem3 , 3763 )
				if $lv < 30
					BC( "dialogbox", "player", $headerID ,#name, "LV is lower than 30. Unable to move in!" )
					return
				endif
				if $lasttime == $time
					BC( "dialogbox", "player", $headerID, #name,"One or more members of your party has already completed Trial for the Brave today.  Unable to enter." )
					return
				endif
			endif
			if $Mem4 != -1
				#name = GetPlayerInfo( $Mem4 , "name" )
				$lv = GetPlayerInfo( $Mem4 , "level" )
				$lasttime = GetPlayerVar( $Mem4 , 3763 )
				if $lv < 30
					BC( "dialogbox", "player", $headerID ,#name, "LV is lower than 30. Unable to move in!" )
					return
				endif
				if $lasttime == $time
					BC( "dialogbox", "player", $headerID, #name,"One or more members of your party has already completed Trial for the Brave today.  Unable to enter." )
					return
				endif
			endif
			if $Mem5 != -1
				#name = GetPlayerInfo( $Mem5 , "name" )
				$lv = GetPlayerInfo( $Mem5 , "level" )
				$lasttime = GetPlayerVar( $Mem5 , 3763 )
				if $lv < 30
					BC( "dialogbox", "player", $headerID ,#name, "LV is lower than 30. Unable to move in!" )
					return
				endif
				if $lasttime == $time
					BC( "dialogbox", "player", $headerID, #name,"One or more members of your party has already completed Trial for the Brave today.  Unable to enter." )
					return
				endif
			endif
			if $Mem6 != -1
				#name = GetPlayerInfo( $Mem6 , "name" )
				$lv = GetPlayerInfo( $Mem6 , "level" )
				$lasttime = GetPlayerVar( $Mem6 , 3763 )
				if $lv < 30
					BC( "dialogbox", "player", $headerID ,#name, "LV is lower than 30. Unable to move in!" )
					return
				endif
				if $lasttime == $time
					BC( "dialogbox", "player", $headerID, #name,"One or more members of your party has already completed Trial for the Brave today.  Unable to enter." )
					return
				endif
			endif
	//----------??????------------------------------------------------------------------------------
			$a = 0
			$total_fieldlevel = 0
			$temp_fieldlevel = 0
			if $Mem1 != -1
				$lv = GetPlayerInfo( $Mem1 , "level" )
				$a = $lv
				
				$temp_fieldlevel = GetFieldLevel( $Mem1 ) 
				$temp_fieldlevel = $temp_fieldlevel + 1
				$total_fieldlevel = $total_fieldlevel + $temp_fieldlevel
			endif
			if $Mem2 != -1
				$lv = GetPlayerInfo( $Mem2 , "level" )
				$a = $a + $lv
				
				$temp_fieldlevel = GetFieldLevel( $Mem2 ) 
				$temp_fieldlevel = $temp_fieldlevel + 1
				$total_fieldlevel = $total_fieldlevel + $temp_fieldlevel
			endif
			if $Mem3 != -1
				$lv = GetPlayerInfo( $Mem3 , "level" )
				$a = $a + $lv
				
				$temp_fieldlevel = GetFieldLevel( $Mem3 )
				$temp_fieldlevel = $temp_fieldlevel + 1
				$total_fieldlevel = $total_fieldlevel + $temp_fieldlevel
			endif
			if $Mem4 != -1
				$lv = GetPlayerInfo( $Mem4 , "level" )
				$a = $a + $lv
				
				$temp_fieldlevel = GetFieldLevel( $Mem4 )
				$temp_fieldlevel = $temp_fieldlevel + 1
				$total_fieldlevel = $total_fieldlevel + $temp_fieldlevel
			endif
			if $Mem5 != -1
				$lv = GetPlayerInfo( $Mem5 , "level" )
				$a = $a + $lv
				
				$temp_fieldlevel = GetFieldLevel( $Mem5 )
				$temp_fieldlevel = $temp_fieldlevel + 1
				$total_fieldlevel = $total_fieldlevel + $temp_fieldlevel
			endif
			if $Mem6 != -1
				$lv = GetPlayerInfo( $Mem6 , "level" )
				$a = $a + $lv
				
				$temp_fieldlevel = GetFieldLevel( $Mem6 )
				$temp_fieldlevel = $temp_fieldlevel + 1
				$total_fieldlevel = $total_fieldlevel + $temp_fieldlevel
			endif
			$team_level = $a / $team_count
			if $total_fieldlevel > $team_count
				$monster_fieldlevel = $total_fieldlevel / $team_count
				if $team_level < 120
					$team_level = 120
				endif
			else
				$monster_fieldlevel = 0
			endif
			
	//------?????--????????,??,??????????????????,BOSS???--------------------------------
			
			$succeed = FlyToEctype( $headerID , 233 , 60 , 60 )
			if $succeed > 0
				SetPlayerActLog($headerID,13,1)
				$ectype_id = GetEctypeID( -1 , 233 )
				$ectype_uid = GetEctypeUniqueID( -1 , 233 )
				SetPlayerVar( -1 , 3763 , $time )
				StartEctypeTimer( -1 , 233 , 1 )
				StartEctypeTimer( -1 , 233 , 2 )
				SetEctypeVar( $ectype_id , 110 , $team_level )
				SetEctypeVar( $ectype_id , 90 , $monster_fieldlevel )
				SetPlayerVar( -1 , 3806 , $ectype_uid )
				SetEctypeVar( $ectype_id , 11 , 1 ) 
				BC( "screen" , "player" , $headerID , "You enter a new Cavern of Trials!" )
				//??????-START
				$TJ_join_number = GetGlobalVar(900)
				$TJ_join_number = $TJ_join_number + $team_count
				SetGlobalVar(900 , $TJ_join_number)
				//??????-END
			else
				BC( "dialogbox", "player", -1, "Cavern of Trials is full. Please try later or change another Realm!" )
				return
			endif
			
	//-------??????,??????----------------------------
			if $Mem1 != -1		
				if $Mem1 != $headerID
					$succeed = FlyToEctype( $Mem1 , 233 , 60 , 60 )
					if $succeed > 0
						SetPlayerActLog($Mem1,13,1)
						$ectype_uid = GetEctypeUniqueID( $Mem1 , 233 )
						SetPlayerVar(  $Mem1 , 3806 , $ectype_uid )
						SetPlayerVar( $Mem1 , 3763 , $time )
						BC( "screen", "player", $Mem1 , "You enter a new Cavern of Trials!" )
					else
						BC( "dialogbox", "player", $Mem1 , "An unknown error occurred while entering Cavern of Trials. Error code:" , $succeed )
					endif
				endif
			endif
			if $Mem2 != -1		
				if $Mem2 != $headerID
					$succeed = FlyToEctype( $Mem2 , 233 , 60 , 60 )
					if $succeed > 0
						SetPlayerActLog($Mem2,13,1)
						$ectype_uid = GetEctypeUniqueID( $Mem2 , 233 )
						SetPlayerVar( $Mem2 , 3806 , $ectype_uid )
						SetPlayerVar( $Mem2 , 3763 , $time )
						BC( "screen", "player", $Mem2 , "You enter a new Cavern of Trials!" )
					else
						BC( "dialogbox", "player", $Mem2 , "An unknown error occurred while entering Cavern of Trials. Error code:" , $succeed )
					endif
				endif
			endif
			if $Mem3 != -1		
				if $Mem3 != $headerID
					$succeed = FlyToEctype( $Mem3 , 233 , 60 , 60 )
					if $succeed > 0
						SetPlayerActLog($Mem3,13,1)
						$ectype_uid = GetEctypeUniqueID( $Mem3 , 233 )
						SetPlayerVar( $Mem3 , 3806 , $ectype_uid )
						SetPlayerVar( $Mem3 , 3763 , $time )
						BC( "screen", "player", $Mem3 , "You enter a new Cavern of Trials!" )
					else
						BC( "dialogbox", "player", $Mem3 , "An unknown error occurred while entering Cavern of Trials. Error code:" , $succeed )
					endif
				endif
			endif
			if $Mem4 != -1		
				if $Mem4 != $headerID
					$succeed = FlyToEctype( $Mem4 , 233 , 60 , 60 )
					if $succeed > 0
						SetPlayerActLog($Mem4,13,1)
						$ectype_uid = GetEctypeUniqueID( $Mem4 , 233 )
						SetPlayerVar( $Mem4 , 3806 , $ectype_uid )
						SetPlayerVar( $Mem4 , 3763 , $time )
						BC( "screen", "player", $Mem4 , "You enter a new Cavern of Trials!" )
					else
						BC( "dialogbox", "player", $Mem4 , "An unknown error occurred while entering Cavern of Trials. Error code:" , $succeed )
					endif
				endif
			endif
			if $Mem5 != -1		
				if $Mem5 != $headerID
					$succeed = FlyToEctype( $Mem5 , 233 , 60 , 60 )
					if $succeed > 0
						SetPlayerActLog($Mem5,13,1)
						$ectype_uid = GetEctypeUniqueID( $Mem5 , 233 )
						SetPlayerVar( $Mem5 , 3806 , $ectype_uid )
						SetPlayerVar( $Mem5 , 3763 , $time )
						BC( "screen", "player", $Mem5 , "You enter a new Cavern of Trials!" )
					else
						BC( "dialogbox", "player", $Mem5 , "An unknown error occurred while entering Cavern of Trials. Error code:" , $succeed )
					endif
				endif
			endif
			if $Mem6 != -1		
				if $Mem6 != $headerID
					$succeed = FlyToEctype( $Mem6 , 233 , 60 , 60 )
					if $succeed > 0
						SetPlayerActLog($Mem6,13,1)
						$ectype_uid = GetEctypeUniqueID( $Mem6 , 233 )
						SetPlayerVar( $Mem6 , 3806 , $ectype_uid )
						SetPlayerVar( $Mem6 , 3763 , $time )
						BC( "screen", "player", $Mem6 , "You enter a new Cavern of Trials!" )
					else
						BC( "dialogbox", "player", $Mem6 , "An unknown error occurred while entering Cavern of Trials. Error code:" , $succeed )
					endif
				endif
			endif
		endif
			
		
	}
	

	
	function OnOption1(){
	
		$lv = GetPlayerInfo( -1 , "level" )
		$hour = GetSystemTime( "hour" )
		$minute =  GetSystemTime( "minute")
//--------???---------------------------------------
		$line = GetServerLineID()
		$line = $line % 2
		if $line == 1
			BC( "dialogbox", "player", -1, "The Trial for the Brave event is only available on realms 2, 4, 6, and 8." )
			return
		endif
		if $lv < 30
			BC( "dialogbox", "player", -1, "Your LV is lower than 30. Unable to attend event Cavern of Trials!" )
		endif
//------????????,??3??????,???????--??????????,????------------------------------
		$headerID = GetTeamHeaderID( -1 )
		$id = GetPlayerID()
		
		if $id != $headerID
			BC( "dialogbox", "player", -1, "You are not the party leader." )
			return
		endif
		
		$size = GetTeamAreaSize(-1)
		if $size > 10
			BC( "dialogbox", "player", -1, "Your party members are too far away!" )
			return
		endif
		
		$team_count = GetTeamMemberCount( -1 )
		if $team_count < 3
			BC( "dialogbox", "player", -1, "Your party should have at least 3 members!" )
			return
		endif
	
		$Mem1 = GetTeamMemberID( -1, 0 )
		$Mem2 = GetTeamMemberID( -1, 1 )
		$Mem3 = GetTeamMemberID( -1, 2 )
		$Mem4 = GetTeamMemberID( -1, 3 )
		$Mem5 = GetTeamMemberID( -1, 4 )
		$Mem6 = GetTeamMemberID( -1, 5 )

//-----????,????return,??????-----------------------------------------
//-----??????????,????????????????????(????)---
//-----??????,???????-1,???????,????????,BC?????????---
		$time = GetSystemTime( "yday" )
		if $Mem1 != -1
			#name = GetPlayerInfo( $Mem1 , "name" )
			$lv = GetPlayerInfo( $Mem1 , "level" )
			$lasttime = GetPlayerVar( $Mem1 , 3763 )
			if $lv < 30
				BC( "dialogbox", "player", $headerID ,#name, "LV is lower than 30. Unable to move in!" )
				return
			endif
			if $lasttime == $time
				BC( "dialogbox", "player", $headerID, #name,"One or more members of your party has already completed Trial for the Brave today.  Unable to enter." )
				return
			endif
		endif
		
		if $Mem2 != -1
			#name = GetPlayerInfo( $Mem2 , "name" )
			$lv = GetPlayerInfo( $Mem2 , "level" )
			$lasttime = GetPlayerVar( $Mem2 , 3763 )
			if $lv < 30
				BC( "dialogbox", "player", $headerID ,#name, "LV is lower than 30. Unable to move in!" )
				return
			endif
			if $lasttime == $time
				BC( "dialogbox", "player", $headerID, #name,"One or more members of your party has already completed Trial for the Brave today.  Unable to enter." )
				return
			endif
		endif
		
		if $Mem3 != -1
			#name = GetPlayerInfo( $Mem3 , "name" )
			$lv = GetPlayerInfo( $Mem3 , "level" )
			$lasttime = GetPlayerVar( $Mem3 , 3763 )
			if $lv < 30
				BC( "dialogbox", "player", $headerID ,#name, "LV is lower than 30. Unable to move in!" )
				return
			endif
			if $lasttime == $time
				BC( "dialogbox", "player", $headerID, #name,"One or more members of your party has already completed Trial for the Brave today.  Unable to enter." )
				return
			endif
		endif
		
		if $Mem4 != -1
			#name = GetPlayerInfo( $Mem4 , "name" )
			$lv = GetPlayerInfo( $Mem4 , "level" )
			$lasttime = GetPlayerVar( $Mem4 , 3763 )
			if $lv < 30
				BC( "dialogbox", "player", $headerID ,#name, "LV is lower than 30. Unable to move in!" )
				return
			endif
			if $lasttime == $time
				BC( "dialogbox", "player", $headerID, #name,"One or more members of your party has already completed Trial for the Brave today.  Unable to enter." )
				return
			endif
		endif
		
		if $Mem5 != -1
			#name = GetPlayerInfo( $Mem5 , "name" )
			$lv = GetPlayerInfo( $Mem5 , "level" )
			$lasttime = GetPlayerVar( $Mem5 , 3763 )
			if $lv < 30
				BC( "dialogbox", "player", $headerID ,#name, "LV is lower than 30. Unable to move in!" )
				return
			endif
			if $lasttime == $time
				BC( "dialogbox", "player", $headerID, #name,"One or more members of your party has already completed Trial for the Brave today.  Unable to enter." )
				return
			endif
		endif
		
		if $Mem6 != -1
			#name = GetPlayerInfo( $Mem6 , "name" )
			$lv = GetPlayerInfo( $Mem6 , "level" )
			$lasttime = GetPlayerVar( $Mem6 , 3763 )
			if $lv < 30
				BC( "dialogbox", "player", $headerID ,#name, "LV is lower than 30. Unable to move in!" )
				return
			endif
			if $lasttime == $time
				BC( "dialogbox", "player", $headerID, #name,"One or more members of your party has already completed Trial for the Brave today.  Unable to enter." )
				return
			endif
		endif
		
//----------??????------------------------------------------------------------------------------
		//----------??????------------------------------------------------------------------------------
			$a = 0
			$total_fieldlevel = 0
			$temp_fieldlevel = 0
			if $Mem1 != -1
				$lv = GetPlayerInfo( $Mem1 , "level" )
				$a = $lv
				
				$temp_fieldlevel = GetFieldLevel( $Mem1 ) 
				$temp_fieldlevel = $temp_fieldlevel + 1
				$total_fieldlevel = $total_fieldlevel + $temp_fieldlevel
			endif
			if $Mem2 != -1
				$lv = GetPlayerInfo( $Mem2 , "level" )
				$a = $a + $lv
				
				$temp_fieldlevel = GetFieldLevel( $Mem2 ) 
				$temp_fieldlevel = $temp_fieldlevel + 1
				$total_fieldlevel = $total_fieldlevel + $temp_fieldlevel
			endif
			if $Mem3 != -1
				$lv = GetPlayerInfo( $Mem3 , "level" )
				$a = $a + $lv
				
				$temp_fieldlevel = GetFieldLevel( $Mem3 )
				$temp_fieldlevel = $temp_fieldlevel + 1
				$total_fieldlevel = $total_fieldlevel + $temp_fieldlevel
			endif
			if $Mem4 != -1
				$lv = GetPlayerInfo( $Mem4 , "level" )
				$a = $a + $lv
				
				$temp_fieldlevel = GetFieldLevel( $Mem4 )
				$temp_fieldlevel = $temp_fieldlevel + 1
				$total_fieldlevel = $total_fieldlevel + $temp_fieldlevel
			endif
			if $Mem5 != -1
				$lv = GetPlayerInfo( $Mem5 , "level" )
				$a = $a + $lv
				
				$temp_fieldlevel = GetFieldLevel( $Mem5 )
				$temp_fieldlevel = $temp_fieldlevel + 1
				$total_fieldlevel = $total_fieldlevel + $temp_fieldlevel
			endif
			if $Mem6 != -1
				$lv = GetPlayerInfo( $Mem6 , "level" )
				$a = $a + $lv
				
				$temp_fieldlevel = GetFieldLevel( $Mem6 )
				$temp_fieldlevel = $temp_fieldlevel + 1
				$total_fieldlevel = $total_fieldlevel + $temp_fieldlevel
			endif
			
			$team_level = $a / $team_count
			if $total_fieldlevel > $team_count
				$monster_fieldlevel = $total_fieldlevel / $team_count
				if $team_level < 120
					$team_level = 120
				endif
			else
				$monster_fieldlevel = 0
			endif
				
//------?????--????????,??,??????????????????,BOSS???--------------------------------
		
		$succeed = FlyToEctype( $headerID , 233 , 60 , 60 )
		if $succeed > 0
			SetPlayerActLog($headerID,13,2)
			$ectype_id = GetEctypeID( -1 , 233 )
			$ectype_uid = GetEctypeUniqueID( -1 , 233 )
			SetPlayerVar( -1 , 3763 , $time )
			StartEctypeTimer( -1 , 233 , 1 )
			StartEctypeTimer( -1 , 233 , 2 )
			SetEctypeVar( $ectype_id , 110 , $team_level )
			SetEctypeVar( $ectype_id , 90 , $monster_fieldlevel )
			SetEctypeVar( $ectype_id , 11 , 0 )
			SetPlayerVar( -1 , 3806 , $ectype_uid ) 
			BC( "screen" , "player" , $headerID , "You enter a new Cavern of Trials!" )
			//??????-START
			$TJ_join_number = GetGlobalVar(900)
			$TJ_join_number = $TJ_join_number + $team_count
			SetGlobalVar(900 , $TJ_join_number)
			//??????-END
		else
			BC( "dialogbox", "player", -1, "Cavern of Trials is full. Please try later or change another Realm!" )
			return
		endif
		
//-------??????,??????----------------------------
		if $Mem1 != -1		
			if $Mem1 != $headerID
				$succeed = FlyToEctype( $Mem1 , 233 , 60 , 60 )
				if $succeed > 0
					SetPlayerActLog($Mem1,13,2)
					$ectype_uid = GetEctypeUniqueID( $Mem1 , 233 )
					SetPlayerVar(  $Mem1 , 3806 , $ectype_uid )
					SetPlayerVar( $Mem1 , 3763 , $time )
					BC( "screen", "player", $Mem1 , "You enter a new Cavern of Trials!" )
				else
					BC( "dialogbox", "player", $Mem1 , "An unknown error occurred while entering Cavern of Trials. Error code:" , $succeed )
				endif
			endif
		endif
		
		if $Mem2 != -1		
			if $Mem2 != $headerID
				$succeed = FlyToEctype( $Mem2 , 233 , 60 , 60 )
				if $succeed > 0
					SetPlayerActLog($Mem2,13,2)
					$ectype_uid = GetEctypeUniqueID( $Mem2 , 233 )
					SetPlayerVar( $Mem2 , 3806 , $ectype_uid )
					SetPlayerVar( $Mem2 , 3763 , $time )
					BC( "screen", "player", $Mem2 , "You enter a new Cavern of Trials!" )
				else
					BC( "dialogbox", "player", $Mem2 , "An unknown error occurred while entering Cavern of Trials. Error code:" , $succeed )
				endif
			endif
		endif
		
		if $Mem3 != -1		
			if $Mem3 != $headerID
				$succeed = FlyToEctype( $Mem3 , 233 , 60 , 60 )
				if $succeed > 0
					SetPlayerActLog($Mem3,13,2)
					$ectype_uid = GetEctypeUniqueID( $Mem3 , 233 )
					SetPlayerVar( $Mem3 , 3806 , $ectype_uid )
					SetPlayerVar( $Mem3 , 3763 , $time )
					BC( "screen", "player", $Mem3 , "You enter a new Cavern of Trials!" )
				else
					BC( "dialogbox", "player", $Mem3 , "An unknown error occurred while entering Cavern of Trials. Error code:" , $succeed )
				endif
			endif
		endif
		
		if $Mem4 != -1		
			if $Mem4 != $headerID
				$succeed = FlyToEctype( $Mem4 , 233 , 60 , 60 )
				if $succeed > 0
					SetPlayerActLog($Mem4,13,2)
					$ectype_uid = GetEctypeUniqueID( $Mem4 , 233 )
					SetPlayerVar( $Mem4 , 3806 , $ectype_uid )
					SetPlayerVar( $Mem4 , 3763 , $time )
					BC( "screen", "player", $Mem4 , "You enter a new Cavern of Trials!" )
				else
					BC( "dialogbox", "player", $Mem4 , "An unknown error occurred while entering Cavern of Trials. Error code:" , $succeed )
				endif
			endif
		endif
		
		if $Mem5 != -1		
			if $Mem5 != $headerID
				$succeed = FlyToEctype( $Mem5 , 233 , 60 , 60 )
				if $succeed > 0
					SetPlayerActLog($Mem5,13,2)
					$ectype_uid = GetEctypeUniqueID( $Mem5 , 233 )
					SetPlayerVar( $Mem5 , 3806 , $ectype_uid )
					SetPlayerVar( $Mem5 , 3763 , $time )
					BC( "screen", "player", $Mem5 , "You enter a new Cavern of Trials!" )
				else
					BC( "dialogbox", "player", $Mem5 , "An unknown error occurred while entering Cavern of Trials. Error code:" , $succeed )
				endif
			endif
		endif
		
		if $Mem6 != -1		
			if $Mem6 != $headerID
				$succeed = FlyToEctype( $Mem6 , 233 , 60 , 60 )
				if $succeed > 0
					SetPlayerActLog($Mem6,13,2)
					$ectype_uid = GetEctypeUniqueID( $Mem6 , 233 )
					SetPlayerVar( $Mem6 , 3806 , $ectype_uid )
					SetPlayerVar( $Mem6 , 3763 , $time )
					BC( "screen", "player", $Mem6 , "You enter a new Cavern of Trials!" )
				else
					BC( "dialogbox", "player", $Mem6 , "An unknown error occurred while entering Cavern of Trials. Error code:" , $succeed )
				endif
			endif
		endif
			
		
	}
	
//-------????????-----------------
	function OnOption2(){
		$lv = GetPlayerInfo( -1 , "level" )
		$hour = GetSystemTime( "hour" )
		$minute =  GetSystemTime( "minute")

		if $lv < 30
			BC( "dialogbox", "player", -1, "Your LV is lower than 30. Unable to attend event Cavern of Trials!" )
		endif

		
		$ectype_id = GetEctypeID( -1 , 233 )
		$ectype_uid = GetEctypeUniqueID( -1 , 233 )
		$player_count = GetMapPlayerCount( $ectype_id )
		$lv = GetPlayerInfo( -1, "level" )
		$player_uid = GetPlayerVar( -1 , 3806  )
		if $player_count >= 6
			BC( "dialogbox", "player", -1, "Current Instance Cavern of Trials is full with 6 players!" )
			return
		endif
//--------??????,??????,??????,??????---------
//--------?????????---------
		if $ectype_uid == $player_uid
			$result = FlyToEctype( -1 ,233 , 60 , 60 )
			if $result > 0
				BC( "screen", "player", -1, "You return to Instance Cavern of Trials!" )
			else
				BC( "dialogbox", "player", -1 , "An unknown error occurred while teleporting to Cavern of Trials. Error code:" , $result )
			endif
		else
			BC( "dialogbox", "player", -1 , "You do not belong to this instance any more." )
		endif
		
	
	}

	function OnOption3(){
		
		FlyToMap( -1  , 475 , 79 , 49 )
	
	}