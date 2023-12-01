
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/27
	//		Author:???
	//		TaskName:97-jianzhong-NPC-362.s
	//		TaskID: ?? 
	//
	//****************************************

	//????				255
	//??????????			971
	//???????????????       	3771
	//???????????ID 		3815
	//????????????? 		3410
	
	function OnRequest(){
		
		//?????????????
		$ectype_ID = GetEctypeID( -1 ,255 )
		$team_count = GetTeamMemberCount(-1)
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		
		$ectype_ID = GetEctypeID( -1 ,255 )
		if $ectype_ID > 0
			DisableNpcOption(0)
			DisableNpcOption(1)
		else
			DisableNpcOption(2)
			DisableNpcOption(3)
		endif
		
		//?????????????,??????????
		$IsFinished = IsTaskDone( -1, 239 )
		if $IsFinished > 0
			DisableNpcOption(1)
		else
		//??????,????????
			DisableNpcOption(0)
		endif
		
		//??????97?,??0???
		$Lv = GetPlayerInfo( -1 , "level" )
		if $Lv < 97
			DisableNpcOption(0)
		endif
		
		//??221??? ???????,??0???
		$Accept = IsTaskAccept( -1 , 221 )
		$Done = IsTaskDone( -1 , 221 )
		
		if $Done != 0
			if $Accept != 0
				DisableNpcOption(0)
			endif
		endif	
		
	}
	
	//??????
	function OnOption0(){
		$team_count = GetTeamMemberCount(-1)
		$team_headerID = GetTeamHeaderID(-1)
		$team_size = GetTeamAreaSize(-1)
		$player_id = GetPlayerID()
		$InTeam = IsPlayerInTeam(-1)
		
		//?????
		if $InTeam == 0
			BC( "dialogbox", "player", -1, "Sorry, you can't enter instance under teamwork." )
			return
		endif
			
		//------------------------------------------------------------------------------------------
		//????.?????
		
		$is_succeed = FlyToEctype( -1, 255, 42, 90 )
		
		if $is_succeed > 0
		
			
//			$player_time =  GetPlayerVar( $team_headerID, 3771 )
//			BC( "screen", "player", $team_headerID, "You enter a new Swordgrave instance!" )
//			if $player_time != $today_time
//			
//				SetPlayerVar( $team_headerID, 3771 ,$today_time )
//				SetPlayerVar( $team_headerID , 3410 ,1 )
//					
//				
//			else
//				$player_number =  GetPlayerVar( $team_headerID , 3410 )
//				$player_number = $player_number + 1
//				SetPlayerVar( $team_headerID, 3410, $player_number )
//				
//				
//			endif
			
			SetPlayerVar( -1 , 3815 , $is_succeed )
			
			//??????????--------------------------
			//????ID
			$ectype_ID = GetEctypeID( -1, 255 )
			StartEctypeTimer( -1 , 255, 0 )	
			//??????
			SetEctypeVar( $ectype_ID, 1, 0 )
	
			$IsFinished = GetPlayerVar( -1 , 63 )
			if $IsFinished == 1
//				BC("screen", "map", $ectype_ID, "GUID:04452000002")
				OpenMask( 1 ,$ectype_ID )
			else
				
//				BC("screen", "map", $ectype_ID, "GUID:04452000003")
			endif
			
			$IsFinished1 = GetPlayerVar( -1 , 53 )
			if $IsFinished1 == 1
//				BC("screen", "map", $ectype_ID, "GUID:04452000004")
				OpenMask( 2 ,$ectype_ID )
			else
				
//				BC("screen", "map", $ectype_ID, "GUID:04452000005")
			endif
			
			$TaskDone = IsTaskDone( -1 , 231 )
			if $TaskDone == 0 
//				BC("screen", "map", $ectype_ID, "GUID:04452000006")
				OpenMask( 3 ,$ectype_ID )
				OpenMask( 5 ,$ectype_ID )
			else
				
//				BC("screen", "map", $ectype_ID, "GUID:04452000007")
			endif
			
			//????npc????--------------------------
			$SwordInfo = GetPlayerVar( -1 , 3255 )
			$MoJianInfo = GetPlayerVar( -1 , 52 )
			
			if $SwordInfo == 0
//				BC("screen", "map", $ectype_ID, "GUID:04452000008") 
				//??6???
				DeleteNPC(533, $ectype_ID )
				DeleteNPC(534, $ectype_ID )
				DeleteNPC(535, $ectype_ID )
				DeleteNPC(536, $ectype_ID )
				DeleteNPC(537, $ectype_ID )
				DeleteNPC(538, $ectype_ID )
				
				//??????????
				DeleteNPC(499, $ectype_ID )
				DeleteNPC(506, $ectype_ID )
			endif
					
			
				
			$temp = 0
			if $SwordInfo > 0
				if $SwordInfo < 6
//					BC("screen", "map", $ectype_ID, "GUID:04452000009") 
					//??????????
					DeleteNPC(499, $ectype_ID )
					DeleteNPC(506, $ectype_ID )
					
					$Limit = 6 - $SwordInfo
					while $temp < $Limit
						$NpcNum = 538 - $temp
						//????NPC
						DeleteNPC( $NpcNum, $ectype_ID )
						$temp = $temp + 1
					endwhile
				else
					$Done = IsTaskDone( -1 , 233 )
		
					if $Done == 0
//						BC("screen", "map", $ectype_ID, "GUID:04452000010") 
						DeleteNPC(533, $ectype_ID )
						DeleteNPC(534, $ectype_ID )
						DeleteNPC(535, $ectype_ID )
						DeleteNPC(536, $ectype_ID )
						DeleteNPC(537, $ectype_ID )
						DeleteNPC(538, $ectype_ID )
						DeleteNPC(500, $ectype_ID )
					else
						DeleteNPC(506, $ectype_ID)
					endif	
					
					if $SwordInfo < 7
						DeleteNPC(499, $ectype_ID )
					endif
						
					if $MoJianInfo == 1
						DeleteNPC(506, $ectype_ID)
					endif
					
					$TaskDone = IsTaskDone( -1 , 242 )
					if $TaskDone == 0 
						DeleteNPC(499, $ectype_ID )
					endif
				endif
			endif
			
			BC( "screen" , "player" , -1 , "You entered Swordgrave in single mode." )
			//????npc mask????end--------------------------
			
			//??-START
//			$TJ_join_number = GetGlobalVar(966)
//			$TJ_join_number = $TJ_join_number + $team_count
//			SetGlobalVar(966 , $TJ_join_number)
			//??-END
		else
			BC( "dialogbox", "player", -1, "Please try later or change realm!" )
			return
		endif
		
		
			
	}
	
	//??????????
	function OnOption1(){
		$team_count = GetTeamMemberCount(-1)
		$team_headerID = GetTeamHeaderID(-1)
		$team_size = GetTeamAreaSize(-1)
		$player_id = GetPlayerID()
		$InTeam = IsPlayerInTeam(-1)
		
		//?????
		if $InTeam != 0
			BC( "dialogbox", "player", -1, "Sorry, no entering in single mode. Teamwork only!" )
			return
		endif
		
		if $team_count > 1	
			//????????
			if $player_id != $team_headerID
				BC( "dialogbox", "player", -1, "You are not the party leader." )
				return
			endif
		endif
		
		$size = GetTeamAreaSize( -1 )
		if $size > 10
			//?????????????
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
		$Stop = 0
		//-------------------------------------------------------------------------------------1?
		if $teamplayer1_id != -1
			$player1_time =  GetPlayerVar( $teamplayer1_id, 3771 )
			#name = GetPlayerInfo( $teamplayer1_id, "name")			
			$IsFinished = IsTaskDone( $teamplayer1_id, 238 )
			if $IsFinished > 0
				BC( "dialogbox", "player", -1, #name ,"Can't enter without completing Swordgrave story quest!" )
				$Stop = $Stop + 1
			endif
			
			
			
			//????????????????,???
//			if $player1_time == $today_time
//				//?????????????,??????????????
//				$player1_number =  GetPlayerVar( $teamplayer1_id, 3410 )
//				if $player1_number > 0
//					#name = GetPlayerInfo( $teamplayer1_id, "name", )
//					BC( "chat", "player", -1, #name ,"GUID:04452000017" )
//					$Stop = $Stop + 1
//				endif
//			endif
			
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------2?
		if $teamplayer2_id != -1
			$player2_time =  GetPlayerVar( $teamplayer2_id, 3771 )
			#name = GetPlayerInfo( $teamplayer2_id, "name" )
			$IsFinished = IsTaskDone( $teamplayer2_id, 238 )
			if $IsFinished > 0
				BC( "dialogbox", "player", -1, #name ,"Can't enter without completing Swordgrave story quest!" )
				$Stop = $Stop + 1
			endif
			
			//????????????????,???
//			if $player2_time == $today_time
//				//?????????????,??????????????
//				$player2_number =  GetPlayerVar( $teamplayer2_id, 3410 )
//				if $player2_number > 0
//					#name = GetPlayerInfo( $teamplayer2_id, "name", )
//					BC( "chat", "player", -1, #name ,"GUID:04452000019" )
//					$Stop = $Stop + 1
//				endif
//			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------3?
		if $teamplayer3_id != -1
			$player3_time =  GetPlayerVar( $teamplayer3_id, 3771 )
			#name = GetPlayerInfo( $teamplayer3_id, "name" )
			$IsFinished = IsTaskDone( $teamplayer3_id, 238 )
			if $IsFinished > 0
				BC( "dialogbox", "player", -1, #name ,"Can't enter without completing Swordgrave story quest!" )
				$Stop = $Stop + 1
			endif
			
			//????????????????,???
//			if $player3_time == $today_time
//				//?????????????,??????????????
//				$player3_number =  GetPlayerVar( $teamplayer3_id, 3410 )
//				if $player3_number > 0
//					#name = GetPlayerInfo( $teamplayer3_id, "name", )
//					BC( "chat", "player", -1, #name ,"GUID:04452000021" )
//					$Stop = $Stop + 1
//				endif
//			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------4?
		if $teamplayer4_id != -1
			$player4_time =  GetPlayerVar( $teamplayer4_id, 3771 )
			#name = GetPlayerInfo( $teamplayer4_id, "name" )
			$IsFinished = IsTaskDone( $teamplayer4_id, 238 )
			if $IsFinished > 0
				BC( "dialogbox", "player", -1, #name ,"Can't enter without completing Swordgrave story quest!" )
				$Stop = $Stop + 1
			endif
			
			//????????????????,???
//			if $player4_time == $today_time
//				//?????????????,??????????????
//				$player4_number =  GetPlayerVar( $teamplayer4_id, 3410 )
//				if $player4_number > 0
//					#name = GetPlayerInfo( $teamplayer4_id, "name", )
//					BC( "chat", "player", -1, #name ,"GUID:04452000023" )
//					$Stop = $Stop + 1
//				endif
//			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------5?
		if $teamplayer5_id != -1
			$player5_time =  GetPlayerVar( $teamplayer5_id, 3771 )
			#name = GetPlayerInfo( $teamplayer5_id, "name" )
			$IsFinished = IsTaskDone( $teamplayer5_id, 238 )
			if $IsFinished > 0
				BC( "dialogbox", "player", -1, #name ,"Can't enter without completing Swordgrave story quest!" )
				$Stop = $Stop + 1
			endif
			
			//????????????????,???
//			if $player5_time == $today_time
//				//?????????????,??????????????
//				$player5_number =  GetPlayerVar( $teamplayer5_id, 3410 )
//				if $player5_number > 0
//					#name = GetPlayerInfo( $teamplayer5_id, "name", )
//					BC( "chat", "player", -1, #name ,"GUID:04452000025" )
//					$Stop = $Stop + 1
//				endif
//			endif
		endif
		//------------------------------------------------------------------------------------------
		//-------------------------------------------------------------------------------------6?
		if $teamplayer6_id != -1
			$player6_time =  GetPlayerVar( $teamplayer6_id, 3771 )
			#name = GetPlayerInfo( $teamplayer6_id, "name" )
			$IsFinished = IsTaskDone( $teamplayer5_id, 238 )
			if $IsFinished > 0
				BC( "dialogbox", "player", -1, #name ,"Can't enter without completing Swordgrave story quest!" )
				$Stop = $Stop + 1
			endif
			
			//????????????????,???
//			if $player6_time == $today_time
//				//?????????????,??????????????
//				$player6_number =  GetPlayerVar( $teamplayer6_id, 3410 )
//				if $player6_number > 0
//					#name = GetPlayerInfo( $teamplayer6_id, "name", )
//					BC( "chat", "player", -1, #name ,"GUID:04452000027" )
//					$Stop = $Stop + 1
//				endif
//			endif
		endif

		if $Stop > 0
			BC( "dialogbox", "player", -1, "",$Stop,"members didn't complete Swordgrave story quest, can't enter!" )
			return
		endif
		//------------------------------------------------------------------------------------------
		//????.?????
		
		$is_succeed = FlyToEctype( $team_headerID, 255, 42, 90 )
		
		if $is_succeed > 0
			SetPlayerVar( $team_headerID , 3815 , $is_succeed )
			$player_time =  GetPlayerVar( $team_headerID, 3771 )
			BC( "screen", "player", $team_headerID, "You have entered to a new Swordgrave instance!" )
			if $player_time != $today_time
			
				SetPlayerVar( $team_headerID, 3771 ,$today_time )
				SetPlayerVar( $team_headerID , 3410 ,1 )
					
				
			else
				$player_number =  GetPlayerVar( $team_headerID , 3410 )
				$player_number = $player_number + 1
				SetPlayerVar( $team_headerID, 3410, $player_number )
				
				
			endif
			
			//????????--------------------------
			//????ID
			$ectype_ID = GetEctypeID( $team_headerID, 255 )
			StartEctypeTimer( $team_headerID , 255, 0 )	
			
			//??????
			SetEctypeVar( $ectype_ID, 1, 1 )
			
			DeleteNPC(499, $ectype_ID )
			DeleteNPC(533, $ectype_ID )
			DeleteNPC(534, $ectype_ID )
			DeleteNPC(535, $ectype_ID )
			DeleteNPC(536, $ectype_ID )
			DeleteNPC(537, $ectype_ID )
			DeleteNPC(538, $ectype_ID )
			DeleteNPC(500, $ectype_ID )
			DeleteNPC(506, $ectype_ID )
			
			OpenMask( 1 ,$ectype_ID )
			OpenMask( 2 ,$ectype_ID )
			OpenMask( 3 ,$ectype_ID )
			OpenMask( 5 ,$ectype_ID )
			
			//??-START
			$TJ_join_number = GetGlobalVar(971)
			$TJ_join_number = $TJ_join_number + $team_count
			SetGlobalVar(971 , $TJ_join_number)
			//??-END
		else
			BC( "dialogbox", "player", -1, "Please try later or change realm!" )
			return
		endif
		
		//------------------------------------------------------------------------------------------  1
		if $teamplayer1_id != -1
			if $teamplayer1_id != $team_headerID		
				$is_succeed = FlyToEctype( $teamplayer1_id, 255, 42, 90 )
				if $is_succeed > 0
					SetPlayerVar( $teamplayer1_id , 3815 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer1_id, 3771 )
					BC( "screen", "player", $teamplayer1_id, "You have entered to a new Swordgrave instance!" )
					if $player_time != $today_time			
						SetPlayerVar( $teamplayer1_id, 3771 ,$today_time )
						SetPlayerVar( $teamplayer1_id , 3410 ,1 )				
					else
						$player_number =  GetPlayerVar( $teamplayer1_id , 3410 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer1_id , 3410 ,$player_number )
					endif
				else
					BC( "dialogbox", "player", $teamplayer1_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  2
		if $teamplayer2_id != -1
			if $teamplayer2_id != $team_headerID		
				$is_succeed = FlyToEctype( $teamplayer2_id, 255, 42, 90 )
				if $is_succeed > 0
					SetPlayerVar( $teamplayer2_id , 3815 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer2_id, 3771 )
					BC( "screen", "player", $teamplayer2_id, "You have entered to a new Swordgrave instance!" )
					if $player_time != $today_time				
						SetPlayerVar( $teamplayer2_id, 3771 ,$today_time )
						SetPlayerVar( $teamplayer2_id , 3410 ,1 )				
					else
						$player_number =  GetPlayerVar( $teamplayer2_id , 3410 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer2_id , 3410 ,$player_number )
					endif
				else
					BC( "dialogbox", "player", $teamplayer2_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  3
		if $teamplayer3_id != -1
			if $teamplayer3_id != $team_headerID			
				$is_succeed = FlyToEctype( $teamplayer3_id, 255, 42, 90 )
				if $is_succeed > 0
					SetPlayerVar( $teamplayer3_id , 3815 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer3_id, 3771 )
					BC( "screen", "player", $teamplayer3_id, "You have entered to a new Swordgrave instance!" )
					if $player_time != $today_time				
						SetPlayerVar( $teamplayer3_id, 3771 ,$today_time )
						SetPlayerVar( $teamplayer3_id , 3410 ,1 )				
					else
						$player_number =  GetPlayerVar( $teamplayer3_id , 3410 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer3_id , 3410 ,$player_number )
					endif
				else
					BC( "dialogbox", "player", $teamplayer3_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  4
		if $teamplayer4_id != -1
			if $teamplayer4_id != $team_headerID		
				$is_succeed = FlyToEctype( $teamplayer4_id, 255, 42, 90 )
				if $is_succeed > 0
					SetPlayerVar( $teamplayer4_id , 3815 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer4_id, 3771 )
					BC( "screen", "player", $teamplayer4_id, "You have entered to a new Swordgrave instance!" )
					if $player_time != $today_time				
						SetPlayerVar( $teamplayer4_id, 3771 ,$today_time )
						SetPlayerVar( $teamplayer4_id , 3410 ,1 )		
					else
						$player_number =  GetPlayerVar( $teamplayer4_id , 3410 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer4_id , 3410 ,$player_number )
					endif
				else
					BC( "dialogbox", "player", $teamplayer4_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  5
		if $teamplayer5_id != -1
			if $teamplayer5_id != $team_headerID		
				$is_succeed = FlyToEctype( $teamplayer5_id, 255, 42, 90 )
				if $is_succeed > 0
					SetPlayerVar( $teamplayer5_id , 3815 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer5_id, 3771 )
					BC( "screen", "player", $teamplayer5_id, "You have entered to a new Swordgrave instance!" )
					if $player_time != $today_time					
						SetPlayerVar( $teamplayer5_id, 3771 ,$today_time )
						SetPlayerVar( $teamplayer5_id , 3410 ,1 )				
					else
						$player_number =  GetPlayerVar( $teamplayer5_id , 3410 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer5_id , 3410 ,$player_number )
					endif
				else
					BC( "dialogbox", "player", $teamplayer5_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif
		//------------------------------------------------------------------------------------------  6
		if $teamplayer6_id != -1
			if $teamplayer6_id != $team_headerID		
				$is_succeed = FlyToEctype( $teamplayer6_id, 255, 42, 90 )
				if $is_succeed > 0
					SetPlayerVar( $teamplayer6_id , 3815 , $is_succeed )
					$player_time =  GetPlayerVar( $teamplayer6_id, 3771 )
					BC( "screen", "player", $teamplayer6_id, "You have entered to a new Swordgrave instance!" )
					if $player_time != $today_time					
						SetPlayerVar( $teamplayer6_id, 3771 ,$today_time )
						SetPlayerVar( $teamplayer6_id , 3410 ,1 )					
					else
						$player_number =  GetPlayerVar( $teamplayer6_id , 3410 )
						$player_number = $player_number + 1
						SetPlayerVar( $teamplayer6_id , 3410 ,$player_number )
					endif
				else
					BC( "dialogbox", "player", $teamplayer6_id, "Error, error code:" , $is_succeed )
					return
				endif
			endif
		endif

			
	}
	
	//????????
	function OnOption2(){
		
		$ectype_ID = GetEctypeID( -1, 255 )
		//????ID
		$ectype_UID = GetEctypeUniqueID( -1, 255 )
		$today_time = GetSystemTime( "yday" )
		$player_time =  GetPlayerVar( -1, 3771 )
		$player_number = GetMapPlayerCount( $ectype_ID )
		$Player_UID = GetPlayerVar( -1, 3815 )
		
		if $player_number >= 6
			BC( "dialogbox", "player", -1, "Instance is full." )
			return
		endif
		
		$temp_level = GetPlayerInfo( -1, "level" )
		if $temp_level < 97
			BC( "dialogbox", "player", -1, "Can't enter below level 97!" )
			return
		endif
		
		//-----------------------------------------------------------------------------------
		if $ectype_ID == 0
			BC( "dialogbox", "player", -1, "No instance to return to." )
			return
		endif				
		//-----------------------------------------------------------------------------------
		
		
		//??????
		$ectype_mode = GetEctypeVar( $ectype_id , 1 )
		if $ectype_mode == 0			
			//?????,??????????
			if $Player_UID != $ectype_UID
				BC( "dialogbox", "player", -1, "Sorry, only single mode is allowed in Swordgrave story instance." )
				return
			endif
		else
			//?????,????????????
			if $Player_UID != $ectype_UID
				$IsFinished = IsTaskDone( -1, 238 )
				
				if $IsFinished > 0
					BC( "dialogbox", "player", -1, "Can't enter without completing Swordgrave story quest!" )
					return
				endif
				
			endif	
		endif
		

		$is_succeed = FlyToEctype( -1, 255, 42, 90 )
		if $is_succeed > 0
			//??????
				
			//??????????????
			if $Player_UID == $ectype_UID
				//?????,?????
				BC( "screen", "player", -1, "Back to Swordgrave instance!" )
			else
				//???????????????,????????????,?????????
				BC( "screen", "player", -1, "You enter a new Swordgrave instance!" )
				SetPlayerVar( -1 , 3815 , $ectype_UID )
				if $ectype_mode == 1
					if $player_time != $today_time
						SetPlayerVar( -1 , 3771 ,$today_time )
						SetPlayerVar( -1 , 3410 ,1 )
					else
						$player_number =  GetPlayerVar( -1 , 3410 )
						$player_number = $player_number + 1
						SetPlayerVar( -1 , 3410 ,$player_number )
					endif
				endif
			endif
		else
			BC( "dialogbox", "player", -1, "Failed, please try later or change the realm!" )
			//???????
		endif
		
	}
	
	
	//????
	function OnOption3(){
		
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "Only the party leader can reset the instance." )
			return
		endif
		
		$ectype_ID = GetEctypeID( -1 ,255 )
		$player_number = GetMapPlayerCount( $ectype_ID )
		if $player_number != 0
			BC( "dialogbox", "player", -1, "Unable to reset the instance! Party members are still inside." )
			return
		endif
		
		$revalue = ReleaseEctype( -1 ,255 )
		if $revalue == 0
			BC( "screen", "team", $team_headerID, "Instance is reset!" )
			BC( "dialogbox", "player", -1, "Instance is reset!" )
		else
			BC( "dialogbox", "player", -1, "Failed to reset instance." )
		endif
		
	}
	
	
	