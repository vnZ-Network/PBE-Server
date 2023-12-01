
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/2/3
	//		Author:???
	//		TaskName:Swb-Mjmy-Npc-364.s
	//		TaskID:  
	//****************************************

	function OnRequest(){
		
		$Accept = IsTaskAccept( -1 , 200 )
		$Done = IsTaskDone( -1 , 200 )
		if $Accept != 0
			if $Done != 0
				DisableNpcOption(0)
			endif
		endif
		
		$Done = IsTaskDone( -1 , 218 )
		if $Done == 0
			DisableNpcOption(0)
		else
			DisableNpcOption(1)
		endif
		
		$ectype_id = GetEctypeID( -1 , 254 )
		if $ectype_id > 0
			DisableNpcOption(0)
			DisableNpcOption(1)
		else
			DisableNpcOption(2)
			DisableNpcOption(3)
		endif
	
	}
	
	function OnOption0(){
		
		$Accept = IsTaskAccept( -1 , 200 )
		$Done = IsTaskDone( -1 , 200 )
		if $Accept != 0
			if $Done != 0
				return
			endif
		endif
		
		$a = IsPlayerInTeam(-1)
		if $a == 0
			BC( "dialogbox", "player", -1, "This instance is only for a player in single mode." )
			return
		endif
		
		$succeed = FlyToEctype( -1 , 254 , 48, 84 )
		if $succeed > 0
			$ectype_id = GetEctypeID( -1 , 254 )
			$ectype_uid = GetEctypeUniqueID( -1 , 254 )
			
			SetPlayerVar( -1 , 3818 , $ectype_uid )
			
			$a = GetPlayerVar( -1 , 54  )
			SetEctypeVar( -1 , 23 , $a )
			
			$b = GetPlayerVar( -1 , 55 )
			SetEctypeVar( -1 , 24 , $b )
				
			$c = GetPlayerVar( -1 , 56 )
			SetEctypeVar( -1 , 25 , $c )
				
			$d = GetPlayerVar( -1 , 57 )
			SetEctypeVar( -1 , 26 , $d )
				
			$e = GetPlayerVar( -1 , 58 )
			SetEctypeVar( -1 , 27 , $e )
				
			$f = GetPlayerVar( -1 , 64 )
			SetEctypeVar( -1 , 28 , $f )
				
			$g = GetPlayerVar( -1 , 69 )
			SetEctypeVar( -1 , 30 , $g )
				
			StartEctypeTimer ( $ectype_id , 1 )
				
			BC( "screen" , "player" , -1 , "You have entered Nightmare Domain instance in single mode." )
		else
			BC( "dialogbox", "player", -1, "Entering Nightmare Domain instance error. Please try later or change realm. Error No.:" , $succeed )
			return
		endif
		
		
	}
	
	function OnOption1(){
		
		
		$team_headerID = GetTeamHeaderID( -1 )
		$player_id = GetPlayerID()
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "Sorry, only the team leader can operate!" )
			return
		endif
		
		$TeamCount = GetTeamMemberCount( -1 )
		$a = IsPlayerInTeam(-1)
		//??????
		if $a == 0
				$size = GetTeamAreaSize(-1)
				//??????????????
				if $size > 10
					BC( "dialogbox", "player", -1, "Your teammates aren't around" )
					return
				//?????????,?????
				else
					//??????
					if $TeamCount < 2
						$Done = IsTaskDone( -1 , 218 )
						if $Done != 0
							BC( "dialogbox", "player", -1, "Can't enter daily instance without finishing present instance quests." )
							return
						endif
						$succeed = FlyToEctype( -1 , 254 , 48, 84 )
						if $succeed > 0
							$ectype_id = GetEctypeID( -1 , 254 )
							$ectype_uid = GetEctypeUniqueID( -1 , 254 )
							SetPlayerVar( -1 , 3818 , $ectype_uid )
							$a = GetPlayerVar( -1 , 54  )
							SetEctypeVar( -1 , 23 , $a )
							
							$b = GetPlayerVar( -1 , 55 )
							SetEctypeVar( -1 , 24 , $b )
								
							$c = GetPlayerVar( -1 , 56 )
							SetEctypeVar( -1 , 25 , $c )
								
							$d = GetPlayerVar( -1 , 57 )
							SetEctypeVar( -1 , 26 , $d )
								
							$e = GetPlayerVar( -1 , 58 )
							SetEctypeVar( -1 , 27 , $e )
								
							$f = GetPlayerVar( -1 , 64 )
							SetEctypeVar( -1 , 28 , $f )
								
							$g = GetPlayerVar( -1 , 69 )
							SetEctypeVar( -1 , 30 , $g )
								
							StartEctypeTimer ( $ectype_id , 1 )
								
							BC( "screen" , "player" , -1 , "You have entered Nightmare Domain instance in single daily mode." )
						else
							BC( "dialogbox", "player", -1, "Entering Nightmare Domain instance error. Please try later or change realm. Error No.:", $succeed )
							return
						endif
					//??????
					else
						$team_headerID = GetTeamHeaderID( -1 )
						$player_id = GetPlayerID()
						if $player_id != $team_headerID
							BC( "dialogbox", "player", -1, "Sorry, only the team leader can lead the team!" )
							return
						endif
						
						$Mem1 = GetTeamMemberID( -1, 0 )
						$Mem2 = GetTeamMemberID( -1, 1 )
						$Mem3 = GetTeamMemberID( -1, 2 )
						$Mem4 = GetTeamMemberID( -1, 3 )
						$Mem5 = GetTeamMemberID( -1, 4 )
						$Mem6 = GetTeamMemberID( -1, 5 )
			
						if $Mem1 != -1
							if $Mem1 != $team_headerID
								$done = IsTaskDone( $Mem1 , 218 )
								if $done != 0
									#name = GetPlayerInfo( $Mem1, "name", )
									BC( "dialogbox", "player", -1, #name , "Can't enter without finishing present instance quests" )
									return
								endif
							endif
						endif
						if $Mem2 != -1
							if $Mem2 != $team_headerID
								$done = IsTaskDone( $Mem2 , 218 )
								if $done != 0
									#name = GetPlayerInfo( $Mem2 , "name", )
									BC( "chat", "player", -1, #name , "Can't enter without finishing present instance quests" )
									return
								endif
							endif
						endif
						if $Mem3 != -1
							if $Mem3 != $team_headerID
								$done = IsTaskDone( $Mem3 , 218 )
								if $done != 0
									#name = GetPlayerInfo( $Mem3 , "name", )
									BC( "dialogbox", "player", -1 , #name , "Can't enter without finishing present instance quests" )
									return
								endif
							endif
						endif
						if $Mem4 != -1
							if $Mem4 != $team_headerID
								$done = IsTaskDone( $Mem4 , 218 )
								if $done != 0
									#name = GetPlayerInfo( $Mem4, "name", )
									BC( "dialogbox", "player", -1, #name , "Can't enter without finishing present instance quests" )
									return
								endif
							endif
						endif
						if $Mem5 != -1
							if $Mem5 != $team_headerID
								$done = IsTaskDone( $Mem5 , 218 )
								if $done != 0
									#name = GetPlayerInfo( $Mem5 , "name", )
									BC( "dialogbox", "player", -1, #name , "Can't enter without finishing present instance quests" )
									return
								endif
							endif
						endif
						if $Mem6 != -1
							if $Mem6 != $team_headerID
								$done = IsTaskDone( $Mem6, 218 )
								if $done != 0
									#name = GetPlayerInfo( $Mem6 , "name", )
									BC( "dialogbox", "player", -1, #name , "Can't enter without finishing present instance quests" )
									return
								endif
							endif
						endif
			
			
						$succeed = FlyToEctype( -1 , 254 , 48, 84 )
						if $succeed > 0
							$ectype_id = GetEctypeID( -1 , 254 )
							$ectype_uid = GetEctypeUniqueID( -1 , 254 )
							SetPlayerVar( -1 , 3818 , $ectype_uid )
							
							$a = GetPlayerVar( -1 , 54  )
							SetEctypeVar( -1 , 23 , $a )
							
							$b = GetPlayerVar( -1 , 55 )
							SetEctypeVar( -1 , 24 , $b )
							
							$c = GetPlayerVar( -1 , 56 )
							SetEctypeVar( -1 , 25 , $c )
							
							$d = GetPlayerVar( -1 , 57 )
							SetEctypeVar( -1 , 26 , $d )
							
							$e = GetPlayerVar( -1 , 58 )
							SetEctypeVar( -1 , 27 , $e )
							
							$f = GetPlayerVar( -1 , 64 )
							SetEctypeVar( -1 , 28 , $f )
							
							$g = GetPlayerVar( -1 , 69 )
							SetEctypeVar( -1 , 30 , $g )
							
							StartEctypeTimer ( $ectype_id , 1 )
							
							BC( "screen" , "player" , -1 , "You have entered Nightmare Domain instance in daily adventure mode." )
						else
							BC( "dialogbox", "player", -1, "Entering to Nightmare Domain instance error, please try later or change realm." )
							return
						endif
					
						if $Mem1 != -1
							if $Mem1 != $team_headerID
								$succeed = FlyToEctype( $Mem1 , 254 , 48, 84 )
								if $succeed > 0
									$ectype_id = GetEctypeID( $Mem1 , 254 )
									$ectype_uid = GetEctypeUniqueID( $Mem1 , 254 )
									SetPlayerVar( $Mem1 , 3818 , $ectype_uid )
									BC( "screen", "player", $Mem1, "You have entered Nightmare Domain instance in multiplayer's daily mode." )
								else
									BC( "dialogbox", "player", $Mem1, "Error, error code:", $succeed )
									return
								endif	
							endif	
						endif
						
						if $Mem2 != -1
							if $Mem2 != $team_headerID
								$succeed = FlyToEctype( $Mem2 , 254 , 48, 84 )
								if $succeed > 0
									$ectype_id = GetEctypeID( $Mem2 , 254 )
									$ectype_uid = GetEctypeUniqueID( $Mem2 , 254 )
									SetPlayerVar( $Mem2 , 3818 , $ectype_uid )
									BC( "screen", "player", $Mem2, "You have entered Nightmare Domain instance in multiplayer's daily mode." )
								else
									BC( "dialogbox", "player", $Mem2, "Error, error code:", $succeed )
									return
								endif	
							endif	
						endif
						
						if $Mem3 != -1
							if $Mem3 != $team_headerID
								$succeed = FlyToEctype( $Mem3 , 254 , 48, 84 )
								if $succeed > 0
									$ectype_id = GetEctypeID( $Mem3 , 254 )
									$ectype_uid = GetEctypeUniqueID( $Mem3 , 254 )
									SetPlayerVar( $Mem3 , 3818 , $ectype_uid )
									BC( "screen", "player", $Mem3, "You have entered Nightmare Domain instance in multiplayer's daily mode." )
								else
									BC( "dialogbox", "player", $Mem3, "Error, error code:", $succeed )
									return
								endif	
							endif	
						endif
						
						if $Mem4 != -1
							if $Mem4 != $team_headerID
								$succeed = FlyToEctype( $Mem4 , 254 , 48, 84 )
								if $succeed > 0
									$ectype_id = GetEctypeID($Mem4 , 254 )
									$ectype_uid = GetEctypeUniqueID( $Mem4 , 254 )
									SetPlayerVar( $Mem4 , 3818 , $ectype_uid )
									BC( "screen", "player", $Mem4, "You have entered Nightmare Domain instance in multiplayer's daily mode." )
								else
									BC( "dialogbox", "player", $Mem4, "Error, error code:", $succeed )
									return
								endif	
							endif	
						endif
						
						if $Mem5 != -1
							if $Mem5 != $team_headerID
								$succeed = FlyToEctype( $Mem5 , 254 , 48, 84 )
								if $succeed > 0
									$ectype_id = GetEctypeID( $Mem5 , 254 )
									$ectype_uid = GetEctypeUniqueID( $Mem5 , 254 )
									SetPlayerVar( $Mem5 , 3818 , $ectype_uid )
									BC( "screen", "player", $Mem5, "You have entered Nightmare Domain instance in multiplayer's daily mode." )
								else
									BC( "dialogbox", "player", $Mem5, "Error, error code:", $succeed )
									return
								endif	
							endif	
						endif
						
						if $Mem6 != -1
							if $Mem6 != $team_headerID
								$succeed = FlyToEctype( $Mem6 , 254 , 48, 84 )
								if $succeed > 0
									$ectype_id = GetEctypeID( $Mem6 , 254 )
									$ectype_uid = GetEctypeUniqueID( $Mem6 , 254 )
									SetPlayerVar( $Mem6 , 3818 , $ectype_uid )
									BC( "screen", "player", $Mem6, "You have entered Nightmare Domain instance in multiplayer's daily mode." )
								else
									BC( "dialogbox", "player", $Mem6, "Error, error code:", $succeed )
									return
								endif	
							endif	
						endif
					endif
				endif
			endif
		//???????,????
		else
			$Done = IsTaskDone( -1 , 218 )
			if $Done != 0
				BC( "dialogbox", "player", -1, "Can't enter daily instance without finishing present instance quests." )
				return
			endif
			$succeed = FlyToEctype( -1 , 254 , 48, 84 )
			if $succeed > 0
				$ectype_id = GetEctypeID( -1 , 254 )
				$ectype_uid = GetEctypeUniqueID( -1 , 254 )
				SetPlayerVar( -1 , 3818 , $ectype_uid )
				$a = GetPlayerVar( -1 , 54  )
				SetEctypeVar( -1 , 23 , $a )
				
				$b = GetPlayerVar( -1 , 55 )
				SetEctypeVar( -1 , 24 , $b )
					
				$c = GetPlayerVar( -1 , 56 )
				SetEctypeVar( -1 , 25 , $c )
					
				$d = GetPlayerVar( -1 , 57 )
				SetEctypeVar( -1 , 26 , $d )
					
				$e = GetPlayerVar( -1 , 58 )
				SetEctypeVar( -1 , 27 , $e )
					
				$f = GetPlayerVar( -1 , 64 )
				SetEctypeVar( -1 , 28 , $f )
					
				$g = GetPlayerVar( -1 , 69 )
				SetEctypeVar( -1 , 30 , $g )
					
				StartEctypeTimer ( $ectype_id , 1 )
					
				BC( "screen" , "player" , -1 , "You have entered Nightmare Domain instance in single daily mode." )
			else
				BC( "dialogbox", "player", -1, "Entering Nightmare Domain instance error. Please try later or change realm. Error No.:", $succeed )
				return
			endif
		endif
		
			
		
	}
	
//-------????????-----------------
	function OnOption2(){
		
		$ectype_id = GetEctypeID( -1 , 254 )
		if $ectype_id < 0
			return
		endif
		$ectype_id = GetEctypeID( -1 , 254 )
		$ectype_uid = GetEctypeUniqueID( -1 , 254 )
		$player_count = GetMapPlayerCount( $ectype_id )
		$player_uid = GetPlayerVar( -1 , 3818  )
		if $player_count >= 6
			BC( "dialogbox", "player", -1, "Present Nightmare Domain is full with 6 people." )
			return
		endif
//--------??????,??????,??????,??????---------
//--------?????????---------
		if $ectype_uid == $player_uid
			$result = FlyToEctype( -1 , 254 , 48, 84 )
			if $result > 0
				BC( "screen", "player", -1, "You have returned to Nightmare Domain instance." )
			else
				BC( "dialogbox", "player", -1 , "An unknown error occurred while teleporting to Cavern of Trials. Error code:" , $result )
			endif
		else
			BC( "dialogbox", "player", -1 , "You do not belong to this instance any more." )
		endif
		
	
	}
	
	//-------????-----------------
	function OnOption3(){
		
		$a = IsPlayerInTeam(-1)
		if $a == 0
			$team_headerID = GetTeamHeaderID( -1 )
			$player_id = GetPlayerID()
			if $player_id != $team_headerID
				BC( "dialogbox", "player", -1, "Sorry, only the team leader can operate!" )
				return
			endif
		endif
		
		$ectype_id = GetEctypeID( -1 , 254 )
		$player_count = GetMapPlayerCount( $ectype_id )
		$team_headerID = GetTeamHeaderID( -1 )
		$player_id = GetPlayerID()
		
		if $ectype_id > 0
			if $player_count > 0
				BC( "dialogbox", "player", -1, "There are players in the Nightmare Domain, it cannot be reset!" )
				return
			else
				BC( "dialogbox", "player", -1, "Reset Nightmare Domain instance successfully" )
				ReleaseEctype ( -1 , 254 )
			endif
		endif
		
	}