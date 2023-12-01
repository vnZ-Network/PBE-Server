	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/12
	//		Author:???
	//		TaskName:NPC-gonghui136.s
	//		TaskID:????????
	//
	//****************************************
	
	
	function OnRequest(){
	
		//???????????????,????
		//$today = GetSystemTime( "yday" )
		//$myday = GetPlayerVar( -1 , 4061 )
		
		//if $today != $myday
		//	DisableNpcOption(0)
		//	return
		//endif
		
		//????????,????
		//$accday = GetPlayerVar( -1 , 4062 )
		
		//if $today == $accday
		//	DisableNpcOption(0)
		//	return
		//endif
		
	
	}
	
	
	function OnOption0(){
		
		$today = GetSystemTime( "yday" )
		$accday = GetPlayerVar( -1 , 4062 )
		
		if $today == $accday
			BC( "dialogbox", "player", -1, "You've already received the Guild Escort quest.")
			return
		endif
		
		
		//??????????????????
		$isok = GetPlayerVar( -1 , 4061 )
		if $isok != $today
			BC( "dialogbox", "player", -1 , "Go finish more quests for Namm!" )
			return
		endif
		
		
		
		//?????
		$gid = GetPlayerInfo( -1 , "guildid" )
	  if $gid == 0
	  	BC( "dialogbox", "player", -1, "You're not in a Guild! Apply at the Guild Administrator.")
	  	return
	  endif
		
		//??
		$level = GetPlayerInfo(-1, "level")
		if $level <= 30
			BC( "dialogbox", "player", -1, "You need to reach at least LV31.")
			return
		endif
		
		
		//??????,????????
		//?????,??????
		
		$teamcount = GetTeamMemberCount( -1 )
		$playerid = GetPlayerID()
		
		
		//???????
		if $teamcount == 1
			
			#name = GetPlayerInfo( -1 , "name" )
			#guildname = GetPlayerInfo( -1 , "guildname" )
			
			//BC( "screen", "player", -1, "GUID:08198000004")
			
			//?????????
			
			$ishave = IsTeamMemberHaveDartTask( $playerid )
			
			if $ishave == -5
				BC( "dialogbox", "player", -1, "Complete the Guild Escort quest first!")
				return
			endif
				
				//????
				CancelTask ( -1 , 2144 )
				CancelTask ( -1 , 2145 )
				CancelTask ( -1 , 2146 )
				CancelTask ( -1 , 2147 )
				CancelTask ( -1 , 2148 )					
				CancelTask ( -1 , 2149 )
				CancelTask ( -1 , 2152 )
				CancelTask ( -1 , 2153 )
					
				
				//??????
				//????
				//2144.2145
				//2146.2147
				//2148.2149
				//2152.2153
				
				$random = RandomNumber( 0 , 99 )
				
					//????
				if $random >= 0
					if $random < 50
						AcceptTask( -1 , 2144 )
						AddLevelDart( -1 , 32183 , 1 , 1 , $level , 74 )
						SetPlayerActLog(-1,7,10)
						BC( "screen", "guild", $gid , "Warren takes a long hard look at the guild " , #guildname , "s " , #name , ", and sends them off with a caravan of much-needed supplies.")
						BC( "chat", "guild", $gid , "Warren takes a long hard look at the guild " , #guildname , "s " , #name , ", and sends them off with a caravan of much-needed supplies.")
					endif
				endif
					
				if $random >= 50
					if $random < 80
						AcceptTask( -1 , 2146 )
						AddLevelDart( -1 , 32184 , 1 , 1 , $level , 74 )
						SetPlayerActLog(-1,7,11)
						BC( "screen", "guild", $gid , "Warren's eye is attracted to the guild " , #guildname , "s " , #name , ", so he gives them an important delivery task.")
						BC( "chat", "guild", $gid , "Warren's eye is attracted to the guild " , #guildname , "s " , #name , ", so he gives them an important delivery task.")
					endif
				endif
					
				if $random >= 80
					if $random < 100
						AcceptTask( -1 , 2148 )
						AddLevelDart( -1 , 32185 , 1 , 1 , $level , 74 )
						SetPlayerActLog(-1,7,12)
						BC( "screen", "server", -1 , "Only the strongest warriors can be trusted to complete the Expedition Union's toughest quests, and guild " , #guildname , "s " , #name , " is one such hero!")
						BC( "chat", "server", -1 , "Only the strongest warriors can be trusted to complete the Expedition Union's toughest quests, and guild " , #guildname , "s " , #name , " is one such hero!")
					endif
				endif
					
				if $random >= 100
					if $random < 110
						AcceptTask( -1 , 2152 )
						AddLevelDart( -1 , 32186 , 1 , 1 , $level , 74 )
						SetPlayerActLog(-1,7,13)
						BC( "screen", "servergroup", -1 , ">>>>>>" , #guildname , "s " , #name , " has impressed the Expedition Union successfully. They have been trusted with an Escort Quest.")
						BC( "chat", "servergroup", -1 , ">>>>>>" , #guildname , "s " , #name , " has impressed the Expedition Union successfully. They have been trusted with an Escort Quest.")
					endif
				endif
				
				//????????????
				SetPlayerVar( -1 , 4062 , $today )

			
		//????????
		else
			
			//BC( "screen", "player", -1, "GUID:08198000030")
			
			
			//???????????
			$headerID = GetTeamHeaderID( -1 )
			if $headerID != $playerid
				BC( "dialogbox", "player", -1, "Only the Party Leader can begin the Guild Escort Quest!")
				return
			endif
			
			
			//??????
			$size = GetTeamAreaSize(-1)
		
			if $size > 10
				//?????????????
				BC( "dialogbox", "player", -1, "One or more of your party members are too far away." )
				return
			endif
			
			$teamgid = GetPlayerInfo( -1 , "guildid" )
			$alllevel = 0
			
			
			//????????????????????
			$n = 0
			while $n < 6
				$teamplayer_id = GetTeamMemberID( -1 , $n )
				$n = $n + 1
				
				if $teamplayer_id != -1
					
					#name = GetPlayerInfo( $teamplayer_id , "name" )
					#guildname = GetPlayerInfo( $teamplayer_id , "guildname" )
					$level = GetPlayerInfo( $teamplayer_id , "level" )
					$alllevel = $alllevel + $level
					
					//????,??????????,??????????
					//????????????????
					$isacc = GetPlayerVar( $teamplayer_id , 4062 )
					if $isacc == $today
						BC( "dialogbox", "player", -1 , "Sorry, " , #name , ". You've already completed a Guild Escort quest today." )
						return
					endif
					
					//???????
					$ishave = IsTeamMemberHaveDartTask( $teamplayer_id )
			
					if $ishave == -5
						BC( "dialogbox", "player", -1 , #name , "Your Guild Escort quest is already under way!" )
						return
					endif
					
					
					//???????????????
					$guildid = GetPlayerInfo( $teamplayer_id , "guildid" )
					if $guildid != $teamgid
						BC( "dialogbox", "player", -1 , "You can only receive a Guild Escort quest when all members of your party are from the same Guild. The more members, the better the rewards!" )
						return
					endif
					
					
					//??????????????????
					$istalk = GetPlayerVar( $teamplayer_id , 4061 )
					if $istalk != $today
						BC( "dialogbox", "player", -1 , "Sorry, " , #name , ". You still have more of Namm's quests to finish." )
						return
					endif
					
				endif
				
				
			endwhile
			
			
			//????
			//??????????
			
			//????????
			//????????????
			$color = 0
			$random = RandomNumber( 0 , 99 )
			$count = GetTeamMemberCount( -1 )
			
			//2?
			if $count == 2
			
				if $random >= 0
					if $random < 40
						$color = 1
					endif
				endif
				
				if $random >= 40
					if $random < 70
						$color = 2
					endif
				endif
				
				if $random >= 70
					if $random < 95
						$color = 3
					endif
				endif
				
				if $random >= 95
					if $random < 100
						$color = 4
					endif
				endif
				
			endif
			
			//3?
			if $count == 3
			
				if $random >= 0
					if $random < 30
						$color = 1
					endif
				endif
				
				if $random >= 30
					if $random < 62
						$color = 2
					endif
				endif
				
				if $random >= 62
					if $random < 92
						$color = 3
					endif
				endif
				
				if $random >= 92
					if $random < 100
						$color = 4
					endif
				endif
				
			endif
			
			//4?
			if $count == 4
			
				if $random >= 0
					if $random < 20
						$color = 1
					endif
				endif
				
				if $random >= 20
					if $random < 53
						$color = 2
					endif
				endif
				
				if $random >= 53
					if $random < 88
						$color = 3
					endif
				endif
				
				if $random >= 88
					if $random < 100
						$color = 4
					endif
				endif
				
			endif
			
			//5?
			if $count == 5
			
				if $random >= 0
					if $random < 10
						$color = 1
					endif
				endif
				
				if $random >= 10
					if $random < 44
						$color = 2
					endif
				endif
				
				if $random >= 44
					if $random < 84
						$color = 3
					endif
				endif
				
				if $random >= 84
					if $random < 100
						$color = 4
					endif
				endif
				
			endif
			
			//6?
			if $count == 6
				
				if $random >= 0
					if $random < 35
						$color = 2
					endif
				endif
				
				if $random >= 35
					if $random < 80
						$color = 3
					endif
				endif
				
				if $random >= 80
					if $random < 100
						$color = 4
					endif
				endif
				
			endif
			
			//???
			if $count >= 7
				$color = 4
			endif
			
			
			//???
			$n3 = 0
			while $n3 < 6
				$teamplayer_id = GetTeamMemberID( -1 , $n3 )
				$n3 = $n3 + 1

				if $teamplayer_id != -1
					//????
					CancelTask ( $teamplayer_id , 2144 )
					CancelTask ( $teamplayer_id , 2145 )
					CancelTask ( $teamplayer_id , 2146 )
					CancelTask ( $teamplayer_id , 2147 )
					CancelTask ( $teamplayer_id , 2148 )
					CancelTask ( $teamplayer_id , 2149 )
					CancelTask ( $teamplayer_id , 2152 )
					CancelTask ( $teamplayer_id , 2153 )
				endif
				
			endwhile
			
			
			
			//?????
			$arglevel = $alllevel / $teamcount
			
			#name = GetPlayerInfo( -1 , "name" )
			
			
			//?????
			if $color == 1
				AddLevelDart( -1 , 32183 , 2 , 1 , $arglevel , 74 )
				BC( "screen", "guild", $gid , "Warren takes a long hard look at the guild " , #guildname , "s " , #name , ", and sends them off with a caravan of much-needed supplies.")
				BC( "chat", "guild", $gid , "Warren takes a long hard look at the guild " , #guildname , "s " , #name , ", and sends them off with a caravan of much-needed supplies.")
			endif
			if $color == 2
				AddLevelDart( -1 , 32184 , 2 , 1 , $arglevel , 74 )
				BC( "screen", "guild", $gid , "Warren's eye is attracted to the guild " , #guildname , "s " , #name , ", so he gives them an important delivery task.")
				BC( "chat", "guild", $gid , "Warren's eye is attracted to the guild " , #guildname , "s " , #name , ", so he gives them an important delivery task.")
			endif
			if $color == 3
				AddLevelDart( -1 , 32185 , 2 , 1 , $arglevel , 74 )
				BC( "screen", "server", -1 , "Only the strongest warriors can be trusted to complete the Expedition Union's toughest quests, and guild " , #guildname , "s " , #name , " is one such hero!")
				BC( "chat", "server", -1 , "Only the strongest warriors can be trusted to complete the Expedition Union's toughest quests, and guild " , #guildname , "s " , #name , " is one such hero!")
			endif
			if $color == 4
				AddLevelDart( -1 , 32186 , 2 , 1 , $arglevel , 74 )
				BC( "screen", "servergroup", -1 , ">>>>>>" , #guildname , "s " , #name , " has impressed the Expedition Union successfully. They have been trusted with an Escort Quest.")
				BC( "chat", "servergroup", -1 , ">>>>>>" , #guildname , "s " , #name , " has impressed the Expedition Union successfully. They have been trusted with an Escort Quest.")
			endif
			
			
			
			//???,???
			$n2 = 0
			while $n2 < 6
				$teamplayer_id = GetTeamMemberID( -1 , $n2 )
				$n2 = $n2 + 1

				
				if $teamplayer_id != -1
				
					//????
					
						//??
						if $color == 1
							AcceptTask( $teamplayer_id , 2144 )
							SetPlayerActLog(-1,7,10)
						endif
						if $color == 2
							AcceptTask( $teamplayer_id , 2146 )
							SetPlayerActLog(-1,7,11)
						endif
						if $color == 3
							AcceptTask( $teamplayer_id , 2148 )
							SetPlayerActLog(-1,7,12)
						endif
						if $color == 4
							AcceptTask( $teamplayer_id , 2152 )
							SetPlayerActLog(-1,7,13)
						endif
					
					SetPlayerVar( $teamplayer_id , 4062 , $today )
					
					
				endif
				
				
			endwhile
			
		endif
		
		}