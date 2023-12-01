	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/02/24
	//		Author:???
	//		TaskName:Zhenshizhijing-NPC-363.s
	//		TaskID ?????????NPC
	//
	//****************************************
	
	function OnRequest(){
		$ectype_id = GetEctypeID( -1 , 253 )
		$accept = IsTaskAccept( -1 , 183 )
		$done = IsTaskDone( -1 , 183 )
		$done1 = IsTaskDone( -1 , 196 )
		
		if $ectype_id > 0	
				if $done1 == 0
					DisableNpcOption(0)
					DisableNpcOption(1)
				else
					$team_count = GetTeamMemberCount(-1)
					if $team_count < 2
						DisableNpcOption(1)
						DisableNpcOption(2)
						DisableNpcOption(3)
					else
						DisableNpcOption(0)
						DisableNpcOption(1)
					endif
				endif
		else
			if $done1 == 0
				DisableNpcOption(0)
			else
				if $accept != 0
					if $done != 0
						DisableNpcOption(0)
					endif
				endif
				DisableNpcOption(1)
			endif
			DisableNpcOption(2)
			DisableNpcOption(3)
		endif

	}
	
	function OnOption0(){
	
		$accept = IsTaskAccept( -1 , 183 )
		$done = IsTaskDone( -1 , 183 )
		if $accept != 0
			if $done != 0
				return
			endif
		endif
		
		$in_team = IsPlayerInTeam(-1)
		if $in_team == 0
			BC( "dialogbox", "player", -1, "Waking World instance can only be entered under single mode, please leave your team." )
			return
		endif
		
		$team_count = GetTeamMemberCount(-1)
		if $team_count > 1
			BC( "dialogbox", "player", -1, "Waking World instance can only be entered under single mode." )
			return
		endif
		
		$player_id = GetPlayerID()	
		$is_succeed = FlyToEctype( -1, 253, 38, 93 )
		if $is_succeed > 0
			$ectype_id = GetEctypeID( -1 , 253 )
			$player_id = GetPlayerID()
			SetEctypeVar( $ectype_id, 119, $player_id )
			BC( "screen", "player", -1, "You entered Waking World instance." )
		else
			BC( "dialogbox", "player",  -1, "Error, please try later or switch realm!" )
			return
		endif	
	
	}

	//????
	function OnOption1(){
	
		$done = IsTaskDone( -1 , 196 )
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
				BC( "dialogbox", "player", -1, "Your teammates aren't around" )
				return
			else
				if $team_count < 2	
					$is_succeed = FlyToEctype( -1, 253, 38, 93 )
					$ectype_id = GetEctypeID( $team_headerID , 253 )
					if $is_succeed > 0
						$ectype_id = GetEctypeID( -1 , 253 )
						$player_id = GetPlayerID()
						SetEctypeVar( $ectype_id, 119, $player_id )
						BC( "screen", "player", -1, "You entered daily Waking World instance." )
					else
						//BC( "dialogbox", "player",  -1, "GUID:04516000006" )
						BC( "dialogbox", "player",  -1, "Present instance is still open, choose return to go back to daily instance Waking World; Please choose reset to enter a new instance, then choose enter to enter the new instance." )
						return
					endif
				else
					$ectype_id = GetEctypeID( $team_headerID , 253 )
					if $ectype_id > 0
						BC( "dialogbox", "player",  -1, "Present instance is still open, choose return to go back to daily instance Waking World; Please choose reset to enter a new instance, then choose enter to enter the new instance." )
						return
					else
						call Fly()
					endif
					
				endif
			endif
		else
			BC( "dialogbox", "player", -1, "Daily instance Waking World can only be entered in a party. Please set up a party first." )
			return
		endif
		
	}
	
	//??
	function OnOption2(){
	
		$done = IsTaskDone( -1 , 196 )
		if $done != 0
			BC( "dialogbox", "player", -1, #name , "Can't enter without finishing present instance quests" )
			return
		endif

		$ectype_id = GetEctypeID( -1, 253 )
		$player_count = GetMapPlayerCount( $ectype_id )
		
		if $player_count >= 6
			BC( "dialogbox", "player", -1, "Present Waking World is full with 6 people." )
			return
		endif
		
		if $ectype_id > 0
			$is_succeed = FlyToEctype( -1, 253, 38, 93 )
			if $is_succeed > 0
				BC( "screen", "player", -1, "You have returned to Waking World instance." )
			endif
		else
			BC( "dialogbox", "player", -1 , "You do not belong to this instance any more." )
			return
		endif
		
	}
	
	//??
	function OnOption3(){
		
		$team_count = GetTeamMemberCount( -1 )
		$team_headerID = GetTeamHeaderID( -1 )
		$player_id = GetPlayerID()
		
		if $team_count < 2
			$ectype_id = GetEctypeID( -1 , 253 )
			if $ectype_id > 0
				$revalue = ReleaseEctype(-1 , 253)
				if $revalue == 0
					BC( "dialogbox", "player", -1, "Waking World instance has been reset successfully!" )
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
			
			$ectype_id = GetEctypeID( -1 , 253 )
			if $ectype_id > 0
				$player_number = GetMapPlayerCount( $ectype_id )
				if $player_number != 0
					BC( "dialogbox", "player", -1, "Unable to reset the instance! Party members are still inside." )
					return
				endif
				
				$revalue = ReleaseEctype(-1 , 253)
				if $revalue == 0
					BC( "screen", "team", $team_headerID, "Waking World instance has been reset successfully!" )
					BC( "dialogbox", "player", -1, "Waking World instance has been reset successfully!" )
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
			BC( "dialogbox", "player", -1, "Only the team leader can choose to enter Waking World under multiplayer's daily mode!" )
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
				$done = IsTaskDone( $teamplayer1_id, 196 )
				if $done != 0
					#name = GetPlayerInfo( $teamplayer1_id, "name", )
					BC( "dialogbox", "player", -1, #name , "Can't enter without finishing present instance quests" )
					return
				endif
			endif
		endif
		
		if $teamplayer2_id != -1
			if $teamplayer2_id != $team_headerID
				$done = IsTaskDone( $teamplayer2_id, 196 )
				if $done != 0
					#name = GetPlayerInfo( $teamplayer2_id, "name", )
					BC( "dialogbox", "player", -1, #name , "Can't enter without finishing present instance quests" )
					return
				endif
			endif
		endif
					
		if $teamplayer3_id != -1
			if $teamplayer3_id != $team_headerID
				$done = IsTaskDone( $teamplayer3_id, 196 )
				if $done != 0
					#name = GetPlayerInfo( $teamplayer3_id, "name", )
					BC( "dialogbox", "player", -1, #name , "Can't enter without finishing present instance quests" )
					return
				endif
			endif
		endif
					
		if $teamplayer4_id != -1
			if $teamplayer4_id != $team_headerID
				$done = IsTaskDone( $teamplayer4_id, 196 )
				if $done != 0
					#name = GetPlayerInfo( $teamplayer4_id, "name", )
					BC( "dialogbox", "player", -1, #name , "Can't enter without finishing present instance quests" )
					return
				endif
			endif
		endif
					
		if $teamplayer5_id != -1
			if $teamplayer5_id != $team_headerID
				$done = IsTaskDone( $teamplayer5_id, 196 )
				if $done != 0
					#name = GetPlayerInfo( $teamplayer5_id, "name", )
					BC( "dialogbox", "player", -1, #name , "Can't enter without finishing present instance quests" )
					return
				endif
			endif
		endif
					
		if $teamplayer6_id != -1
			if $teamplayer6_id != $team_headerID
				$done = IsTaskDone( $teamplayer6_id, 196 )
				if $done != 0
					#name = GetPlayerInfo( $teamplayer6_id, "name", )
					BC( "dialogbox", "player", -1, #name , "Can't enter without finishing present instance quests" )
					return
				endif
			endif
		endif
			
		$ectype_id = GetEctypeID( -1 , 253 )
		if $ectype_id > 0
			ReleaseEctype ( -1 , 253 )
		endif	
		
		$is_succeed = FlyToEctype( -1, 253, 38, 93 )
		if $is_succeed > 0
			$ectype_id = GetEctypeID( -1 , 253 )
			$ectype_uid = GetEctypeUniqueID( -1 , 253 )
			$player_id = GetPlayerID()
			SetEctypeVar( $ectype_id, 119, $player_id )
			BC( "screen" , "player" , $team_headerID, "You have entered enter Waking World in the multiplayer daily mode." )
		else
			BC( "dialogbox", "player", $team_headerID, "Error, please try later or switch realm!" )
			return
		endif
					
		if $teamplayer1_id != -1
			if $teamplayer1_id != $team_headerID
				$is_succeed = FlyToEctype( $teamplayer1_id, 253, 38, 93 )
				if $is_succeed > 0
					BC( "screen", "player", $teamplayer1_id, "You have entered enter Waking World in the multiplayer daily mode." )
				else
					BC( "chat", "player", $teamplayer1_id, "Error, error code:", $is_succeed )
					return
				endif	
			endif	
		endif
					
		if $teamplayer2_id != -1
			if $teamplayer2_id != $team_headerID
				$is_succeed = FlyToEctype( $teamplayer2_id, 253, 38, 93 )
				if $is_succeed > 0
					BC( "screen", "player", $teamplayer1_id, "You have entered enter Waking World in the multiplayer daily mode." )
				else
					BC( "chat", "player", $teamplayer2_id, "Error, error code:", $is_succeed )
					return
				endif	
			endif	
		endif
					
		if $teamplayer3_id != -1
			if $teamplayer3_id != $team_headerID
				$is_succeed = FlyToEctype( $teamplayer3_id, 253, 38, 93 )
				if $is_succeed > 0
					BC( "screen", "player", $teamplayer1_id, "You have entered enter Waking World in the multiplayer daily mode." )
				else
					BC( "chat", "player", $teamplayer3_id, "Error, error code:", $is_succeed )
					return
				endif	
			endif	
		endif
					
		if $teamplayer4_id != -1
			if $teamplayer4_id != $team_headerID
				$is_succeed = FlyToEctype( $teamplayer4_id, 253, 38, 93 )
				if $is_succeed > 0
					BC( "screen", "player", $teamplayer1_id, "You have entered enter Waking World in the multiplayer daily mode." )
				else
					BC( "chat", "player", $teamplayer4_id, "Error, error code:", $is_succeed )
					return
				endif	
			endif	
		endif
					
		if $teamplayer5_id != -1
			if $teamplayer5_id != $team_headerID
				$is_succeed = FlyToEctype( $teamplayer5_id, 253, 38, 93 )
				if $is_succeed > 0
					BC( "screen", "player", $teamplayer1_id, "You have entered enter Waking World in the multiplayer daily mode." )
				else
					BC( "chat", "player", $teamplayer5_id, "Error, error code:", $is_succeed )
					return
				endif	
			endif	
		endif
					
		if $teamplayer6_id != -1
			if $teamplayer6_id != $team_headerID
				$is_succeed = FlyToEctype( $teamplayer6_id, 253, 38, 93 )
				if $is_succeed > 0
					BC( "screen", "player", $teamplayer1_id, "You have entered enter Waking World in the multiplayer daily mode." )
				else
					BC( "chat", "player", $teamplayer6_id, "Error, error code:", $is_succeed )
					return
				endif	
			endif	
		endif
		
	}