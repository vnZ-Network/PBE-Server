	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/12/05
	//		Author:???
	//		TaskName:Ectype-yijiwaiwei-NPC-1733.s
	//		TaskID: ?????
	//
	//****************************************
	// 3915 ????
	
	function OnRequest(){
	
		$week = GetSystemTime( "week")
		if $week != 6
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif	
		$ectype_id = GetEctypeID( -1 , 237 )
		if $ectype_id > 0
			DisableNpcOption(0)
		else
			DisableNpcOption(1)
		endif
	}
	
	function OnOption0(){
	
		$lv = GetPlayerInfo( -1 , "level" )
		$hour = GetSystemTime( "hour" )
		$minute = GetSystemTime( "minute")
		$week = GetSystemTime( "week")
		
//-----------------------------------------------
		if $week != 6
			BC( "dialogbox", "player", -1, "The event time for [Lost Ruins] is between 14:00 and 18:00 on Saturday." )
			return
		endif
		if $hour < 14
			BC( "dialogbox", "player", -1, "The event time for [Lost Ruins] is between 14:00 and 18:00 on Saturday." )
			return
		endif
		if $hour > 18
			BC( "dialogbox", "player", -1, "The event time for [Lost Ruins] is between 14:00 and 18:00 on Saturday." )
			return
		endif
		if $lv < 30
			BC( "dialogbox", "player", -1, "You have to be above LV30 to enter the [Lost Ruins] event." )
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
			$lasttime = GetPlayerVar( $Mem1 , 3915 )
			if $lv < 30
				BC( "dialogbox", "player", $headerID ,#name, "LV is lower than 30. Unable to move in!" )
				return
			endif
			if $lasttime == $time
				BC( "dialogbox", "player", $headerID, #name,"There is already a [Lost Ruins] event today. Unable to enter again." )
				return
			endif
		endif
		
		if $Mem2 != -1
			#name = GetPlayerInfo( $Mem2 , "name" )
			$lv = GetPlayerInfo( $Mem2 , "level" )
			$lasttime = GetPlayerVar( $Mem2 , 3915 )
			if $lv < 30
				BC( "dialogbox", "player", $headerID ,#name, "LV is lower than 30. Unable to move in!" )
				return
			endif
			if $lasttime == $time
				BC( "dialogbox", "player", $headerID, #name,"There is already a [Lost Ruins] event today. Unable to enter again." )
				return
			endif
		endif
		
		if $Mem3 != -1
			#name = GetPlayerInfo( $Mem3 , "name" )
			$lv = GetPlayerInfo( $Mem3 , "level" )
			$lasttime = GetPlayerVar( $Mem3 , 3915 )
			if $lv < 30
				BC( "dialogbox", "player", $headerID ,#name, "LV is lower than 30. Unable to move in!" )
				return
			endif
			if $lasttime == $time
				BC( "dialogbox", "player", $headerID, #name,"There is already a [Lost Ruins] event today. Unable to enter again." )
				return
			endif
		endif
		
		if $Mem4 != -1
			#name = GetPlayerInfo( $Mem4 , "name" )
			$lv = GetPlayerInfo( $Mem4 , "level" )
			$lasttime = GetPlayerVar( $Mem4 , 3915 )
			if $lv < 30
				BC( "dialogbox", "player", $headerID ,#name, "LV is lower than 30. Unable to move in!" )
				return
			endif
			if $lasttime == $time
				BC( "dialogbox", "player", $headerID, #name,"There is already a [Lost Ruins] event today. Unable to enter again." )
				return
			endif
		endif
		
		if $Mem5 != -1
			#name = GetPlayerInfo( $Mem5 , "name" )
			$lv = GetPlayerInfo( $Mem5 , "level" )
			$lasttime = GetPlayerVar( $Mem5 , 3915 )
			if $lv < 30
				BC( "dialogbox", "player", $headerID ,#name, "LV is lower than 30. Unable to move in!" )
				return
			endif
			if $lasttime == $time
				BC( "dialogbox", "player", $headerID, #name,"There is already a [Lost Ruins] event today. Unable to enter again." )
				return
			endif
		endif
		
		if $Mem6 != -1
			#name = GetPlayerInfo( $Mem6 , "name" )
			$lv = GetPlayerInfo( $Mem6 , "level" )
			$lasttime = GetPlayerVar( $Mem6 , 3915 )
			if $lv < 30
				BC( "dialogbox", "player", $headerID ,#name, "LV is lower than 30. Unable to move in!" )
				return
			endif
			if $lasttime == $time
				BC( "dialogbox", "player", $headerID, #name,"There is already a [Lost Ruins] event today. Unable to enter again." )
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
		
		$succeed = FlyToEctype( $headerID , 237 , 64 , 55 )
		if $succeed > 0
			SetPlayerActLog($headerID,31,1)
			$ectype_id = GetEctypeID( -1 , 237 )
			$ectype_uid = GetEctypeUniqueID( -1 , 237 )
			SetPlayerVar( -1 , 3915 , $time )
			StartEctypeTimer( -1 , 237 , 1 )
			SetEctypeVar( $ectype_id , 110 , $team_level )
			SetEctypeVar( $ectype_id , 90 , $monster_fieldlevel )
			SetPlayerVar( -1 , 3813 , $ectype_uid ) 
			BC( "screen" , "player" , $headerID , "You have entered a new Lost Ruins event." )
			//??????-START
			$TJ_join_number = GetGlobalVar(951)
			$TJ_join_number = $TJ_join_number + $team_count
			SetGlobalVar(951 , $TJ_join_number)
			//??????-END
		else
			BC( "dialogbox", "player", -1, "The [Lost Ruins] event is full. Please check again later." )
			return
		endif
		
//-------??????,??????----------------------------
		if $Mem1 != -1		
			if $Mem1 != $headerID
				$succeed = FlyToEctype( $Mem1 , 237 , 64 , 55 )
				if $succeed > 0
					SetPlayerActLog($Mem1,31,1)
					$ectype_uid = GetEctypeUniqueID( $Mem1 , 237 )
					SetPlayerVar(  $Mem1 , 3813 , $ectype_uid )
					SetPlayerVar( $Mem1 , 3915 , $time )
					BC( "screen", "player", $Mem1 , "You have entered a new Lost Ruins event." )
				else
					BC( "dialogbox", "player", $Mem1 , "Unknown error. Error ID:" , $succeed )
				endif
			endif
		endif
		
		if $Mem2 != -1		
			if $Mem2 != $headerID
				$succeed = FlyToEctype( $Mem2 , 237 , 64 , 55 )
				if $succeed > 0
					SetPlayerActLog($Mem2,31,1)
					$ectype_uid = GetEctypeUniqueID( $Mem2 , 237 )
					SetPlayerVar( $Mem2 , 3813 , $ectype_uid )
					SetPlayerVar( $Mem2 , 3915 , $time )
					BC( "screen", "player", $Mem2 , "You have entered a new Lost Ruins event." )
				else
					BC( "dialogbox", "player", $Mem2 , "Unknown error. Error ID:" , $succeed )
				endif
			endif
		endif
		
		if $Mem3 != -1		
			if $Mem3 != $headerID
				$succeed = FlyToEctype( $Mem3 , 237 , 64 , 55 )
				if $succeed > 0
					SetPlayerActLog($Mem3,31,1)
					$ectype_uid = GetEctypeUniqueID( $Mem3 , 237 )
					SetPlayerVar( $Mem3 , 3813 , $ectype_uid )
					SetPlayerVar( $Mem3 , 3915 , $time )
					BC( "screen", "player", $Mem3 , "You have entered a new Lost Ruins event." )
				else
					BC( "dialogbox", "player", $Mem3 , "Unknown error. Error ID:" , $succeed )
				endif
			endif
		endif
		
		if $Mem4 != -1		
			if $Mem4 != $headerID
				$succeed = FlyToEctype( $Mem4 , 237 , 64 , 55 )
				if $succeed > 0
					SetPlayerActLog($Mem4,31,1)
					$ectype_uid = GetEctypeUniqueID( $Mem4 , 237 )
					SetPlayerVar( $Mem4 , 3813 , $ectype_uid )
					SetPlayerVar( $Mem4 , 3915 , $time )
					BC( "screen", "player", $Mem4 , "You have entered a new Lost Ruins event." )
				else
					BC( "dialogbox", "player", $Mem4 , "Unknown error. Error ID:" , $succeed )
				endif
			endif
		endif
		
		if $Mem5 != -1		
			if $Mem5 != $headerID
				$succeed = FlyToEctype( $Mem5 , 237 , 64 , 55 )
				if $succeed > 0
					SetPlayerActLog($Mem5,31,1)
					$ectype_uid = GetEctypeUniqueID( $Mem5 , 237 )
					SetPlayerVar( $Mem5 , 3813 , $ectype_uid )
					SetPlayerVar( $Mem5 , 3915 , $time )
					BC( "screen", "player", $Mem5 , "You have entered a new Lost Ruins event." )
				else
					BC( "dialogbox", "player", $Mem5 , "Unknown error. Error ID:" , $succeed )
				endif
			endif
		endif
		
		if $Mem6 != -1		
			if $Mem6 != $headerID
				$succeed = FlyToEctype( $Mem6 , 237 , 64 , 55 )
				if $succeed > 0
					SetPlayerActLog($Mem6,31,1)
					$ectype_uid = GetEctypeUniqueID( $Mem6 , 237 )
					SetPlayerVar( $Mem6 , 3813 , $ectype_uid )
					SetPlayerVar( $Mem6 , 3915 , $time )
					BC( "screen", "player", $Mem6 , "You have entered a new Lost Ruins event." )
				else
					BC( "dialogbox", "player", $Mem6 , "Unknown error. Error ID:" , $succeed )
				endif
			endif
		endif
			
		
	}
	
//-------????????-----------------
	function OnOption1(){
		
		$lv = GetPlayerInfo( -1 , "level" )
		$hour = GetSystemTime( "hour" )
		$minute =  GetSystemTime( "minute")
		$ectype_id = GetEctypeID( -1 , 237 )
		$ectype_uid = GetEctypeUniqueID( -1 , 237 )
		$player_count = GetMapPlayerCount( $ectype_id )
		$lv = GetPlayerInfo( -1, "level" )
		$player_uid = GetPlayerVar( -1 , 3813  )
		if $player_count >= 6
			BC( "dialogbox", "player", -1, "The current [Lost Ruins] event is full." )
			return
		endif
//--------??????,??????,??????,??????---------
//--------?????????---------
		if $ectype_uid == $player_uid
			$result = FlyToEctype( -1 ,237 , 60 , 60 )
			if $result > 0
				BC( "screen", "player", -1, "You have returned to the Lost Ruins event." )
			else
				BC( "dialogbox", "player", -1 , "Unknown error. Error ID:" , $result )
			endif
		else
			BC( "dialogbox", "player", -1 , "You do not belong to this instance." )
		endif
		
	
	}
	
	function OnOption2(){
	
		$bag_count = GetPlayerInfo( -1 , "nullitem", 0 )
		if $bag_count < 1
			BC( "dialogbox", "player", -1, "You have not enough space in your bag,please fix your bag." )
			return
		endif
		$time = GetPlayerVar( -1 , 3926 )
		$var = GetPlayerVar( -1 , 3915 )
		$yday = GetSystemTime( "yday" )
		if $var != $yday
			BC( "dialogbox", "player", -1, "You haven't entered the Outer Ruins. You can not receive a Ruin Shovel." )
			return
		endif
		if $time == $yday
			BC( "dialogbox", "player", -1, "You have already received a Ruin Shovel." )
			return
		else
			AddPlayerInfo( -1, "item", 63170, 20)
			SetPlayerVar( -1 , 3926 , $yday )
			SetPlayerActLog(-1,31,2)
		endif
	
	}

	function OnOption3(){
		
		FlyToMap(-1, 475, 75, 38 ,1)
	
	}