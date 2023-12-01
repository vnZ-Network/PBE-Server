	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/09/05
	//		Author:?? ???
	//		TaskName:HD-liumangxinzhen-NPC1.s
	//		TaskID:????-NPC?????,?????????,???????,??????,????
	//
	//****************************************
	
	//??????
	function OnRequest(){
		
		$time_hour = GetSystemTime( "hour" )
		$time_minute = GetSystemTime( "minute")
		$level = GetPlayerInfo(-1,"level")
		$Line = GetServerLineID()
		$is_line = $Line % 2
		//????????
		if $is_line != 0
			DisableNpcOption(0)
		endif
		//if $time_hour < 20 
		//	if $time_hour > 13
		//		DisableNpcOption(0)
		//	endif
		//endif
		//if $time_hour > 21
		//	DisableNpcOption(0)
	//	endif
		//if $time_hour < 12
		//	DisableNpcOption(0)
		//endif
		//if $time_hour == 12
		//	if $time_minute < 30
		//		DisableNpcOption(0)
		//	endif
		//endif
		//if $time_hour == 20
		//	if $time_minute < 30
		//		DisableNpcOption(0)
		//	endif
		//endif
		if $level < 20
			DisableNpcOption(0)
		endif	
		$result = IsTaskAccept( -1 , 956 )
		if $result != 0
			DisableNpcOption(1)
		endif
		$last_time =  GetPlayerVar( -1, 3605 )
		$today_time = GetSystemTime( "yday" )
		if $today_time == $last_time
			DisableNpcOption(0)
		endif
//---------------7??9???---------------------------------
		if $time_hour < 19
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
		endif
		if $time_hour > 21
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
		endif
		if $Line == 1
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
		endif
		if $Line == 2
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
		endif
		if $Line == 3
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
		endif
		if $Line == 4
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
		endif
		if $Line == 5
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
		endif
		if $Line == 7
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
		endif
		
		$a = GetPlayerInfo( -1 , "item" , 64444 )
		if $a > 0
			DisableNpcOption(5)
		else
			DisableNpcOption(3)
			DisableNpcOption(4)
		endif
		
		$yday = GetSystemTime( "yday" )
		$time = GetPlayerVar( -1 , 3731 )
		if $time == $yday
			DisableNpcOption(3)
		endif
		$time = GetPlayerVar( -1 , 3733 )
		if $yday == $time
			DisableNpcOption(4)
		endif
		
		
	}
	//??????
	function OnOption0(){
	
		//???????
		$level = GetPlayerInfo(-1,"level")
		if $level < 20
			BC( "dialogbox", "player", -1, "Please come above level 20." )
			return
		endif		
		$count = GetTaskCount ( -1 )
		if $count >= 20
			BC( "dialogbox", "player", -1, "Your quest list is full. Please delete some and then try to accept it!" )
			return
		endif
		$last_time =  GetPlayerVar( -1, 3605 )
		$today_time = GetSystemTime( "yday" )
		
		if $today_time == $last_time
			BC( "dialogbox", "player", -1, "You have done it today." )
			return
		endif
		//?????????
		SubPlayerInfo( -1, "item", 12159,-1)
		SubPlayerInfo( -1, "item", 12160,-1)
		SubPlayerInfo( -1, "item", 12161,-1)
		SubPlayerInfo( -1, "item", 12162,-1)
		SubPlayerInfo( -1, "item", 12163,-1)
		SubPlayerInfo( -1, "item", 12164,-1)
		SubPlayerInfo( -1, "item", 12165,-1)
		//?????????
		CancelTask( -1, 920)
		CancelTask( -1, 921)
		CancelTask( -1, 922)
		CancelTask( -1, 923)
		CancelTask( -1, 924)
		CancelTask( -1, 925)
		CancelTask( -1, 952)
		CancelTask( -1, 953)
		CancelTask( -1, 954)
		CancelTask( -1, 955)
		//-------------------------------
		CancelTask( -1, 946)
		CancelTask( -1, 947)
		CancelTask( -1, 948)
		CancelTask( -1, 949)
		CancelTask( -1, 950)
		CancelTask( -1, 951)
		CancelTask( -1, 956)
		//??
		//???????
		if $level < 30
			$result = AcceptTask( -1, 920 )
			if $result != 0
				return
			endif
		endif
		if $level < 45
			if $level >= 30
				$result = AcceptTask( -1, 921 )
				if $result != 0
					return
				endif
			endif
		endif
		if $level < 60
			if $level >= 45
				$result = AcceptTask( -1, 922 )
				if $result != 0
					return
				endif
			endif
		endif	
		if $level < 75
			if $level >= 60
				$result = AcceptTask( -1, 923 )
				if $result != 0
					return
				endif
			endif
		endif
		if $level < 90
			if $level >= 75
				$result = AcceptTask( -1, 924 )
				if $result != 0
					return
				endif
			endif
		endif
		if $level < 105
			if $level >= 90
				$result = AcceptTask( -1, 925 )
				if $result != 0
					return
				endif
			endif
		endif
		if $level < 120
			if $level >= 105
				$result = AcceptTask( -1, 952 )
				if $result != 0
					return
				endif
			endif
		endif
		if $level < 135
			if $level >= 120
				$result = AcceptTask( -1, 953 )
				if $result != 0
					return
				endif
			endif
		endif
		if $level < 150
			if $level >= 135
				$result = AcceptTask( -1, 954 )
				if $result != 0
					return
				endif
			endif
		endif
		if $level >= 150
			$result = AcceptTask( -1, 955 )
			if $result != 0
				return
			endif
		endif
        		
		//???????????????
		SetPlayerVar( -1, 3605 ,$today_time)
		//??-START
			$TJ_join_number = GetGlobalVar(902)
			$TJ_join_number = $TJ_join_number + 1
			SetGlobalVar(902 , $TJ_join_number)
		//??-END     		
		
		SetPlayerActLog(-1,17,0)
		
		//??????????????
		//----------------------------------------------
		SetTaskNotActive( -1, 946)
		SetTaskNotActive( -1, 947)
		SetTaskNotActive( -1, 948)
		SetTaskNotActive( -1, 949)
		SetTaskNotActive( -1, 950)
		SetTaskNotActive( -1, 951)
		SetTaskNotActive( -1, 956)
		//??????????
		SetPlayerVar(-1,2,0)
		SetPlayerVar(-1,3,0)
		SetPlayerVar(-1,4,0)
		SetPlayerVar(-1,5,0)
		SetPlayerVar(-1,6,0)
		SetPlayerVar(-1,7,0)
	}


 //?????
	function OnOption1(){
		
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )
		
		if $teamplayer1_id != -1
			$player_stone = GetPlayerVar($teamplayer1_id ,3202)
			#name_1 = GetPlayerInfo ($teamplayer1_id ,"name" )
			$result = IsTaskAccept( $teamplayer1_id , 956 )
			//?????????
			if $result != 0
				#player1_color = "None."
			else
				if 	$player_stone == 1
					#player1_color = "Red."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05028000006" )
				endif
				if 	$player_stone == 2
					#player1_color = "orange."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05028000009" )
				endif
				if 	$player_stone == 3
					#player1_color = "yellow."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05028000012" )
				endif
				if 	$player_stone == 4
					#player1_color = "green."            				
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05028000015" )
				endif
			endif
			$is_complate_1 = GetPlayerVar($teamplayer1_id ,2)
			$is_complate_2 = GetPlayerVar($teamplayer1_id ,3)
			$is_complate_3 = GetPlayerVar($teamplayer1_id ,4)
			$is_complate_4 = GetPlayerVar($teamplayer1_id ,5)
			$is_complate_5 = GetPlayerVar($teamplayer1_id ,6)
			$is_complate_6 = GetPlayerVar($teamplayer1_id ,7)
			
			#player1_iscomplate = "None."         			
			if $is_complate_1 == 1
				#player1_iscomplate = "already."
			endif
			if $is_complate_2 == 1
				#player1_iscomplate = "already."
			endif
			if $is_complate_3 == 1
				#player1_iscomplate = "already."
			endif
			if $is_complate_4 == 1
				#player1_iscomplate = "already."
			endif
			if $is_complate_5 == 1
				#player1_iscomplate = "already."
			endif
			if $is_complate_6 == 1
				#player1_iscomplate = "already."
			endif 
			         			
		endif

		if $teamplayer2_id != -1
			$player_stone = GetPlayerVar($teamplayer2_id ,3202)
			#name_2 = GetPlayerInfo ($teamplayer2_id ,"name" )
			$result = IsTaskAccept( $teamplayer2_id , 956 )
			//?????????
			if $result != 0
				#player2_color = "None."
				return
			else
				if 	$player_stone == 1
					#player2_color = "Red."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05028000026" )
				endif
				if 	$player_stone == 2
					#player2_color = "orange."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05028000029" )
				endif
				if 	$player_stone == 3
					#player2_color = "yellow."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05028000032" )
				endif
				if 	$player_stone == 4
					#player2_color = "green."            				
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05028000035" )
				endif
			endif
			$is_complate_1 = GetPlayerVar($teamplayer2_id ,2)
			$is_complate_2 = GetPlayerVar($teamplayer2_id ,3)
			$is_complate_3 = GetPlayerVar($teamplayer2_id ,4)
			$is_complate_4 = GetPlayerVar($teamplayer2_id ,5)
			$is_complate_5 = GetPlayerVar($teamplayer2_id ,6)
			$is_complate_6 = GetPlayerVar($teamplayer2_id ,7)
			
			#player2_iscomplate = "None."         			
			if $is_complate_1 == 1
				#player2_iscomplate = "already."
			endif
			if $is_complate_2 == 1
				#player2_iscomplate = "already."
			endif
			if $is_complate_3 == 1
				#player2_iscomplate = "already."
			endif
			if $is_complate_4 == 1
				#player2_iscomplate = "already."
			endif
			if $is_complate_5 == 1
				#player2_iscomplate = "already."
			endif
			if $is_complate_6 == 1
				#player2_iscomplate = "already."
			endif         			
		endif
		
		if $teamplayer3_id != -1
			$player_stone = GetPlayerVar($teamplayer3_id ,3202)
			#name_3 = GetPlayerInfo ($teamplayer3_id ,"name" )
			$result = IsTaskAccept( $teamplayer3_id , 956 )
			//?????????
			if $result != 0
				#player3_color = "None."
			else
				if 	$player_stone == 1
					#player3_color = "Red."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05028000046" )
				endif
				if 	$player_stone == 2
					#player3_color = "orange."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05028000049" )
				endif
				if 	$player_stone == 3
					#player3_color = "yellow."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05028000052" )
				endif
				if 	$player_stone == 4
					#player3_color = "green."            				
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05028000055" )
				endif
			endif

            $is_complate_1 = GetPlayerVar($teamplayer3_id ,2)
			$is_complate_2 = GetPlayerVar($teamplayer3_id ,3)
			$is_complate_3 = GetPlayerVar($teamplayer3_id ,4)
			$is_complate_4 = GetPlayerVar($teamplayer3_id ,5)
			$is_complate_5 = GetPlayerVar($teamplayer3_id ,6)
			$is_complate_6 = GetPlayerVar($teamplayer3_id ,7)

			#player3_iscomplate = "None."         			
			if $is_complate_1 == 1
				#player3_iscomplate = "already."
			endif
			if $is_complate_2 == 1
				#player3_iscomplate = "already."
			endif
			if $is_complate_3 == 1
				#player3_iscomplate = "already."
			endif
			if $is_complate_4 == 1
				#player3_iscomplate = "already."
			endif
			if $is_complate_5 == 1
				#player3_iscomplate = "already."
			endif
			if $is_complate_6 == 1
				#player3_iscomplate = "already."
			endif         			
		endif
		
		if $teamplayer4_id != -1
			$player_stone = GetPlayerVar($teamplayer4_id ,3202)
			#name_4 = GetPlayerInfo ($teamplayer4_id ,"name" )
			$result = IsTaskAccept( $teamplayer4_id , 956 )
			//?????????
			if $result != 0
				#player4_color = "None."
			else
				if 	$player_stone == 1
					#player4_color = "Red."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05028000066" )
				endif
				if 	$player_stone == 2
					#player4_color = "orange."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05028000069" )
				endif
				if 	$player_stone == 3
					#player4_color = "yellow."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05028000072" )
				endif
				if 	$player_stone == 4
					#player4_color = "green."            				
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05028000075" )
				endif
			endif
	   		$is_complate_1 = GetPlayerVar($teamplayer4_id ,2)
			$is_complate_2 = GetPlayerVar($teamplayer4_id ,3)
			$is_complate_3 = GetPlayerVar($teamplayer4_id ,4)
			$is_complate_4 = GetPlayerVar($teamplayer4_id ,5)
			$is_complate_5 = GetPlayerVar($teamplayer4_id ,6)
			$is_complate_6 = GetPlayerVar($teamplayer4_id ,7)

			#player4_iscomplate = "None."         			
			if $is_complate_1 == 1
				#player4_iscomplate = "already."
			endif
			if $is_complate_2 == 1
				#player4_iscomplate = "already."
			endif
			if $is_complate_3 == 1
				#player4_iscomplate = "already."
			endif
			if $is_complate_4 == 1
				#player4_iscomplate = "already."
			endif
			if $is_complate_5 == 1
				#player4_iscomplate = "already."
			endif
			if $is_complate_6 == 1
				#player4_iscomplate = "already."
			endif
			     			
		endif
	
		if $teamplayer5_id != -1
			$player_stone = GetPlayerVar($teamplayer5_id ,3202)
			#name_5 = GetPlayerInfo ($teamplayer5_id ,"name" )
			$result = IsTaskAccept( $teamplayer5_id , 956 )
			//?????????
			if $result != 0
				#player5_color = "None."
			else
				if 	$player_stone == 1
					#player5_color = "Red."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05028000086" )
				endif
				if 	$player_stone == 2
					#player5_color = "orange."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05028000089" )
				endif
				if 	$player_stone == 3
					#player5_color = "yellow."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05028000092" )
				endif
				if 	$player_stone == 4
					#player5_color = "green."            				
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05028000095" )
				endif
			endif

            $is_complate_1 = GetPlayerVar($teamplayer5_id ,2)
			$is_complate_2 = GetPlayerVar($teamplayer5_id ,3)
			$is_complate_3 = GetPlayerVar($teamplayer5_id ,4)
			$is_complate_4 = GetPlayerVar($teamplayer5_id ,5)
			$is_complate_5 = GetPlayerVar($teamplayer5_id ,6)
			$is_complate_6 = GetPlayerVar($teamplayer5_id ,7)

			#player5_iscomplate = "None."         			
			if $is_complate_1 == 1
				#player5_iscomplate = "already."
			endif
			if $is_complate_2 == 1
				#player5_iscomplate = "already."
			endif
			if $is_complate_3 == 1
				#player5_iscomplate = "already."
			endif
			if $is_complate_4 == 1
				#player5_iscomplate = "already."
			endif
			if $is_complate_5 == 1
				#player5_iscomplate = "already."
			endif
			if $is_complate_6 == 1
				#player5_iscomplate = "already."
			endif
		endif
		
		if $teamplayer6_id != -1
			$player_stone = GetPlayerVar($teamplayer6_id ,3202)
			#name_6 = GetPlayerInfo ($teamplayer6_id ,"name" )
			$result = IsTaskAccept( $teamplayer6_id , 956 )
			//?????????
			if $result != 0
				#player6_color = "None."
			else
				if 	$player_stone == 1
					#player6_color = "Red."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05028000106" )
				endif
				if 	$player_stone == 2
					#player6_color = "orange."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05028000109" )
				endif
				if 	$player_stone == 3
					#player6_color = "yellow."
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05028000112" )
				endif
				if 	$player_stone == 4
					#player6_color = "green."            				
					//BC( "chat", "player", -1 ,"The hero ",#name,"GUID:05028000115" )
				endif
			endif

            $is_complate_1 = GetPlayerVar($teamplayer6_id ,2)
			$is_complate_2 = GetPlayerVar($teamplayer6_id ,3)
			$is_complate_3 = GetPlayerVar($teamplayer6_id ,4)
			$is_complate_4 = GetPlayerVar($teamplayer6_id ,5)
			$is_complate_5 = GetPlayerVar($teamplayer6_id ,6)
			$is_complate_6 = GetPlayerVar($teamplayer6_id ,7)

			#player6_iscomplate = "None."         			
			if $is_complate_1 == 1
				#player6_iscomplate = "already."
			endif
			if $is_complate_2 == 1
				#player6_iscomplate = "already."
			endif
			if $is_complate_3 == 1
				#player6_iscomplate = "already."
			endif
			if $is_complate_4 == 1
				#player6_iscomplate = "already."
			endif
			if $is_complate_5 == 1
				#player6_iscomplate = "already."
			endif
			if $is_complate_6 == 1
				#player6_iscomplate = "already."
			endif
		endif

		$team_count = GetTeamMemberCount(-1)
		    		
		if $team_count == 1      		
			BC( "dialogbox", "player", -1 ,"The hero ",#name_1 ,"yes." , #player1_color , "gem." ,#player1_iscomplate,"has released power." )
        endif
		if $team_count == 2      		
			BC( "dialogbox", "player", -1 ,"The hero ",#name_1 ,"yes." , #player1_color , "gem." ,#player1_iscomplate,"has released power\n" ,"The hero ",#name_2 ,"yes." , #player2_color , "gem." ,#player2_iscomplate,"has released power." )
        endif
		if $team_count == 3      		
			BC( "dialogbox", "player", -1 ,"The hero ",#name_1 ,"yes." , #player1_color , "gem." ,#player1_iscomplate,"has released power\n" ,"The hero ",#name_2 ,"yes." , #player2_color , "gem." ,#player2_iscomplate,"has released power\n","The hero ",#name_3 ,"yes." , #player3_color , "Gem" ,#player3_iscomplate,"has released power.")
        endif
		if $team_count == 4      		
			BC( "dialogbox", "player", -1 ,"The hero ",#name_1 ,"yes." , #player1_color , "gem." ,#player1_iscomplate,"has released power\n" ,"The hero ",#name_2 ,"yes." , #player2_color , "gem." ,#player2_iscomplate,"has released power\n","The hero ",#name_3 ,"yes." , #player3_color , "Gem" ,#player3_iscomplate,"has released power\n","The hero ",#name_4 ,"yes." , #player4_color , "gem." ,#player4_iscomplate,"has released power." )
        endif
		if $team_count == 5      		
			BC( "dialogbox", "player", -1 ,"The hero ",#name_1 ,"yes." , #player1_color , "gem." ,#player1_iscomplate,"has released power\n" ,"The hero ",#name_2 ,"yes." , #player2_color , "gem." ,#player2_iscomplate,"has released power\n","The hero ",#name_3 ,"yes." , #player3_color , "Gem" ,#player3_iscomplate,"has released power\n","The hero ",#name_4 ,"yes." , #player4_color , "gem." ,#player4_iscomplate,"has released power.","The hero ",#name_5 ,"yes." , #player5_color , "gem." ,#player5_iscomplate,"has released power.")
        endif
		if $team_count == 6      		
			BC( "dialogbox", "player", -1 ,"The hero ",#name_1 ,"yes." , #player1_color , "gem." ,#player1_iscomplate,"has released power\n" ,"The hero ",#name_2 ,"yes." , #player2_color , "gem." ,#player2_iscomplate,"has released power\n","The hero ",#name_3 ,"yes." , #player3_color , "Gem" ,#player3_iscomplate,"has released power\n","The hero ",#name_4 ,"yes." , #player4_color , "gem." ,#player4_iscomplate,"has released power\n","The hero ",#name_5 ,"yes." , #player5_color , "gem." ,#player5_iscomplate,"has released power\n","The hero ",#name_6 ,"yes." , #player6_color , "gem." ,#player6_iscomplate,"has released power\n" )
        endif      		


	}  
	
//	function OnOption2(){ 	
//		
//		BC( "dialogbox", "player", -1 ,"GUID:05028000207")
//	}
//	
//	//???????,???????????
//	function OnOption3(){ 	
//	
//		$line = GetServerLineID()
//		$time_hour = GetSystemTime( "hour" )
//		if $time_hour < 19
//			return
//		endif
//		if $time_hour > 21
//			return
//		endif
//		if $line != 6
//			if $line != 8
//				return
//			endif
//		endif
//		
//		$a = GetPlayerInfo( -1 , "item" , 64444 )
//		if $a < 1
//			BC( "dialogbox", "player", -1 ,"GUID:05028000208" )
//			return
//		endif
//		$yday = GetSystemTime( "yday" )
//		$time = GetPlayerVar( -1 , 3731 )
//		if $time != $yday
//			$a = GetPlayerVar( -1 , 3241 )
//			if $a < 3
//				BC( "dialogbox", "player", -1 ,"GUID:05028000209",$a,"GUID:05028000210")
//				return
//			else
//				AddPlayerInfo( -1 , "item" , 64447 , 1 )
//				SetPlayerVar( -1 , 3731 , $yday )
//			endif
//		else
//			BC( "dialogbox", "player", -1 ,"GUID:05028000211" )
//		endif
//		
//		
//	}
//	
//	//????
//	function OnOption4(){ 	
//	
//		$line = GetServerLineID()
//		$time_hour = GetSystemTime( "hour" )
//		if $time_hour < 19
//			return
//		endif
//		if $time_hour > 21
//			return
//		endif
//		if $line != 6
//			if $line != 8
//				return
//			endif
//		endif
//		$lv = GetPlayerInfo( -1 , "level" )
//		if $lv < 30
//			BC( "dialogbox", "player", -1 ,"GUID:05028000212" )
//			return
//		endif
//		$a = GetPlayerInfo( -1 , "item" , 64444 )
//		if $a < 1
//			BC( "dialogbox", "player", -1 ,"GUID:05028000213" )
//			return
//		endif
//		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
//		if $nobag < 1
//			BC( "dialogbox", "player", -1, "GUID:05028000214" )
//			return
//		endif
//		$count = GetServerVar( 134 )
//		if $count < 1500
//			BC( "dialogbox", "player", -1, "GUID:05028000215",$count,"GUID:05028000216" )
//			return
//		endif
//		$liang = GetServerVar( 135 )
//		if $liang > 2000
//			BC( "dialogbox", "player", -1, "GUID:05028000217" )
//			return
//		endif
//		$liang = $liang + 1
//		$yday = GetSystemTime( "yday" )
//		$time = GetPlayerVar( -1 , 3733 )
//		if $yday != $time
//			AddPlayerInfo( -1 , "item" , 64446 , 5 )
//			SetPlayerVar( -1 , 3733 , $yday )
//			SetServerVar( 135 , $liang )
//			return
//		else
//			BC( "dialogbox", "player", -1 ,"GUID:05028000218" )
//		endif
//		
//	}
//	
//	//?????
//	function OnOption5(){ 	
//	
//		$time_hour = GetSystemTime( "hour" )
//		$line = GetServerLineID()
//		if $time_hour < 19
//			return
//		endif
//		if $time_hour > 21
//			return
//		endif
//		if $line != 6
//			if $line != 8
//				return
//			endif
//		endif
//		
//		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
//		if $nobag < 1
//			BC( "dialogbox", "player", -1, "GUID:05028000219" )
//			return
//		endif
//		$a = GetPlayerInfo( -1 , "item" , 64444 )
//		if $a > 0
//			BC( "dialogbox", "player", -1 ,"GUID:05028000220" )
//			return
//		endif
//		$yday = GetSystemTime( "yday" )
//		$time = GetPlayerVar( -1 , 3734 )
//		if $yday != $time
//			//????
//			AddPlayerInfo( -1 , "item" , 64444 , 1 )
//			SetPlayerVar( -1 , 3734 , $yday )
//			//?????
//			SetPlayerVar( -1 , 3732 , 0 )
//			//???????
//			SetPlayerVar( -1 , 3237 , 0 )
//			SetPlayerVar( -1 , 3238 , 0 )
//			SetPlayerVar( -1 , 3239 , 0 )
//			SetPlayerVar( -1 , 3240 , 0 )
//			//4??????
//			SetPlayerVar( -1 , 3241 , 0 )
//			//??????
//			SetPlayerVar( -1 , 3244 , 0 )
//			
//			BC( "dialogbox", "player", -1 ,"GUID:05028000221" )
//		else
//			BC( "dialogbox", "player", -1 ,"GUID:05028000222" )
//		endif
//	}
//	
//	//??????,??????20?
//	function OnOption6(){ 	
//		
//		$time_hour = GetSystemTime( "hour" )
//		$line = GetServerLineID()
//		if $time_hour < 19
//			return
//		endif
//		if $time_hour > 21
//			return
//		endif
//		if $line != 6
//			if $line != 8
//				return
//			endif
//		endif
//		$a = GetPlayerInfo( -1 , "item" , 64445 )
//		if $a < 1
//			BC( "dialogbox", "player", -1 ,"GUID:05028000223" )
//			return
//		endif
//		$a = GetPlayerInfo( -1 , "item" , 64444 )
//		if $a < 1
//			BC( "dialogbox", "player", -1 ,"GUID:05028000224" )
//			return
//		endif
//		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
//		if $nobag < 1
//			BC( "dialogbox", "player", -1, "GUID:05028000225" )
//			return
//		endif
//		
//		$round = GetPlayerVar( -1 , 3732 )
//		$round = $round + 1
//		$count = GetServerVar( 134 )
//		$count = $count + 1
//		
//		if $count <= 1500
//	
//			$info = SubPlayerInfo( -1 , "item" , 64445 , 1 )
//			if $info != 0
//				return
//			endif
//			
//			if $round < 20
//				SetPlayerVar( -1 , 3732 , $round )
//				AddPlayerInfo( -1 , "item" , 64446 , 1 )
//				BC( "dialogbox", "player", -1 ,"GUID:05028000226",$round,"GUID:05028000227",$count,"GUID:05028000228")
//			else
//				SetPlayerVar( -1 , 3732 , 20 )
//				BC( "dialogbox", "player", -1 ,"GUID:05028000229",$count,"GUID:05028000230")
//			endif
//			
//			SetServerVar( 134 , $count )
//			
//			if $count == 100
//				BC( "screen", "servergroup", -1 , $line ,"GUID:05028000231",$count,"GUID:05028000232" )	
//				BC( "chat", "servergroup", -1 , $line ,"GUID:05028000233",$count,"GUID:05028000234" )
//			endif
//			if $count == 300
//				BC( "screen", "servergroup", -1 , $line ,"GUID:05028000235",$count,"GUID:05028000236" )	
//				BC( "chat", "servergroup", -1 , $line ,"GUID:05028000237",$count,"GUID:05028000238" )
//			endif
//			if $count == 500
//				BC( "screen", "servergroup", -1 , $line ,"GUID:05028000239",$count,"GUID:05028000240" )	
//				BC( "chat", "servergroup", -1 , $line ,"GUID:05028000241",$count,"GUID:05028000242" )
//			endif
//			if $count == 700
//				BC( "screen", "servergroup", -1 , $line ,"GUID:05028000243",$count,"GUID:05028000244" )	
//				BC( "chat", "servergroup", -1 , $line ,"GUID:05028000245",$count,"GUID:05028000246" )
//			endif
//			if $count == 900
//				BC( "screen", "servergroup", -1 , $line ,"GUID:05028000247",$count,"GUID:05028000248" )	
//				BC( "chat", "servergroup", -1 , $line ,"GUID:05028000249",$count,"GUID:05028000250" )
//			endif
//			if $count == 1100
//				BC( "screen", "servergroup", -1 , $line ,"GUID:05028000251",$count,"GUID:05028000252" )	
//				BC( "chat", "servergroup", -1 , $line ,"GUID:05028000253",$count,"GUID:05028000254" )
//			endif
//			if $count == 1300
//				BC( "screen", "servergroup", -1 , $line ,"GUID:05028000255",$count,"GUID:05028000256" )	
//				BC( "chat", "servergroup", -1 , $line ,"GUID:05028000257",$count,"GUID:05028000258" )
//			endif
//			if $count == 1500
//				BC( "screen", "servergroup", -1 , $line ,"GUID:05028000259", $line ,"GUID:05028000260" )	
//				BC( "chat", "servergroup", -1 , $line ,"GUID:05028000261", $line ,"GUID:05028000262" )	
//			endif
//		else
//			BC( "dialogbox", "player", -1 ,"GUID:05028000263" )	
//		endif
//	}