
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/2/3
	//		Author:???
	//		TaskName:Ectype-elinggubao-Npc-enter-2137.s
	//		TaskID:  ??????
	//****************************************

	function OnRequest(){

		$ectype_id = GetEctypeID( -1 , 258 )
		if $ectype_id > 0
			DisableNpcOption(0)
			DisableNpcOption(1)
		else
			DisableNpcOption(2)
		endif
		
	}
	
	
	//1~3???
	function OnOption0(){
		
		$ectype_id = GetEctypeID( -1 , 258 )
		if $ectype_id > 0
			return
		endif
		//--------3.4??----------------------
		$time = GetSystemTime( "yday" )
		$line = GetServerLineID()
		$lv = GetPlayerInfo( -1 , "level" )
		$week = GetSystemTime( "week" )
		$TeamCount = GetTeamMemberCount( -1 )
		if $line != 3
			if $line != 4
				BC( "dialogbox", "player", -1, "Shadow Manor can only be accessed from realms 3 and 4." )
				return
			endif
		endif
		if $week != 4
			if $week != 0
				BC( "dialogbox", "player", -1, "Shadow Manor can only be accessed on Thursday and Sunday." )
				return
			endif
		endif
		if $lv < 90
			BC( "dialogbox", "player", -1, "You must reach at least LV90 to enter Shadow Manor." )
			return
		endif
		$lasttime = GetPlayerVar( -1 , 3966 )
		if $lasttime == $time
			BC( "dialogbox", "player", -1 ,"You have already entered Shadow Manor today!" )
			return
		endif
		
	//--------------------------------------
		//????
	
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
	//----------------------------------------
		
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
				$lasttime = GetPlayerVar( $Mem1 , 3966 )
				if $lv < 90
					BC( "dialogbox", "player", -1 ,#name, "You must reach at least LV90 to enter Shadow Manor." )
					return
				endif
				if $lasttime == $time
					BC( "dialogbox", "player", -1 , #name,"You have already entered Shadow Manor today!" )
					return
				endif
			endif
			
			if $Mem2 != -1
				#name = GetPlayerInfo( $Mem2 , "name" )
				$lv = GetPlayerInfo( $Mem2 , "level" )
				$lasttime = GetPlayerVar( $Mem2 , 3966 )
				if $lv < 90
					BC( "dialogbox", "player", -1 ,#name, "You must reach at least LV90 to enter Shadow Manor." )
					return
				endif
				if $lasttime == $time
					BC( "dialogbox", "player", -1 , #name,"You have already entered Shadow Manor today!" )
					return
				endif
			endif
			
			if $Mem3 != -1
				#name = GetPlayerInfo( $Mem3 , "name" )
				$lv = GetPlayerInfo( $Mem3 , "level" )
				$lasttime = GetPlayerVar( $Mem3 , 3966 )
				if $lv < 90
					BC( "dialogbox", "player", -1  ,#name, "You must reach at least LV90 to enter Shadow Manor." )
					return
				endif
				if $lasttime == $time
					BC( "dialogbox", "player", -1 , #name,"You have already entered Shadow Manor today!" )
					return
				endif
			endif
			
			if $Mem4 != -1
				#name = GetPlayerInfo( $Mem4 , "name" )
				$lv = GetPlayerInfo( $Mem4 , "level" )
				$lasttime = GetPlayerVar( $Mem4 , 3966 )
				if $lv < 90
					BC( "dialogbox", "player",-1 ,#name, "You must reach at least LV90 to enter Shadow Manor." )
					return
				endif
				if $lasttime == $time
					BC( "dialogbox", "player", -1 , #name,"You have already entered Shadow Manor today!" )
					return
				endif
			endif
			
			if $Mem5 != -1
				#name = GetPlayerInfo( $Mem5 , "name" )
				$lv = GetPlayerInfo( $Mem5 , "level" )
				$lasttime = GetPlayerVar( $Mem5 , 3966 )
				if $lv < 90
					BC( "dialogbox", "player", -1 ,#name, "You must reach at least LV90 to enter Shadow Manor." )
					return
				endif
				if $lasttime == $time
					BC( "dialogbox", "player", -1 , #name,"You have already entered Shadow Manor today!" )
					return
				endif
			endif
			
			if $Mem6 != -1
				#name = GetPlayerInfo( $Mem6 , "name" )
				$lv = GetPlayerInfo( $Mem6 , "level" )
				$lasttime = GetPlayerVar( $Mem6 , 3966 )
				if $lv < 90
					BC( "dialogbox", "player", -1 ,#name, "You must reach at least LV90 to enter Shadow Manor." )
					return
				endif
				if $lasttime == $time
					BC( "dialogbox", "player", -1 , #name,"You have already entered Shadow Manor today!" )
					return
				endif
			endif
			
	//----------??????------------------------------------------------------------------------------
			$a = 0
			if $Mem1 != -1
				$lv = GetPlayerInfo( $Mem1 , "level" )
				$a = $lv
			endif
			if $Mem2 != -1
				$lv = GetPlayerInfo( $Mem2 , "level" )
				$a = $a + $lv
			endif
			if $Mem3 != -1
				$lv = GetPlayerInfo( $Mem3 , "level" )
				$a = $a + $lv
			endif
			if $Mem4 != -1
				$lv = GetPlayerInfo( $Mem4 , "level" )
				$a = $a + $lv
			endif
			if $Mem5 != -1
				$lv = GetPlayerInfo( $Mem5 , "level" )
				$a = $a + $lv
			endif
			if $Mem6 != -1
				$lv = GetPlayerInfo( $Mem6 , "level" )
				$a = $a + $lv
			endif
			$team_level = $a / $TeamCount
			
	//------?????--????????,??,??????????????????,BOSS???--------------------------------
			
			$succeed = FlyToEctype( -1 , 258 , 79, 117 )
			if $succeed > 0
				SetPlayerActLog(-1,29,1)
				$ectype_id = GetEctypeID( -1 , 258 )
				$ectype_uid = GetEctypeUniqueID( -1 , 258 )
				SetPlayerVar( -1 , 3966 , $time )
				StartEctypeTimer( -1 , 258 , 1 )
				SetEctypeVar( $ectype_id , 110 , $team_level )
				SetPlayerVar( -1 , 3817 , $ectype_uid )
				SetPlayerVar( -1 , 3979 , 0 ) 
				SetPlayerVar( -1 , 3980 , 0 )
				BC( "screen" , "player" , -1 , "Welcome to Shadow Manor!" )
				//??????-START
				$TJ_join_number = GetGlobalVar(901)
				$TJ_join_number = $TJ_join_number + $TeamCount
				SetGlobalVar(901 , $TJ_join_number)
				//??????-END
			else
				BC( "dialogbox", "player", -1, "Shadow Manor is full, please try later or change realms!" )
				return
			endif
			
	//-------??????,??????----------------------------
			if $Mem1 != -1		
				if $Mem1 != $headerID
					$succeed = FlyToEctype( $Mem1 , 258 , 79, 117 )
					if $succeed > 0
						SetPlayerActLog($Mem1,29,1)
						$ectype_uid = GetEctypeUniqueID( $Mem1 , 258 )
						SetPlayerVar(  $Mem1 , 3817 , $ectype_uid )
						SetPlayerVar( $Mem1 , 3966 , $time )
						SetPlayerVar( $Mem1 , 3979 , 0 )
						SetPlayerVar( $Mem1 , 3980 , 0 ) 
						BC( "screen", "player", $Mem1 , "Welcome to Shadow Manor!" )
					else
						BC( "dialogbox", "player", $Mem1 , "Failed to enter Shadow Manor. Error number: " , $succeed )
					endif
				endif
			endif
			
			if $Mem2 != -1		
				if $Mem2 != $headerID
					$succeed = FlyToEctype( $Mem2 , 258 , 79, 117 )
					if $succeed > 0
						SetPlayerActLog($Mem2,29,1)
						$ectype_uid = GetEctypeUniqueID( $Mem2 , 258 )
						SetPlayerVar( $Mem2 , 3817 , $ectype_uid )
						SetPlayerVar( $Mem2 , 3966 , $time )
						SetPlayerVar( $Mem2 , 3979 , 0 )
						SetPlayerVar( $Mem2 , 3980 , 0 ) 
						BC( "screen", "player", $Mem2 , "Welcome to Shadow Manor!" )
					else
						BC( "dialogbox", "player", $Mem2 , "Failed to enter Shadow Manor. Error number: " , $succeed )
					endif
				endif
			endif
			
			if $Mem3 != -1		
				if $Mem3 != $headerID
					$succeed = FlyToEctype( $Mem3 , 258 , 79, 117 )
					if $succeed > 0
						SetPlayerActLog($Mem3,29,1)
						$ectype_uid = GetEctypeUniqueID( $Mem3 , 258 )
						SetPlayerVar( $Mem3 , 3817 , $ectype_uid )
						SetPlayerVar( $Mem3 , 3966 , $time )
						SetPlayerVar( $Mem3 , 3979 , 0 )
						SetPlayerVar( $Mem3 , 3980 , 0 ) 
						BC( "screen", "player", $Mem3 , "Welcome to Shadow Manor!" )
					else
						BC( "dialogbox", "player", $Mem3 , "Failed to enter Shadow Manor. Error number: " , $succeed )
					endif
				endif
			endif
			
			if $Mem4 != -1		
				if $Mem4 != $headerID
					$succeed = FlyToEctype( $Mem4 ,  258 , 79, 117 )
					if $succeed > 0
						SetPlayerActLog($Mem4,29,1)
						$ectype_uid = GetEctypeUniqueID( $Mem4 , 258 )
						SetPlayerVar( $Mem4 , 3817 , $ectype_uid )
						SetPlayerVar( $Mem4 , 3966 , $time )
						SetPlayerVar( $Mem4 , 3979 , 0 )
						SetPlayerVar( $Mem4 , 3980 , 0 ) 
						BC( "screen", "player", $Mem4 , "Welcome to Shadow Manor!" )
					else
						BC( "dialogbox", "player", $Mem4 , "Failed to enter Shadow Manor. Error number: " , $succeed )
					endif
				endif
			endif
			
			if $Mem5 != -1		
				if $Mem5 != $headerID
					$succeed = FlyToEctype( $Mem5 ,  258 , 79, 117 )
					if $succeed > 0
						SetPlayerActLog($Mem5,29,1)
						$ectype_uid = GetEctypeUniqueID( $Mem5 , 258 )
						SetPlayerVar( $Mem5 , 3817 , $ectype_uid )
						SetPlayerVar( $Mem5 , 3966 , $time )
						SetPlayerVar( $Mem5 , 3979 , 0 )
						SetPlayerVar( $Mem5 , 3980 , 0 ) 
						BC( "screen", "player", $Mem5 , "Welcome to Shadow Manor!" )
					else
						BC( "dialogbox", "player", $Mem5 , "Failed to enter Shadow Manor. Error number: " , $succeed )
					endif
				endif
			endif
			
			if $Mem6 != -1		
				if $Mem6 != $headerID
					$succeed = FlyToEctype( $Mem6 , 258 , 79, 117 )
					if $succeed > 0
						SetPlayerActLog($Mem6,29,1)
						$ectype_uid = GetEctypeUniqueID( $Mem6 , 258 )
						SetPlayerVar( $Mem6 , 3817 , $ectype_uid )
						SetPlayerVar( $Mem6 , 3966 , $time )
						SetPlayerVar( $Mem6 , 3979 , 0 ) 
						SetPlayerVar( $Mem6 , 3980 , 0 )
						BC( "screen", "player", $Mem6 , "Welcome to Shadow Manor!" )
					else
						BC( "dialogbox", "player", $Mem6 , "Failed to enter Shadow Manor. Error number: " , $succeed )
					endif
				endif
			endif
	
			
			
			
	}
	
	
	
	//3~6???
	function OnOption1(){
		
		$ectype_id = GetEctypeID( -1 , 258 )
		if $ectype_id > 0
			return
		endif
		
		$time = GetSystemTime( "yday" )
		$line = GetServerLineID()
		$lv = GetPlayerInfo( -1 , "level" )
		$week = GetSystemTime( "week" )
	//--------???-----------------------
		$line = GetServerLineID()
		if $line != 3
			if $line != 4
				BC( "dialogbox", "player", -1, "Shadow Manor can only be accessed from realms 3 and 4." )
				return
			endif
		endif
		if $week != 4
			if $week != 0
				BC( "dialogbox", "player", -1, "Shadow Manor can only be accessed on Thursday and Sunday." )
				return
			endif
		endif
		if $lv < 90
			BC( "dialogbox", "player", -1, "You must reach at least LV90 to enter Shadow Manor." )
			return
		endif
		$lasttime = GetPlayerVar( -1 , 3966 )
		if $lasttime == $time
			BC( "dialogbox", "player", -1 ,"You have already entered Shadow Manor today!" )
			return
		endif
	//------------------------------------
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
			
		$TeamCount = GetTeamMemberCount( -1 )
		if $TeamCount < 3
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
			$lasttime = GetPlayerVar( $Mem1 , 3966 )
			if $lv < 90
				BC( "dialogbox", "player", -1 ,#name, "You must reach at least LV90 to enter Shadow Manor." )
				return
			endif
			if $lasttime == $time
				BC( "dialogbox", "player",-1, #name,"You have already entered Shadow Manor today!" )
				return
			endif
		endif
			
		if $Mem2 != -1
			#name = GetPlayerInfo( $Mem2 , "name" )
			$lv = GetPlayerInfo( $Mem2 , "level" )
			$lasttime = GetPlayerVar( $Mem2 , 3966 )
			if $lv < 90
				BC( "dialogbox", "player", -1 ,#name, "You must reach at least LV90 to enter Shadow Manor." )
				return
			endif
			if $lasttime == $time
				BC( "dialogbox", "player", -1 , #name,"You have already entered Shadow Manor today!" )
				return
			endif
		endif
			
		if $Mem3 != -1
			#name = GetPlayerInfo( $Mem3 , "name" )
			$lv = GetPlayerInfo( $Mem3 , "level" )
			$lasttime = GetPlayerVar( $Mem3 , 3966 )
			if $lv < 90
				BC( "dialogbox", "player", -1 ,#name, "You must reach at least LV90 to enter Shadow Manor." )
				return
			endif
			if $lasttime == $time
				BC( "dialogbox", "player", -1 , #name,"You have already entered Shadow Manor today!" )
				return
			endif
		endif
			
		if $Mem4 != -1
			#name = GetPlayerInfo( $Mem4 , "name" )
			$lv = GetPlayerInfo( $Mem4 , "level" )
			$lasttime = GetPlayerVar( $Mem4 , 3966 )
			if $lv < 90
				BC( "dialogbox", "player", -1 ,#name, "You must reach at least LV90 to enter Shadow Manor." )
				return
			endif
			if $lasttime == $time
				BC( "dialogbox", "player", -1 , #name,"You have already entered Shadow Manor today!" )
				return
			endif
		endif
			
		if $Mem5 != -1
			#name = GetPlayerInfo( $Mem5 , "name" )
			$lv = GetPlayerInfo( $Mem5 , "level" )
			$lasttime = GetPlayerVar( $Mem5 , 3966 )
			if $lv < 90
				BC( "dialogbox", "player", -1 ,#name, "You must reach at least LV90 to enter Shadow Manor." )
				return
			endif
			if $lasttime == $time
				BC( "dialogbox", "player", -1 , #name,"You have already entered Shadow Manor today!" )
				return
			endif
		endif
			
		if $Mem6 != -1
			#name = GetPlayerInfo( $Mem6 , "name" )
			$lv = GetPlayerInfo( $Mem6 , "level" )
			$lasttime = GetPlayerVar( $Mem6 , 3966 )
			if $lv < 90
				BC( "dialogbox", "player", -1 ,#name, "You must reach at least LV90 to enter Shadow Manor." )
				return
			endif
			if $lasttime == $time
				BC( "dialogbox", "player", -1 , #name,"You have already entered Shadow Manor today!" )
				return
			endif
		endif
			
	//----------??????------------------------------------------------------------------------------
			$a = 0
			if $Mem1 != -1
				$lv = GetPlayerInfo( $Mem1 , "level" )
				$a = $lv
			endif
			if $Mem2 != -1
				$lv = GetPlayerInfo( $Mem2 , "level" )
				$a = $a + $lv
			endif
			if $Mem3 != -1
				$lv = GetPlayerInfo( $Mem3 , "level" )
				$a = $a + $lv
			endif
			if $Mem4 != -1
				$lv = GetPlayerInfo( $Mem4 , "level" )
				$a = $a + $lv
			endif
			if $Mem5 != -1
				$lv = GetPlayerInfo( $Mem5 , "level" )
				$a = $a + $lv
			endif
			if $Mem6 != -1
				$lv = GetPlayerInfo( $Mem6 , "level" )
				$a = $a + $lv
			endif
			$team_level = $a / $TeamCount
			
	//------?????--????????,??,??????????????????,BOSS???--------------------------------
			
			$succeed = FlyToEctype( -1 , 258 , 79, 117 )
			if $succeed > 0
				SetPlayerActLog(-1,29,2)
				$ectype_id = GetEctypeID( -1 , 258 )
				$ectype_uid = GetEctypeUniqueID( -1 , 258 )
				SetPlayerVar( -1 , 3966 , $time )
				StartEctypeTimer( -1 , 258 , 1 )
				SetEctypeVar( $ectype_id , 110 , $team_level )
				SetEctypeVar( $ectype_id , 111 , 1 )
				SetPlayerVar( -1 , 3817 , $ectype_uid ) 
				SetPlayerVar( -1 , 3979 , 0 ) 
				SetPlayerVar( -1 , 3980 , 0 )
				BC( "screen" , "player" , -1 , "Welcome to Shadow Manor!" )
				//??????-START
				$TJ_join_number = GetGlobalVar(901)
				$TJ_join_number = $TJ_join_number + $TeamCount
				SetGlobalVar(901 , $TJ_join_number)
				//??????-END
			else
				BC( "dialogbox", "player", -1, "Shadow Manor is full, please try later or change realms!" )
				return
			endif
			
	//-------??????,??????----------------------------
			if $Mem1 != -1		
				if $Mem1 != $headerID
					$succeed = FlyToEctype( $Mem1 , 258 , 79, 117 )
					if $succeed > 0
						SetPlayerActLog($Mem1,29,2)
						$ectype_uid = GetEctypeUniqueID( $Mem1 , 258 )
						SetPlayerVar(  $Mem1 , 3817 , $ectype_uid )
						SetPlayerVar( $Mem1 , 3966 , $time )
						SetPlayerVar( $Mem1 , 3979 , 0 ) 
						SetPlayerVar( $Mem1 , 3980 , 0 )
						BC( "screen", "player", $Mem1 , "Welcome to Shadow Manor!" )
					else
						BC( "dialogbox", "player", $Mem1 , "Failed to enter Shadow Manor. Error number: " , $succeed )
					endif
				endif
			endif
			
			if $Mem2 != -1		
				if $Mem2 != $headerID
					$succeed = FlyToEctype( $Mem2 , 258 , 79, 117 )
					if $succeed > 0
						SetPlayerActLog($Mem2,29,2)
						$ectype_uid = GetEctypeUniqueID( $Mem2 , 258 )
						SetPlayerVar( $Mem2 , 3817 , $ectype_uid )
						SetPlayerVar( $Mem2 , 3966 , $time )
						SetPlayerVar( $Mem2 , 3979 , 0 ) 
						SetPlayerVar( $Mem2 , 3980 , 0 )
						BC( "screen", "player", $Mem2 , "Welcome to Shadow Manor!" )
					else
						BC( "dialogbox", "player", $Mem2 , "Failed to enter Shadow Manor. Error number: " , $succeed )
					endif
				endif
			endif
			
			if $Mem3 != -1		
				if $Mem3 != $headerID
					$succeed = FlyToEctype( $Mem3 , 258 , 79, 117 )
					if $succeed > 0
						SetPlayerActLog($Mem3,29,2)
						$ectype_uid = GetEctypeUniqueID( $Mem3 , 258 )
						SetPlayerVar( $Mem3 , 3817 , $ectype_uid )
						SetPlayerVar( $Mem3 , 3966 , $time )
						SetPlayerVar( $Mem3 , 3979 , 0 ) 
						SetPlayerVar( $Mem3 , 3980 , 0 )
						BC( "screen", "player", $Mem3 , "Welcome to Shadow Manor!" )
					else
						BC( "dialogbox", "player", $Mem3 , "Failed to enter Shadow Manor. Error number: " , $succeed )
					endif
				endif
			endif
			
			if $Mem4 != -1		
				if $Mem4 != $headerID
					$succeed = FlyToEctype( $Mem4 ,  258 , 79, 117 )
					if $succeed > 0
						SetPlayerActLog($Mem4,29,2)
						$ectype_uid = GetEctypeUniqueID( $Mem4 , 258 )
						SetPlayerVar( $Mem4 , 3817 , $ectype_uid )
						SetPlayerVar( $Mem4 , 3966 , $time )
						SetPlayerVar( $Mem4 , 3979 , 0 ) 
						SetPlayerVar( $Mem4 , 3980 , 0 )
						BC( "screen", "player", $Mem4 , "Welcome to Shadow Manor!" )
					else
						BC( "dialogbox", "player", $Mem4 , "Failed to enter Shadow Manor. Error number: " , $succeed )
					endif
				endif
			endif
			
			if $Mem5 != -1		
				if $Mem5 != $headerID
					$succeed = FlyToEctype( $Mem5 ,  258 , 79, 117 )
					if $succeed > 0
						SetPlayerActLog($Mem5,29,2)
						$ectype_uid = GetEctypeUniqueID( $Mem5 , 258 )
						SetPlayerVar( $Mem5 , 3817 , $ectype_uid )
						SetPlayerVar( $Mem5 , 3966 , $time )
						SetPlayerVar( $Mem5 , 3979 , 0 ) 
						SetPlayerVar( $Mem5 , 3980 , 0 )
						BC( "screen", "player", $Mem5 , "Welcome to Shadow Manor!" )
					else
						BC( "dialogbox", "player", $Mem5 , "Failed to enter Shadow Manor. Error number: " , $succeed )
					endif
				endif
			endif
			
			if $Mem6 != -1		
				if $Mem6 != $headerID
					$succeed = FlyToEctype( $Mem6 , 258 , 79, 117 )
					if $succeed > 0
						SetPlayerActLog($Mem6,29,2)
						$ectype_uid = GetEctypeUniqueID( $Mem6 , 258 )
						SetPlayerVar( $Mem6 , 3817 , $ectype_uid )
						SetPlayerVar( $Mem6 , 3966 , $time )
						SetPlayerVar( $Mem6 , 3979 , 0 ) 
						SetPlayerVar( $Mem6 , 3980 , 0 )
						BC( "screen", "player", $Mem6 , "Welcome to Shadow Manor!" )
					else
						BC( "dialogbox", "player", $Mem6 , "Failed to enter Shadow Manor. Error number: " , $succeed )
					endif
				endif
			endif
			
		endif
			
			
			
	}
	
	//-------????????-----------------
	function OnOption2(){
		
		$lv = GetPlayerInfo( -1 , "level" )
		if $lv < 90
			BC( "dialogbox", "player", -1, "You must reach at least LV90 to enter Shadow Manor." )
			return
		endif
		$ectype_id = GetEctypeID( -1 , 258 )
		if $ectype_id < 0
			return
		endif
		$ectype_id = GetEctypeID( -1 , 258 )
		$ectype_uid = GetEctypeUniqueID( -1 , 258 )
		$player_count = GetMapPlayerCount( $ectype_id )
		$player_uid = GetPlayerVar( -1 , 3817  )
		if $player_count >= 6
			BC( "dialogbox", "player", -1, "There are 6 people in the Shadow Manor instance, it is full!" )
			return
		endif
//--------??????,??????,??????,??????---------
//--------?????????---------
		if $ectype_uid == $player_uid
			$result = FlyToEctype( -1 , 258 , 79, 117 )
			if $result > 0
				BC( "screen", "player", -1, "Welcome back to Shadow Manor." )
			else
				BC( "dialogbox", "player", -1 , "An unknown error occurred while teleporting to Cavern of Trials. Error code:" , $result )
			endif
		else
			BC( "dialogbox", "player", -1 , "You do not belong to this instance any more." )
		endif
		
	
	}
	
