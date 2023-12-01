	//-----------------------------------|
	//	Script : Player Script          
	//	Author : Perfect World                  
	//   Date   : 2023                  
	//-----------------------------------|HIDE HERE
		//------------------------------|
		//        On Map Loaded         |
		//------------------------------|
			function OnMapLoaded(){
				$Lang = GetPlayerVar( -1, 3301)
				$MapID = GetPlayerInfo(-1 , "mapid")

				//if $Lang < 1
				//	BC("dialogbox", "player", -1, "Chào mừng bạn đến với Kiếm Tiên: CVN\nChọn ngôn ngữ trong Rương Tân Thủ\nXem hướng dẫn tại Discord\nChúc bạn may mắn trên con đường thống trị Atlantis #37")
				//	BC("dialogbox", "player", -1, "Wassuppp, welcome to BOI: CVN\nOpen your CVN Gift Box in your inventory\nThere tons of goodie inside\nGame tutorial will be post on the Discord\nHave fun #31")
				//endif

				
				if $MapID == 146		
					if $Lang == 1
						BC("messagebox", "player", -1, "{#ffff3817=Sử dụng quá nhiều Túi Vàng, vui lòng chậm lại\nKhông sử dụng vật phẩm tại đây\nNhân vật lỗi BQT không chịu trách nhiệm#}")
					endif
					if $Lang == 2
						BC("messagebox", "player", -1, "{#ffff3817=Using Coin Pack too fast, please slow down\nDo not use any Item on this Map#}")
					endif
				endif

				if $MapID == 83
					AddStatus(-1 , 10561, 1)
				endif
					AddStatus(-1 , 11815, 2)
					AddStatus( -1, 6073, 1 )
					AddStatus( -1, 6349, 2 )
					AddStatus(-1,2362,2)
					SetPlayerVar(-1,4072,0)

				$isreset = GetPlayerVar(-1,294)
				if $isreset == 0
					$indexW = 286
					while $indexW < 293
                              SetPlayerVar(-1,$indexW,0)
                              $indexW += 1
					endwhile
					SetPlayerVar(-1,4049,0)
					SetPlayerVar(-1,4050,0)
					SetPlayerVar(-1,3436,0)
					SetPlayerVar(-1,4076,0)
					SetPlayerVar(-1,4077,0)
					SetPlayerVar(-1,4079,0)
					SetPlayerVar(-1,4080,0)
					SetPlayerVar(-1,3445,0)
					SetPlayerVar(-1,294,1)
				endif
				
				call checkresult()
				$level = GetPlayerInfo(-1 , "level")
				if $level < 3
					SetPlayerVar(-1 , 28 , 1)
				endif
				if $MapID < 14801
					AddStatus( -1, 7881, 2 )
					AddStatus( -1, 7882, 2 )
					AddStatus( -1, 7883, 2 )
					AddStatus( -1, 7884, 2 )
				endif
				if $MapID > 14833
					AddStatus( -1, 7881, 2 )
					AddStatus( -1, 7882, 2 )
					AddStatus( -1, 7883, 2 )
					AddStatus( -1, 7884, 2 )
				endif
				$isspecial = 0
				if $MapID >= 25801
					if $MapID <= 25910
							$isspecial = 1
					endif
				endif
				if $MapID >= 26421
					if $MapID <= 26520
							$isspecial = 1
					endif
				endif
				
				if $isspecial == 0
					SetPlayerVar(-1,3595,0)
				endif
				if $MapID < 15101
					RemoveStatusByID(-1,21625)
					RemoveStatusByID(-1,21626)
					RemoveStatusByID(-1,21627)
				endif
				if $MapID > 25100
					RemoveStatusByID(-1,21625)
					RemoveStatusByID(-1,21626)
					RemoveStatusByID(-1,21627)
				endif
				if $MapID < 24001
					RemoveStatusByID(-1,6451)
					RemoveStatusByID(-1,6458)
					RemoveStatusByID(-1,6459)
					RemoveStatusByID(-1,6460)
					RemoveStatusByID(-1,6461)
				endif
				if $MapID > 24100
					RemoveStatusByID(-1,6451)
					RemoveStatusByID(-1,6458)
					RemoveStatusByID(-1,6459)
					RemoveStatusByID(-1,6460)
					RemoveStatusByID(-1,6461)
				endif
				if $MapID < 26221
					SubPlayerInfo( -1, "item", 44543,1 )
					SubPlayerInfo( -1, "item", 44544,1 )
					SubPlayerInfo( -1, "item", 44545,1 )
					SubPlayerInfo( -1, "item", 44546,1 )
					SubPlayerInfo( -1, "item", 44547,1 )
					SubPlayerInfo( -1, "item", 44548,1 )
					SubPlayerInfo( -1, "item", 44549,1 )
					SubPlayerInfo( -1, "item", 44550,1 )
					SubPlayerInfo( -1, "item", 44551,1 )
					SubPlayerInfo( -1, "item", 44552,1 )
					RemoveStatusByID( -1, 6483 )
					RemoveStatusByID( -1, 6484 )
					RemoveStatusByID( -1, 6485 )
					RemoveStatusByID( -1, 6486 )
				endif
				if $MapID > 26320
					SubPlayerInfo( -1, "item", 44543,1 )
					SubPlayerInfo( -1, "item", 44544,1 )
					SubPlayerInfo( -1, "item", 44545,1 )
					SubPlayerInfo( -1, "item", 44546,1 )
					SubPlayerInfo( -1, "item", 44547,1 )
					SubPlayerInfo( -1, "item", 44548,1 )
					SubPlayerInfo( -1, "item", 44549,1 )
					SubPlayerInfo( -1, "item", 44550,1 )
					SubPlayerInfo( -1, "item", 44551,1 )
					SubPlayerInfo( -1, "item", 44552,1 )
					RemoveStatusByID( -1, 6483 )
					RemoveStatusByID( -1, 6484 )
					RemoveStatusByID( -1, 6485 )
					RemoveStatusByID( -1, 6486 )
				endif
			}
		//------------------------------|
		//        On Login              |
		//------------------------------|
			function OnLogin(){
			//-------------------------|
			//      Code Check         |
			//-------------------------| 
				//--------------------|
				// System Call Func   |
				//--------------------| 
				call vip()
				call dailyReward()
				//--------------------|
				// Time Template      |
				//--------------------|
                         $vLevel = GetPlayerVar(-1, 4002)
					$Now_Week =  GetSystemTime( "week" )
					$Now_Yday =  GetSystemTime( "yday" )
					$Now_Mday =  GetSystemTime( "mday" )
					$Now_Month =  GetSystemTime( "month" )
					$Now_Hour =  GetSystemTime( "hour" )
					$Now_Minute = GetSystemTime( "minute")
					$Now_Year =  GetSystemTime( "year" )
					$Time = GetSystemTime( "yday" )
					$Lang = GetPlayerVar(-1,"3305")
					#name = GetPlayerInfo( -1, "name" )
				//--------------------|
				// Other ECT          |
				//--------------------|
					$level = GetPlayerInfo(-1,"level")
					$levelf = GetFieldLevel(-1)    
					$vip_level = GetPlayerInfo(-1 , "noblelevel")
					$Battle_line = GetServerLineID()
					$TeamID = GetBattleTeam( -1 , 2 )
					$Section = GetBattleTeamLeagueSection
					$Team_Rank = GetBattleTeamRank($TeamID)
					$count = GetPackMaxCount( -1, 0 )
				//--------------------|
				// VAR ID             |
				//--------------------|                                             
					$M_Week = GetPlayerVar( -1 , 3278 )
					$M_Day = GetPlayerVar( -1 , 3990 )
					$UseTime = GetPlayerVar(-1 , 3956 )
					$UseHour = GetPlayerVar(-1 , 3963 )
					$last_time = GetPlayerVar( -1, 3605 )  
					$double_days = GetPlayerVar(-1 , 3626)
					$double_weeks = GetPlayerVar(-1 , 3216)    
					$wenzhangbug = GetPlayerVar(-1, 311)             
			//-------------------------|
			//      Login Text         |
			//-------------------------|
					if $Check == 1
                         	if $Lang == 1
							BC("chat", "player", -1 ,"[color=ff19d47a]Chào mừng trởi lại ", #name )		
						endif	
						if $Lang == 2
							BC("chat", "player", -1 ,"[color=ff19d47a]Welcome back ", #name)		
						endif
					else
						if $Lang == 1
							BC("chat", "player", -1 ,"[color=ff19d47a]Chào mừng trởi lại ", #name," đặc quyền Quý Tộc hiện tại của bạn là [Cấp] ", $vLevel )		
						endif	
						if $Lang == 2
							BC("chat", "player", -1 ,"[color=ff19d47a]Welcome back ", #name," Your Noble Privileges Level: ", $vLevel )			
						endif
					endif 
			//-------------------------|
			//      Daily Function     |
			//-------------------------|
				call dailyReward()
				call dailyReset()        
			//-------------------------|
			//      Functional         |
			//-------------------------|
				if $wenzhangbug == 0
					RemoveStatusByID(-1,12026)
					RemoveStatusByID(-1,12027)
					RemoveStatusByID(-1,12028)
					RemoveStatusByID(-1,12029)
					RemoveStatusByID(-1,12030)
					RemoveStatusByID(-1,12031)
					RemoveStatusByID(-1,12032)
					RemoveStatusByID(-1,12033)
					RemoveStatusByID(-1,12034)
					SetPlayerVar(-1, 311, 1)
				endif
			//-------------------------|
			//      Double Daily EXP   |
			//-------------------------|
				$double_exp_time = 18000
				if $vip_level == 0
					$double_exp_time = 18000
				endif
				if $vip_level == 1
					$double_exp_time = 18000
				endif
				if $vip_level == 2
					$double_exp_time = 18000
				endif
				if $vip_level == 3
					$double_exp_time = 21600
				endif
				if $vip_level == 4
					$double_exp_time = 25200
				endif
				if $vip_level == 5
					$double_exp_time = 28800
				endif
				if $vip_level == 6
					$double_exp_time = 32400
				endif
				if $vip_level == 7
					$double_exp_time = 36000
				endif
				if $vip_level == 8
					$double_exp_time = 36000
				endif
				if $vip_level == 9
					$double_exp_time = 36000
				endif
				if $vip_level == 10
					$double_exp_time = 36000
				endif
				if $vip_level == 11
					$double_exp_time = 36000
				endif
				if $level >= 10
					if $double_days == 0
                              if $double_weeks == 0
                                   SetExpAddons(-1 , $double_exp_time , 1)
                                   SetPlayerVar(-1 , 3626 , $Now_Yday)                                 
                                   SetPlayerVar(-1 , 3216 , $Now_Week)         			
                              endif
					endif
					if $Now_Week < $double_weeks
                              SetExpAddons(-1 , $double_exp_time , 1)
                              SetPlayerVar(-1 , 3626 , $Now_Yday)
                              SetPlayerVar(-1 , 3216 , $Now_Week)
					else
                              if $Now_Yday >= $double_days
                                   $decrease_days = $Now_Yday - $double_days
                                   if $decrease_days >= 7
                                        SetExpAddons(-1 , $double_exp_time , 1)
                                        SetPlayerVar(-1 , 3626 , $Now_Yday)
                                        SetPlayerVar(-1 , 3216 , $Now_Week)
                                   endif
                              else
                                   $temp_value = $Now_Yday + 365
                                   $decrease_days = $temp_value - $double_days
                                   if $decrease_days >= 7
                                        SetExpAddons(-1 , $double_exp_time , 1)
                                        SetPlayerVar(-1 , 3626 , $Now_Yday)
                                        SetPlayerVar(-1 , 3216 , $Now_Week)
                                   endif
                              endif
					endif
				endif
			//-------------------------|
			//      Battle League      |
			//-------------------------|
				if $Section == 4
					if $Battle_line >= 106
						BC( "dialogbox", "player", -1, "Time Periods:\nFirst Round: 14:00-14:10\nSecond Round 15:00-15:10\nThird Round: 16:00-16:10\nSemifinals: 17:00-17:10\nFinals: 20:00-20:10" )
					endif
				endif	
				if $UseTime != $Time
					if $Now_Hour >= 2
                              CancelTask( -1 , 2533 )
                              CancelTask( -1 , 2534 )
                              CancelTask( -1 , 2535 )
                              CancelTask( -1 , 2536 )
                              CancelTask( -1 , 2537 )
					endif
				endif
				if $Section == 3
					if $Battle_line < 50
                              if $Now_Week != 6
                                   if $Team_Rank >= 0
                                        if $Team_Rank <= 95
                                             if $M_Week == 0
                                                  if $M_Week == 0
                                                       SendMail( -1 , "Semifinals Warning", "{#ffffd800=Congratulations! Your team has joined the competition successfully. It will be held at 14:00 this Saturday. Please, come early to prepare.#}\n\n{#ff00ff30=Click to gain rewards#}" , 0 , 0 )
                                                       SetPlayerVar(-1 , 3278 , $Now_Week)
                                                       SetPlayerVar(-1 , 3990 , $Now_Yday)       			
                                                  endif
                                             endif		
                                             if $Now_Week < $M_Week
                                                  SendMail( -1 , "Semifinals Warning", "{#ffffd800=Congratulations! Your team has joined the competition successfully. It will be held at 14:00 this Saturday. Please, come early to prepare.#}\n\n{#ff00ff30=Click to gain rewards#}" , 0 , 0 )
                                                  SetPlayerVar(-1 , 3278 , $Now_Week)
                                                  SetPlayerVar(-1 , 3990 , $Now_Yday)
                                             else
                                                  if $Now_Yday >= $M_Day
                                                       $decrease_days = $Now_Yday - $M_Day
                                                       if $send_days > 7
                                                            SendMail( -1 , "Semifinals Warning", "{#ffffd800=Congratulations! Your team has joined the competition successfully. It will be held at 14:00 this Saturday. Please, come early to prepare.#}\n\n{#ff00ff30=Click to gain rewards#}" , 0 , 0 )
                                                            SetPlayerVar(-1 , 3278 , $Now_Week)
                                                            SetPlayerVar(-1 , 3990 , $Now_Yday)
                                                       endif
                                                  else
                                                       $send_value = $Now_Yday + 365
                                                       $decrease_days = $send_value - $double_days
                                                       if $decrease_days > 7
                                                            SendMail( -1 , "Semifinals Warning", "{#ffffd800=Congratulations! Your team has joined the competition successfully. It will be held at 14:00 this Saturday. Please, come early to prepare.#}\n\n{#ff00ff30=Click to gain rewards#}" , 0 , 0 )
                                                            SetPlayerVar(-1 , 3278 , $Now_Week)
                                                            SetPlayerVar(-1 , 3990 , $Now_Yday)
                                                       endif
                                                  endif
                                             endif
                                        endif
                                   endif
                              endif
					endif	
				endif
			//-------------------------|
			//      Unknown            |
			//-------------------------|
				
				if $last_time == $Time
					InsertPlayerVar( -1, 1, 1 )
				else
					InsertPlayerVar( -1, 1, 0 )
				endif
				$Var2 = GetPlayerVar( -1, 3763 )
				if $Var2 == $Time
					InsertPlayerVar( -1, 3, 1 )
				else
					InsertPlayerVar( -1, 3, 0 )
				endif

				$Varenci = GetPlayerVar( -1, 3536 )
				if $Varenci == $Time
					InsertPlayerVar( -1, 118, 1 )
				else
					InsertPlayerVar( -1, 118, 0 )
				endif
				$Varenci = GetPlayerVar( -1, 3539 )
				if $Varenci == $Time
					InsertPlayerVar( -1, 119, 1 )
				else
					InsertPlayerVar( -1, 119, 0 )
				endif
				$player_time = GetPlayerVar( -1, 3935 )
				$player_round = GetPlayerVar( -1, 3253 )
				if $player_time == $Time
					InsertPlayerVar( -1, 87, 1 )
				else
					InsertPlayerVar( -1, 87, 0 )
				endif
				$Var = GetPlayerVar( -1, 3956 )
				if $Var == $Time
					InsertPlayerVar( -1, 93, 1 )
				else
					InsertPlayerVar( -1, 93, 0 )
				endif
				if $Now_Hour >= 19
					if $Now_Hour <= 21
							$player_time = GetPlayerVar( -1, 3627 )
							if $player_time == $Time
								InsertPlayerVar( -1, 26, 1 )
							else
								InsertPlayerVar( -1, 26, 0 )
							endif
					endif
				endif
				$dati = GetPlayerVar( -1, 3710 )
				if $dati == $Time
					InsertPlayerVar( -1, 45, 1 )
				else
					InsertPlayerVar( -1, 45, 0 )
				endif
				$player1_time = GetPlayerVar( -1, 3923 )
				if $Now_Hour >= 12
					if $Now_Hour <= 13
							if $player1_time == $Time
								InsertPlayerVar( -1, 50, 1 )
							else
								InsertPlayerVar( -1, 50, 0 )
							endif
					endif
				endif
				if $Now_Hour >= 20
					if $Now_Hour <= 21
							if $player1_time == $Time
								InsertPlayerVar( -1, 52, 1 )
							else
								InsertPlayerVar( -1, 52, 0 )
							endif
					endif
				endif
				$use_number = GetPlayerVar( -1, 3644 )
				$use_time = GetPlayerVar( -1, 3645 )
				if $use_time == $Time
					InsertPlayerVar( -1, 61, $use_number )
				else
					InsertPlayerVar( -1, 61, 0 )
				endif
				if $level < 60
					$player2_time =  GetPlayerVar( -1, 3761 )
					$player2_number =  GetPlayerVar( -1, 3401 )
					if $player2_time == $Time
							InsertPlayerVar( -1, 65, $player2_number )
					else
							InsertPlayerVar( -1, 65, 0 )
					endif
				endif
				if $level < 75
					$player_time =  GetPlayerVar( -1, 3760 )
					$player_number =  GetPlayerVar( -1, 3400 )
					if $player_time == $Time
							InsertPlayerVar( -1, 63, $player_number )
					else
							InsertPlayerVar( -1, 63, 0 )
					endif
				endif
				if $level < 90
					$player3_time =  GetPlayerVar( -1, 3764 )
					$player3_number =  GetPlayerVar( -1, 3404 )
					if $player3_time == $Time
							InsertPlayerVar( -1, 66, $player3_number )
					else
							InsertPlayerVar( -1, 66, 0 )
					endif
				endif
				if $level < 100
					$player1_time =  GetPlayerVar( -1, 3762 )
					$player1_number =  GetPlayerVar( -1, 3402 )
					if $player1_time == $Time
							InsertPlayerVar( -1, 64, $player1_number )
					else
							InsertPlayerVar( -1, 64, 0 )
					endif
				endif
				$levelf = GetFieldLevel(-1)
				if $levelf < 10
					$Player_titan = GetPlayerVar( -1, 4099 )
					if $Player_titan == $Time
							InsertPlayerVar( -1, 101, 1 )
					else
							InsertPlayerVar( -1, 101, 0 )
					endif
				endif
				if $Now_Hour >= 12
					if $Now_Hour <= 13
							$player4_time =  GetPlayerVar( -1, 3765 )
							$player4_number =  GetPlayerVar( -1, 3405 )
							if $player4_time == $Time
								InsertPlayerVar( -1, 70, $player4_number )
							else
								InsertPlayerVar( -1, 70, 0 )
							endif
					endif
				endif
				if $Now_Hour >= 20
					if $Now_Hour <= 21
							$player4_time =  GetPlayerVar( -1, 3765 )
							$player4_number =  GetPlayerVar( -1, 3405 )
							if $player4_time == $Time
								InsertPlayerVar( -1, 72, $player4_number )
							else
								InsertPlayerVar( -1, 72, 0 )
							endif
					endif
				endif
				$player1_time =  GetPlayerVar( -1, 3756 )
				$player1_number =  GetPlayerVar( -1, 3398 )
				if $player1_time == $Time
					InsertPlayerVar( -1, 76, $player1_number )
				else
					InsertPlayerVar( -1, 76, 0 )
				endif
				$RankList = GetRankListValue( 1, 499 )
				$level = GetPlayerInfo( -1, "level" )
				$playervar1 = GetPlayerVar( -1, 3752 )
				$today_time = GetSystemTime( "yday" )
				if $RankList >= 75
					if $RankList <= 89
							if $level <= 60
								if $playervar1 == $today_time
									InsertPlayerVar( -1, 78, 1 )
								else
									InsertPlayerVar( -1, 78, 0 )
								endif
							endif
					endif
				endif
				if $RankList >= 90
					if $RankList <= 99
							if $level <= 75
								if $playervar1 == $today_time
									InsertPlayerVar( -1, 78, 1 )
								else
									InsertPlayerVar( -1, 78, 0 )
								endif
							endif
					endif
				endif
				if $RankList >= 100
					if $RankList <= 109
							if $level <= 90
								if $playervar1 == $today_time
									InsertPlayerVar( -1, 78, 1 )
								else
									InsertPlayerVar( -1, 78, 0 )
								endif
							endif
					endif
				endif
				if $RankList >= 110
					if $RankList <= 119
							if $level <= 100
								if $playervar1 == $today_time
									InsertPlayerVar( -1, 78, 1 )
								else
									InsertPlayerVar( -1, 78, 0 )
								endif
							endif
					endif
				endif
				if $RankList >= 120
					if $RankList <= 130
							if $level <= 110
								if $playervar1 == $today_time
									InsertPlayerVar( -1, 78, 1 )
								else
									InsertPlayerVar( -1, 78, 0 )
								endif
							endif
					endif
				endif
				$xpxt1 = GetPlayerVar( -1, 3996 )
				$Now_Yday =  GetSystemTime( "yday" )
				$result = IsTaskDone( -1, 1735 )	
				$xpds = GetPlayerVar( -1, 3321 )
				if $xpds < 24
					if $result == 0						
							if $xpxt1 == $Now_Yday
									InsertPlayerVar( -1, 102, 1 )
							else 
									InsertPlayerVar( -1, 102, 0 )
							endif
					endif
				endif
				$xpxt2 = GetPlayerVar( -1, 3995 )
				if $xpds >= 24
					if $xpxt2 == $Now_Yday
							InsertPlayerVar( -1, 103, 1 )
					else
							InsertPlayerVar( -1, 103, 0 )
					endif
				endif
				$levelf = GetFieldLevel(-1)
					if $levelf < 30
							$player_time = GetPlayerVar( -1, 4013 )
							if $player_time == $Now_Yday
								InsertPlayerVar( -1, 109, 1 )
							else
								InsertPlayerVar( -1, 109, 0 )
							endif
					endif
				$Time = GetSystemTime( "yday" )
				$Playervarsg = GetPlayerVar( -1, 3943 )
					if $Playervarsg == $Time
							InsertPlayerVar( -1, 91, 1 )
					else
							InsertPlayerVar( -1, 91, 0 )
					endif
				$year = GetSystemTime( "year" )
				$month = GetSystemTime( "month" )
				$day = GetSystemTime( "mday" )
							$player_time = GetPlayerVar( -1, 4047 )
							if $player_time == $Now_Yday
								InsertPlayerVar( -1, 112, 1 )
							else
								InsertPlayerVar( -1, 112, 0 )
							endif
				$today_week = GetNowWeek()
				$weeks = GetPlayerVar( -1, 3420 )
				if $weeks == $today_week
					InsertPlayerVar( -1, 121, 1 )
				else
					InsertPlayerVar( -1, 121, 0 )
				endif

				$today_week = GetNowWeek()
				$weeks = GetPlayerVar( -1, 3561 )
				if $weeks == $today_week
					InsertPlayerVar( -1, 122, 1 )
				else
					InsertPlayerVar( -1, 122, 0 )
				endif		
					if $Now_Hour >= 19
							if $Now_Hour <= 21
								$jinzita = GetPlayerVar( -1, 3615 )
								if $jinzita == $Time
									InsertPlayerVar( -1, 8, 1 )
								else
									InsertPlayerVar( -1, 8, 0 )
								endif
							endif
					endif	
					if $Now_Hour >= 18
							if $Now_Hour <= 20
								$days = GetPlayerVar( -1, 3617 )
								if $days == $Time
									InsertPlayerVar( -1, 9, 1 )
								else
									InsertPlayerVar( -1, 9, 0 )
								endif
							endif
					endif
					$chongbai = GetPlayerVar( -1, 3667 )
					if $chongbai == $Time
							InsertPlayerVar( -1, 27, 1 )
					else
							InsertPlayerVar( -1, 27, 0 )	
					endif
				$Task_Time = GetPlayerVar( -1, 3334 )
				$sysweek = GetNowWeek()
				if $Task_Time == $Time
					InsertPlayerVar( -1, 62, 1 )
				else
					InsertPlayerVar( -1, 62, 0 )
				endif
				$Now_Mday = GetSystemTime( "mday" )	
				$Now_Week = GetSystemTime( "week" )
				$Now_Year = GetSystemTime( "year" )
				$Now_Month = GetSystemTime( "month" )
				$TaskVar = GetPlayerVar( -1, 3681 )
				if $Now_Mday > 7
					if $Now_Mday <= 14
							if $Now_Week == 0
								if $Now_Hour >= 13
									if $Now_Hour <= 15
										if $TaskVar == $Time
												InsertPlayerVar( -1, 75, 1 )
										else
												InsertPlayerVar( -1, 75, 0 )
										endif
									endif	
								endif	
							endif
					endif	
				endif
				if $Now_Year == 2012
					if $Now_Month == 6
							if $Now_Mday == 24
								if $TaskVar == $Time
									InsertPlayerVar( -1, 115, 1 )
								else
									InsertPlayerVar( -1, 115, 0 )
								endif
							endif
					endif
				endif
				$today_time = GetSystemTime( "yday" )
				$days = GetPlayerVar( -1, 3769 )
					if $days == $today_time
							InsertPlayerVar( -1, 81, 1 )
					else
							InsertPlayerVar( -1, 81, 0 )
					endif
				InsertPlayerVar( -1, 100, 0 )
				InsertPlayerVar( -1, 104, 0 )
				SendActivityRecord( -1, 4 )

				if $level >= 20
					$VarCard = GetPlayerVar( -1, 3538 )
					if $VarCard == 0
							BC( "screen", "player", -1, "Fate Card system activated!" )
							AddTarotSlot(-1,2)
							AddTarotCostMax(-1,10)
							AddTarotCard(-1,103)
							AddTarotCard(-1,104)
							AddTarotCard(-1,108)
							AddTarotCard(-1,110)
							AddTarotCard(-1,113)
							$VarCard = $VarCard + 1
							SetPlayerVar( -1, 3538, $VarCard )
					endif
					$VarCardplus = GetPlayerVar( -1, 250 )
					if $VarCardplus == 0
							AddTarotCostMax(-1,10)
							SetPlayerVar( -1, 250, 1 )
					endif
				endif
				if $level >= 85
					$VarCard = GetPlayerVar( -1, 3538 )
					if $VarCard == 1
							BC( "screen", "player", -1, "You found a new Fate Card gear slot!" )
							AddTarotSlot(-1,1)
							$VarCard = $VarCard + 1
							SetPlayerVar( -1, 3538, $VarCard )
					endif
				endif
				if $level >= 110
					$VarCard = GetPlayerVar( -1, 3538 )
					if $VarCard == 2
							BC( "screen", "player", -1, "You found a new Fate Card gear slot!" )
							AddTarotSlot(-1,1)
							$VarCard = $VarCard + 1
							SetPlayerVar( -1, 3538, $VarCard )
					endif
				endif
				if $levelf >= 25
					$VarCard = GetPlayerVar( -1, 3538 )
					if $VarCard == 3
							BC( "screen", "player", -1, "You found a new Fate Card gear slot!" )
							AddTarotSlot(-1,1)
							$VarCard = $VarCard + 1
							SetPlayerVar( -1, 3538, $VarCard )
					endif
				endif

				$today_time = GetSystemTime( "yday" )
				$shuishen_time = GetPlayerVar( -1, 4031 )
				$SThour = GetSystemTime( "hour" )
				if $shuishen_time != $today_time
					AddStatus( -1, 21601, 4 )
					AddStatus( -1, 21604, 4 )
					AddStatus( -1, 21605, 4 )
					CancelTask ( -1 , 2621 )
					CancelTask ( -1 , 2622 )
					CancelTask ( -1 , 2623 )
					CancelTask ( -1 , 2624 )
					CancelTask ( -1 , 2629 )
					SubPlayerInfo( -1 , "item", 54090 , 1 )
					SubPlayerInfo( -1 , "item", 54091 , 1 )
					SubPlayerInfo( -1 , "item", 54092 , 1 )
					SubPlayerInfo( -1 , "item", 54093 , 1 )
					SubPlayerInfo( -1 , "item", 54094 , 1 )
					SubPlayerInfo( -1 , "item", 54109 , 1 )
				endif
				if $shuishen_time == $today_time
					if $SThour >= 23
							AddStatus( -1, 21601, 4 )
							AddStatus( -1, 21604, 4 )
							AddStatus( -1, 21605, 4 )
							CancelTask ( -1 , 2621 )
							CancelTask ( -1 , 2622 )
							CancelTask ( -1 , 2623 )
							CancelTask ( -1 , 2624 )
							CancelTask ( -1 , 2629 )
							SubPlayerInfo( -1 , "item", 54090 , 1 )
							SubPlayerInfo( -1 , "item", 54091 , 1 )
							SubPlayerInfo( -1 , "item", 54092 , 1 )
							SubPlayerInfo( -1 , "item", 54093 , 1 )
							SubPlayerInfo( -1 , "item", 54094 , 1 )
							SubPlayerInfo( -1 , "item", 54109 , 1 )
					endif
				endif
				$taitan_time = GetPlayerVar( -1, 4034 )
				if $taitan_time != $today_time
					AddStatus( -1, 21603, 4 )
					AddStatus( -1, 21604, 4 )
					AddStatus( -1, 21605, 4 )
					CancelTask ( -1 , 2625 )
					CancelTask ( -1 , 2626 )
					CancelTask ( -1 , 2627 )
					CancelTask ( -1 , 2628 )
					SubPlayerInfo( -1 , "item", 54096 , 1 )
				endif
				if $taitan_time == $today_time
					if $SThour >= 23
							AddStatus( -1, 21603, 4 )
							AddStatus( -1, 21604, 4 )
							AddStatus( -1, 21605, 4 )
							CancelTask ( -1 , 2625 )
							CancelTask ( -1 , 2626 )
							CancelTask ( -1 , 2627 )
							CancelTask ( -1 , 2628 )
							SubPlayerInfo( -1 , "item", 54096 , 1 )
					endif
				endif
							
			}
		//------------------------------|
		//        Appraisal Treasure    |
		//------------------------------|
			function OnAppraisalTreasure(){
				
				$lasttime = GetPlayerVar( -1 , 3696 )
				$a = GetPlayerVar( -1 , 3697 )
				$time = GetSystemTime( "yday" )
				$exp = GetPlayerInfo( -1 , "treasureawardexp" )
				$a = $a + 1
				if $time == $lasttime
					if $a <= 8
							BC( "screen", "player", -1 , "You have done " , $a , " attempts of treasure identification for today. EXP given: " , $exp )
							AddPlayerInfo ( -1 , "exp" , $exp )
							SetPlayerVar( -1 , 3697 , $a )
					else
							BC( "screen", "player", -1, "You have performed more than 8 treasure identifications today. No more EXP will be acquired." )
					endif
				else
					BC( "screen", "player", -1, "This is your 1st attempt at treasure identification. EXP given: ",$exp )
					AddPlayerInfo ( -1 , "exp" , $exp )
					SetPlayerVar( -1 , 3697 , 1 )
					SetPlayerVar( -1 , 3696 , $time )
				endif
				
			}
			function OnFrozenFortVote(){
				//----??????????----------??---????????? 0 1 --------
				$yday =  GetSystemTime( "yday" )
				$next_day = GetPlayerVar( -1 , 3711 )
				$lv = GetPlayerInfo( -1 , "level" )
				$a = 50 * $lv
				$b = $lv / 15
				$c = $b * 2
				$d = $c + 6
				$e = $a * $d
				$f = $e * $lv
				$g = $lv / 10
				$h = $g + 7
				$i = $h * $f
				$exp = $i / 200
				//----??????????--------??---????????? 0 1 --------
				if $next_day == 0
					CanFrozenFortVote( 1 )
					AddPlayerInfo( -1 , "exp" , $exp )
					BC( "screen", "player", -1, "Thanks for your vote! You have acquired EXP: ",$exp )
					SetPlayerVar( -1, 3711 , $yday)
					return
				endif
				if $yday >= $next_day
					$dis_days = $yday - $next_day
					if $dis_days >= 6
							CanFrozenFortVote( 1 )
							AddPlayerInfo( -1 , "exp" , $exp )
							BC( "screen", "player", -1, "Thanks for your vote! You have acquired EXP: ",$exp )
							SetPlayerVar( -1 , 3711 , $yday )
					endif
				else
					$temp_value = $yday + 365
					$dis_days = $temp_value - $next_day
					if $dis_days >= 6
							CanFrozenFortVote( 1 )
							AddPlayerInfo( -1 , "exp" , $exp )
							BC( "screen", "player", -1, "Thanks for your vote! You have acquired EXP: ",$exp )
							SetPlayerVar( -1  , 3711 , $yday )
					endif
				endif
			}
		//------------------------------|
		//        ReqActivity           |
		//------------------------------|
			function OnNormalReqActivity(){
				$Now_Month = GetSystemTime( "month" )
				$Now_Mday = GetSystemTime( "mday" )
				$Now_Week = GetSystemTime( "week" )
				$Time = GetSystemTime( "yday" )
				$Now_Hour = GetSystemTime( "hour" )
				$Now_Minute = GetSystemTime( "minute")
				$level = GetPlayerInfo( -1, "level" )
				if $level < 100
					$last_time = GetPlayerVar( -1, 3605 )
					if $last_time == $Time
							InsertPlayerVar( -1, 1, 1 )
					else
							InsertPlayerVar( -1, 1, 0 )
					endif
				endif
				$Var2 = GetPlayerVar( -1, 3763 )
				if $Var2 == $Time
					InsertPlayerVar( -1, 3, 1 )
				else
					InsertPlayerVar( -1, 3, 0 )
				endif
				$Varenci = GetPlayerVar( -1, 3536 )
				if $Varenci == $Time
					InsertPlayerVar( -1, 118, 1 )
				else
					InsertPlayerVar( -1, 118, 0 )
				endif
				$Varenci = GetPlayerVar( -1, 3539 )
				if $Varenci == $Time
					InsertPlayerVar( -1, 119, 1 )
				else
					InsertPlayerVar( -1, 119, 0 )
				endif
				if $level < 120
					$Var = GetPlayerVar( -1, 3956 )
					if $Var == $Time
							InsertPlayerVar( -1, 93, 1 )
					else
							InsertPlayerVar( -1, 93, 0 )
					endif
				endif
				$player_time = GetPlayerVar( -1, 3627 )
				if $player_time == $Time
					InsertPlayerVar( -1, 26, 1 )
				else
					InsertPlayerVar( -1, 26, 0 )
				endif
				InsertPlayerVar( -1, 28, 0 )
				InsertPlayerVar( -1, 43, 0 )
				if $level < 120
					$Task_Time = GetPlayerVar( -1, 3643 )
					if $Task_Time == $Time
							InsertPlayerVar( -1, 44, 1 )
					else
							InsertPlayerVar( -1, 44, 0 )
					endif
				endif
				if $level < 120
					$dati = GetPlayerVar( -1, 3710 )
					if $dati == $Time
							InsertPlayerVar( -1, 45, 1 )
					else
							InsertPlayerVar( -1, 45, 0 )
					endif
				endif
				if $level < 90
					$shu =  GetPlayerVar( -1, 3715 )
					if $shu == $Time
							InsertPlayerVar( -1, 46, 1 )
					else
							InsertPlayerVar( -1, 46, 0 )
					endif
				endif
				if $level < 100
					$quest_time = GetPlayerVar( -1, 3606 )
					if $quest_time == $Time
							$mofa = GetPlayerVar( -1 , 3203 )
							$mofa = $mofa - 1
							InsertPlayerVar( -1, 47, $mofa )
					else
							InsertPlayerVar( -1, 47, 0 )
					endif
				endif
				$player1_time = GetPlayerVar( -1, 3923 )
				if $player1_time == $Time
					InsertPlayerVar( -1, 50, 1 )
					InsertPlayerVar( -1, 52, 1 )
				else
					InsertPlayerVar( -1, 50, 0 )
					InsertPlayerVar( -1, 52, 0 )
				endif
				if $level < 120
					InsertPlayerVar( -1, 55, 0 )
				endif
				InsertPlayerVar( -1, 56, 0 )
				if $level < 120
					$use_number = GetPlayerVar( -1, 3644 )
					$use_time = GetPlayerVar( -1, 3645 )
					if $use_time == $Time
							InsertPlayerVar( -1, 61, $use_number )
					else
							InsertPlayerVar( -1, 61, 0 )
					endif
				endif
				if $level < 60
					$player2_time =  GetPlayerVar( -1, 3761 )
					$player2_number =  GetPlayerVar( -1, 3401 )
					if $player2_time == $Time
							InsertPlayerVar( -1, 65, $player2_number )
					else
							InsertPlayerVar( -1, 65, 0 )
					endif
				endif
				if $level < 75
					$player_time =  GetPlayerVar( -1, 3760 )
					$player_number =  GetPlayerVar( -1, 3400 )
					if $player_time == $Time
							InsertPlayerVar( -1, 63, $player_number )
					else
							InsertPlayerVar( -1, 63, 0 )
					endif
				endif
				if $level < 90
					$player3_time =  GetPlayerVar( -1, 3764 )
					$player3_number =  GetPlayerVar( -1, 3404 )
					if $player3_time == $Time
							InsertPlayerVar( -1, 66, $player3_number )
					else
							InsertPlayerVar( -1, 66, 0 )
					endif
				endif
				if $level < 100
					$player1_time =  GetPlayerVar( -1, 3762 )
					$player1_number =  GetPlayerVar( -1, 3402 )
					if $player1_time == $Time
							InsertPlayerVar( -1, 64, $player1_number )
					else
							InsertPlayerVar( -1, 64, 0 )
					endif
				endif
				if $level < 120
					$Player_titan = GetPlayerVar( -1, 4099 )
					if $Player_titan == $Time
							InsertPlayerVar( -1, 101, 1 )
					else
							InsertPlayerVar( -1, 101, 0 )
					endif
				endif
				$player4_time =  GetPlayerVar( -1, 3765 )
				$player4_number =  GetPlayerVar( -1, 3405 )
				if $player4_time == $Time
					InsertPlayerVar( -1, 70, $player4_number )
					InsertPlayerVar( -1, 72, $player4_number )
				else
					InsertPlayerVar( -1, 70, 0 )
					InsertPlayerVar( -1, 72, 0 )
				endif
				if $level < 120
					$day = GetPlayerVar( -1, 3759 )
					$count = GetPlayerVar( -1, 3228 )
					if $day == $Time
							InsertPlayerVar( -1, 74, $count )
					else
							InsertPlayerVar( -1, 74, 0 )
					endif
				endif
				if $level < 50
					$player1_time =  GetPlayerVar( -1, 3756 )
					$player1_number =  GetPlayerVar( -1, 3398 )
					if $player1_time == $Time
							InsertPlayerVar( -1, 76, $player1_number )
					else
							InsertPlayerVar( -1, 76, 0 )
					endif
				endif
				InsertPlayerVar( -1, 77, 0 )
				$RankList = GetRankListValue( 1, 499 )
				$level = GetPlayerInfo( -1, "level" )
				$playervar1 = GetPlayerVar( -1, 3752 )
				$today_time = GetSystemTime( "yday" )
				if $RankList >= 75
					if $RankList <= 89
							if $level <= 60
								if $playervar1 == $today_time
									InsertPlayerVar( -1, 78, 1 )
								else
									InsertPlayerVar( -1, 78, 0 )
								endif
							endif
					endif
				endif
				if $RankList >= 90
					if $RankList <= 99
							if $level <= 75
								if $playervar1 == $today_time
									InsertPlayerVar( -1, 78, 1 )
								else
									InsertPlayerVar( -1, 78, 0 )
								endif
							endif
					endif
				endif
				if $RankList >= 100
					if $RankList <= 109
							if $level <= 90
								if $playervar1 == $today_time
									InsertPlayerVar( -1, 78, 1 )
								else
									InsertPlayerVar( -1, 78, 0 )
								endif
							endif
					endif
				endif
				if $RankList >= 110
					if $RankList <= 119
							if $level <= 100
								if $playervar1 == $today_time
									InsertPlayerVar( -1, 78, 1 )
								else
									InsertPlayerVar( -1, 78, 0 )
								endif
							endif
					endif
				endif
				if $RankList >= 120
					if $RankList <= 130
							if $level <= 110
								if $playervar1 == $today_time
									InsertPlayerVar( -1, 78, 1 )
								else
									InsertPlayerVar( -1, 78, 0 )
								endif
							endif
					endif
				endif
				$today_time = GetSystemTime( "yday" )
				$player1_time =  GetPlayerVar( -1, 3770 )
				if $player1_time == $today_time
					InsertPlayerVar( -1, 79, 1 )
				else
					InsertPlayerVar( -1, 79, 0 )
				endif	
				InsertPlayerVar( -1, 80, 0 )
				$player_time = GetPlayerVar( -1, 3935 )
				$player_round = GetPlayerVar( -1, 3253 )
				if $player_time == $Time
					if $player_round <= 3
							InsertPlayerVar( -1, 87, $player_round )
					endif
				else
					InsertPlayerVar( -1, 87, 0 )
				endif
				$Time = GetSystemTime( "yday" )
				$Playervarsg = GetPlayerVar( -1, 3943 )
				if $Playervarsg == $Time
					InsertPlayerVar( -1, 91, 1 )
				else
					InsertPlayerVar( -1, 91, 0 )
				endif
				$xpxt1 = GetPlayerVar( -1, 3996 )
				$Now_Yday =  GetSystemTime( "yday" )
				$result = IsTaskDone( -1, 1735 )	
				$xpds = GetPlayerVar( -1, 3321 )
				if $xpds < 24
					if $result == 0						
							if $xpxt1 == $Now_Yday
									InsertPlayerVar( -1, 102, 1 )
							else 
									InsertPlayerVar( -1, 102, 0 )
							endif
					endif
				endif
				$xpxt2 = GetPlayerVar( -1, 3995 )
				if $xpds >= 24
					if $xpxt2 == $Now_Yday
							InsertPlayerVar( -1, 103, 1 )
					else
					InsertPlayerVar( -1, 103, 0 )
					endif
				endif
				if $level < 120
					$quest_time = GetPlayerVar( -1, 3412 )
					$sysyweek = GetNowWeek()
					if $quest_time == $sysyweek
							$timejoin = GetPlayerVar( -1 , 3413 )
							InsertPlayerVar( -1, 105, $timejoin )
					else
							InsertPlayerVar( -1, 105, 0 )
					endif
				endif
				InsertPlayerVar( -1, 107, 0 )
				$player_time = GetPlayerVar( -1, 4011 )
				if $player_time == $Now_Yday
					InsertPlayerVar( -1, 108, 1 )
				else
					InsertPlayerVar( -1, 108, 0 )
				endif
				$levelf = GetFieldLevel(-1)
				if $levelf < 20
					$player_time = GetPlayerVar( -1, 4013 )
					if $player_time == $Now_Yday
							InsertPlayerVar( -1, 109, 1 )
					else
							InsertPlayerVar( -1, 109, 0 )
					endif
				endif
				
				InsertPlayerVar( -1, 110, 0 )
					$quest_time = GetPlayerVar( -1, 3307 )
					$sysyweek = GetNowWeek()
					if $quest_time == $sysyweek
							$timejoin = GetPlayerVar( -1 , 3332 )
							InsertPlayerVar( -1, 111, $timejoin )
					else
							InsertPlayerVar( -1, 111, 0 )
					endif
					$player_time = GetPlayerVar( -1, 4047 )
					if $player_time == $Now_Yday
							InsertPlayerVar( -1, 112, 1 )
					else
							InsertPlayerVar( -1, 112, 0 )
					endif
				$today_week = GetNowWeek()
				$last_week = GetPlayerVar(-1 , 3415)
				if $today_week != $last_week
					$cishu = 0
					SetPlayerVar(-1 , 3416 ,$cishu)
				endif
				$player_time = GetPlayerVar( -1, 3416 )
				InsertPlayerVar( -1, 113, $player_time )
				$today_week = GetNowWeek()
				$weeks = GetPlayerVar( -1, 3420 )
				if $weeks == $today_week
					InsertPlayerVar( -1, 121, 1 )
				else
					InsertPlayerVar( -1, 121, 0 )
				endif
				$today_week = GetNowWeek()
				$weeks = GetPlayerVar( -1, 3561 )
				if $weeks == $today_week
					InsertPlayerVar( -1, 122, 1 )
				else
					InsertPlayerVar( -1, 122, 0 )
				endif	
				
				SendActivityRecord( -1, 0 )
				$today_week = GetNowWeek()
				$luoxuan = GetPlayerVar( -1, 3576 )
				if $today_week == $luoxuan
					InsertPlayerVar( -1, 126, 1 )
				else
					InsertPlayerVar( -1, 126, 0 )
				endif
				$jinzita = GetPlayerVar( -1, 3615 )
				if $jinzita == $Time
					InsertPlayerVar( -1, 8, 1 )
				else
					InsertPlayerVar( -1, 8, 0 )
				endif
				$days = GetPlayerVar( -1, 3617 )
				if $days == $Time
					InsertPlayerVar( -1, 9, 1 )
				else
					InsertPlayerVar( -1, 9, 0 )
				endif
				$chongbai = GetPlayerVar( -1, 3667 )
				if $chongbai == $Time
					InsertPlayerVar( -1, 27, 1 )
				else
					InsertPlayerVar( -1, 27, 0 )	
				endif
				$Task_Time = GetPlayerVar( -1, 3334 )
				$sysweek = GetNowWeek()
				if $Task_Time == $Time
					InsertPlayerVar( -1, 62, 1 )
				else
					InsertPlayerVar( -1, 62, 0 )
				endif
				$Now_Mday = GetSystemTime( "mday" )	
				$Now_Week = GetSystemTime( "week" )
				$Now_Year = GetSystemTime( "year" )
				$Now_Month = GetSystemTime( "month" )
				$TaskVar = GetPlayerVar( -1, 3681 )
				if $Now_Mday > 7
					if $Now_Mday <= 14
							if $Now_Week == 0
								if $TaskVar == $Time
									InsertPlayerVar( -1, 75, 1 )
								else
									InsertPlayerVar( -1, 75, 0 )
								endif
							endif
					endif	
				endif

				if $Now_Year == 2012
					if $Now_Month == 6
							if $Now_Mday == 24
								if $TaskVar == $Time
									InsertPlayerVar( -1, 115, 1 )
								else
									InsertPlayerVar( -1, 115, 0 )
								endif
							endif
					endif
				endif

				$today_time = GetSystemTime( "yday" )
				$days = GetPlayerVar( -1, 3769 )
				if $days == $today_time
					InsertPlayerVar( -1, 81, 1 )
				else
					InsertPlayerVar( -1, 81, 0 )
				endif

				$last_time = GetPlayerVar(-1,4087)
				$today_time = GetSystemTime( "yday" )
				if $last_time == $today_time
					InsertPlayerVar( -1, 124, 1 )
				else
					InsertPlayerVar( -1, 124, 0 )
				endif		
				

				InsertPlayerVar( -1, 98, 0 )

				InsertPlayerVar( -1, 100, 0 )

				InsertPlayerVar( -1, 104, 0 )

				InsertPlayerVar( -1, 120, 0 )

				InsertPlayerVar( -1, 116, 0 )
				
				SendActivityRecord( -1, 4 )
					
			}
		//------------------------------|
		//        Logout Activity       |
		//------------------------------|
			function OnLogoutReqActivity(){
				$Now_Month = GetSystemTime( "month" )
				$Now_Mday = GetSystemTime( "mday" )
				$Now_Week = GetSystemTime( "week" )
				$Now_Hour = GetSystemTime( "hour" )
				$Now_Minute = GetSystemTime( "minute")
				$Time = GetSystemTime( "yday" )
				$level = GetPlayerInfo( -1, "level" )
				$Var2 = GetPlayerVar( -1, 3763 )
				if $Var2 == $Time
					InsertPlayerVar( -1, 3, 1 )
				else
					InsertPlayerVar( -1, 3, 0 )
				endif
				$dati = GetPlayerVar( -1, 3710 )
				if $dati == $Time
					InsertPlayerVar( -1, 45, 1 )
				else
					InsertPlayerVar( -1, 45, 0 )
				endif
				$player1_time = GetPlayerVar( -1, 3923 )
				if $Now_Hour >= 12
					if $Now_Hour <= 13
							if $player1_time == $Time
								InsertPlayerVar( -1, 50, 1 )
							else
								InsertPlayerVar( -1, 50, 0 )
							endif
					endif
				endif
				if $Now_Hour >= 20
					if $Now_Hour <= 21
							if $player1_time == $Time
								InsertPlayerVar( -1, 52, 1 )
							else
								InsertPlayerVar( -1, 52, 0 )
							endif
					endif
				endif
				$use_number = GetPlayerVar( -1, 3644 )
				$use_time = GetPlayerVar( -1, 3645 )
				if $use_time == $Time
					InsertPlayerVar( -1, 61, $use_number )
				else
					InsertPlayerVar( -1, 61, 0 )
				endif
				if $level < 60
					$player2_time =  GetPlayerVar( -1, 3761 )
					$player2_number =  GetPlayerVar( -1, 3401 )
					if $player2_time == $Time
							InsertPlayerVar( -1, 65, $player2_number )
					else
							InsertPlayerVar( -1, 65, 0 )
					endif
				endif
				if $level < 75
					$player_time =  GetPlayerVar( -1, 3760 )
					$player_number =  GetPlayerVar( -1, 3400 )
					if $player_time == $Time
							InsertPlayerVar( -1, 63, $player_number )
					else
							InsertPlayerVar( -1, 63, 0 )
					endif
				endif
				if $level < 90
					$player3_time =  GetPlayerVar( -1, 3764 )
					$player3_number =  GetPlayerVar( -1, 3404 )
					if $player3_time == $Time
							InsertPlayerVar( -1, 66, $player3_number )
					else
							InsertPlayerVar( -1, 66, 0 )
					endif
				endif
				if $level < 100
					$player1_time =  GetPlayerVar( -1, 3762 )
					$player1_number =  GetPlayerVar( -1, 3402 )
					if $player1_time == $Time
							InsertPlayerVar( -1, 64, $player1_number )
					else
							InsertPlayerVar( -1, 64, 0 )
					endif
				endif
				if $level < 120
					$Player_titan = GetPlayerVar( -1, 4099 )
					if $Player_titan == $Time
							InsertPlayerVar( -1, 101, 1 )
					else
							InsertPlayerVar( -1, 101, 0 )
					endif
				endif
				if $Now_Hour >= 12
					if $Now_Hour <= 13
							$player4_time =  GetPlayerVar( -1, 3765 )
							$player4_number =  GetPlayerVar( -1, 3405 )
							if $player4_time == $Time
								InsertPlayerVar( -1, 70, $player4_number )
							else
								InsertPlayerVar( -1, 70, 0 )
							endif
					endif
				endif
				if $Now_Hour >= 20
					if $Now_Hour <= 21
							$player4_time =  GetPlayerVar( -1, 3765 )
							$player4_number =  GetPlayerVar( -1, 3405 )
							if $player4_time == $Time
								InsertPlayerVar( -1, 72, $player4_number )
							else
								InsertPlayerVar( -1, 72, 0 )
							endif
					endif
				endif
				$day = GetPlayerVar( -1, 3759 )
				$count = GetPlayerVar( -1, 3228 )
				if $day == $Time
					InsertPlayerVar( -1, 74, $count )
				else
					InsertPlayerVar( -1, 74, 0 )
				endif
				if $level < 45
					$player1_time =  GetPlayerVar( -1, 3756 )
					$player1_number =  GetPlayerVar( -1, 3398 )
					if $player1_time == $Time
							InsertPlayerVar( -1, 76, $player1_number )
					else
							InsertPlayerVar( -1, 76, 0 )
					endif
				endif
				$RankList = GetRankListValue( 1, 499 )
				$level = GetPlayerInfo( -1, "level" )
				$playervar1 = GetPlayerVar( -1, 3752 )
				$today_time = GetSystemTime( "yday" )
				if $RankList >= 75
					if $RankList <= 89
							if $level <= 60
								if $playervar1 == $today_time
									InsertPlayerVar( -1, 78, 1 )
								else
									InsertPlayerVar( -1, 78, 0 )
								endif
							endif
					endif
				endif
				if $RankList >= 90
					if $RankList <= 99
							if $level <= 75
								if $playervar1 == $today_time
									InsertPlayerVar( -1, 78, 1 )
								else
									InsertPlayerVar( -1, 78, 0 )
								endif
							endif
					endif
				endif
				if $RankList >= 100
					if $RankList <= 109
							if $level <= 90
								if $playervar1 == $today_time
									InsertPlayerVar( -1, 78, 1 )
								else
									InsertPlayerVar( -1, 78, 0 )
								endif
							endif
					endif
				endif
				if $RankList >= 110
					if $RankList <= 119
							if $level <= 100
								if $playervar1 == $today_time
									InsertPlayerVar( -1, 78, 1 )
								else
									InsertPlayerVar( -1, 78, 0 )
								endif
							endif
					endif
				endif
				if $RankList >= 120
					if $RankList <= 130
							if $level <= 110
								if $playervar1 == $today_time
									InsertPlayerVar( -1, 78, 1 )
								else
									InsertPlayerVar( -1, 78, 0 )
								endif
							endif
					endif
				endif
				$xpxt1 = GetPlayerVar( -1, 3996 )
				$Now_Yday =  GetSystemTime( "yday" )
				$result = IsTaskDone( -1, 1735 )	
				$xpds = GetPlayerVar( -1, 3321 )
				if $xpds < 24
					if $result == 0						
							if $xpxt1 == $Now_Yday
									InsertPlayerVar( -1, 102, 1 )
							else 
									InsertPlayerVar( -1, 102, 0 )
							endif
					endif
				endif
				$xpxt2 = GetPlayerVar( -1, 3995 )
				if $xpds >= 24
					if $xpxt2 == $Now_Yday
							InsertPlayerVar( -1, 103, 1 )
					else
					InsertPlayerVar( -1, 103, 0 )
					endif
				endif
				$levelf = GetFieldLevel(-1)
				if $levelf < 20
					$player_time = GetPlayerVar( -1, 4013 )
					if $player_time == $Now_Yday
							InsertPlayerVar( -1, 109, 1 )
					else
							InsertPlayerVar( -1, 109, 0 )
					endif
				endif

				$Time = GetSystemTime( "yday" )
				$Playervarsg = GetPlayerVar( -1, 3943 )
				if $Playervarsg == $Time
					InsertPlayerVar( -1, 91, 1 )
				else
					InsertPlayerVar( -1, 91, 0 )
				endif
				$player_time = GetPlayerVar( -1, 4047 )
				if $player_time == $Now_Yday
					InsertPlayerVar( -1, 112, 1 )
				else
					InsertPlayerVar( -1, 112, 0 )
				endif
				$today_week = GetNowWeek()
				$weeks = GetPlayerVar( -1, 3420 )
				if $weeks == $today_week
					InsertPlayerVar( -1, 121, 1 )
				else
					InsertPlayerVar( -1, 121, 0 )
				endif
				$today_week = GetNowWeek()
				$weeks = GetPlayerVar( -1, 3561 )
				if $weeks == $today_week
					InsertPlayerVar( -1, 122, 1 )
				else
					InsertPlayerVar( -1, 122, 0 )
				endif
				SendActivityRecord( -1, 2 )
				if $Now_Hour >= 18
					if $Now_Hour <= 20
							$days = GetPlayerVar( -1, 3617 )
							if $days == $Time
								InsertPlayerVar( -1, 9, 1 )
							else
								InsertPlayerVar( -1, 9, 0 )
							endif
					endif
				endif

				$chongbai = GetPlayerVar( -1, 3667 )
				if $chongbai == $Time
					InsertPlayerVar( -1, 27, 1 )
				else
					InsertPlayerVar( -1, 27, 0 )	
				endif
				$Task_Time = GetPlayerVar( -1, 3334 )
				$sysweek = GetNowWeek()
				if $Task_Time == $Time
					InsertPlayerVar( -1, 62, 1 )
				else
					InsertPlayerVar( -1, 62, 0 )
				endif
				$Now_Mday = GetSystemTime( "mday" )	
				$Now_Week = GetSystemTime( "week" )
				$Now_Year = GetSystemTime( "year" )
				$Now_Month = GetSystemTime( "month" )
				$TaskVar = GetPlayerVar( -1, 3681 )
				if $Now_Mday > 7
					if $Now_Mday <= 14
							if $Now_Week == 0
								if $Now_Hour >= 13
									if $Now_Hour <= 15
										if $TaskVar == $Time
												InsertPlayerVar( -1, 75, 1 )
										else
												InsertPlayerVar( -1, 75, 0 )
										endif
									endif	
								endif	
							endif
					endif	
				endif
				if $Now_Year == 2012
					if $Now_Month == 6
							if $Now_Mday == 24
								if $TaskVar == $Time
									InsertPlayerVar( -1, 115, 1 )
								else
									InsertPlayerVar( -1, 115, 0 )
								endif
							endif
					endif
				endif
				$today_time = GetSystemTime( "yday" )
				$days = GetPlayerVar( -1, 3769 )
					if $days == $today_time
							InsertPlayerVar( -1, 81, 1 )
					else
							InsertPlayerVar( -1, 81, 0 )
					endif
				InsertPlayerVar( -1, 100, 0 )
				InsertPlayerVar( -1, 104, 0 )
				SendActivityRecord( -1, 4 )

					
			}
		//------------------------------|
		//        Monster Kill Limit    |
		//------------------------------|
			function OnMosnterKillHalfLimit(){
				
				$Now_Month = GetSystemTime( "month" )
				$Now_Mday = GetSystemTime( "mday" )
				$Now_Week = GetSystemTime( "week" )
				$Time = GetSystemTime( "yday" )
				$Now_Hour = GetSystemTime( "hour" )
				$Now_Minute = GetSystemTime( "minute")
				$level = GetPlayerInfo( -1, "level" )
				SendActivityRecord( -1, 3 )
				
			}
		//------------------------------|
		//        Increase Love EXP     |
		//------------------------------|
			function OnIncreaseLoveExp(){
				
				PlayEffect( -1  , "common\xin\xin.ini" )
				
			}
		//------------------------------|
		//        Increase Love Level   |
		//------------------------------|
			function OnIncreaseLoveLevel(){
				
				PlayEffect( -1  , "common\Yanhua\tx_hunliyanhua\tx_hunliyanhua_08.ini" )
				
			}
		//------------------------------|
		//        Unused Function       |
		//------------------------------|
			function OnGainHappiness(){
				
			}	

			function OnIncreaseMarriageExp(){
				
			}	
			
			function OnIncreaseMarriageLevel(){
				
			}	
		//------------------------------|
		//        Wedding Begin         |
		//------------------------------|
			function OnMarriageCeremonyBegin(){
				$id1 = GetPlayerID()
				$id2 = GetTeamHeaderID( -1 )

				if $id1 == $id2
					$pid1 = GetTeamMemberID( -1 , 0 )
					$pid2 = GetTeamMemberID( -1 , 1 )
					$pid3 = GetTeamMemberID( -1 , 2 )
					$pid4 = GetTeamMemberID( -1 , 3 )
					$pid5 = GetTeamMemberID( -1 , 4 )
					$pid6 = GetTeamMemberID( -1 , 5 )

					if $pid1 > 0
							if $pid1 != $id1
								$id1 = $pid1
							endif
					endif
					
					if $id1 == $id2
							if $pid2 > 0
								if $pid2 != $id1
									$id1 = $pid2
								endif
							endif
					endif
					
					if $id1 == $id2
							if $pid3 > 0
								if $pid3 != $id1
									$id1 = $pid3
								endif
							endif
					endif
							
					if $id1 == $id2
							if $pid4 > 0
								if $pid4 != $id1
									$id1 = $pid4
								endif
							endif
					endif	
					
					if $id1 == $id2
							if $pid5 > 0
								if $pid5 != $id1
									$id1 = $pid5
								endif
							endif
					endif
					
					if $id1 == $id2
							if $pid6 > 0
								if $pid6 != $id1
									$id1 = $pid6
								endif
							endif
					endif
				endif
				
				#name1 = GetPlayerInfo( $id1 , "name" )
				#name2 = GetPlayerInfo( $id2 , "name" )

				$rea = CheckRelation($id1, $id2)
				
				if $rea != 3
					$marrycount = GetServerVar( 114 )
					$marrycount = $marrycount + 1
					SetServerVar ( 114 , $marrycount )
					//???????????,3725
					SetPlayerVar( $id1 , 3725 , $marrycount)
					SetPlayerVar( $id2 , 3725 , $marrycount)
					//???????????
					$line = GetServerLineID() 
					SetPlayerVar( $id1 , 3727 , $line )
					SetPlayerVar( $id2 , 3727 , $line )
				endif
				
			}
		//------------------------------|
		//        Wedding End           |
		//------------------------------|
			function OnMarriageCeremonyEnd(){
				
				BC( "screen", "map", 208, "The wedding has ended. Thanks for your participation. Enjoy the rest of the game." )
			
			}
		//------------------------------|
		//        Level UP              |
		//------------------------------|
			function OnLevelUp(){
				$level = GetPlayerInfo( -1, "level" )
				$VarCard = GetPlayerVar( -1, 3538 )             
				if $level >= 20                   
					if $VarCard == 0
							BC( "screen", "player", -1, "Fate Card system activated!" )
							AddTarotSlot(-1,2)
							AddTarotCostMax(-1,10)
							AddTarotCard(-1,103)
							AddTarotCard(-1,104)
							AddTarotCard(-1,108)
							AddTarotCard(-1,110)
							AddTarotCard(-1,113)
							$VarCard = $VarCard + 1
							SetPlayerVar( -1, 3538, $VarCard )
					endif
					$VarCardplus = GetPlayerVar( -1, 250 )
					if $VarCardplus == 0
							AddTarotCostMax(-1,10)
							SetPlayerVar( -1, 250, 1 )
					endif
				endif
				if $level >= 85
					if $VarCard == 1
							BC( "screen", "player", -1, "You found a new Fate Card gear slot!" )
							AddTarotSlot(-1,1)
							$VarCard = $VarCard + 1
							SetPlayerVar( -1, 3538, $VarCard )
					endif
				endif
				if $level >= 110
					if $VarCard == 2
							BC( "screen", "player", -1, "You found a new Fate Card gear slot!" )
							AddTarotSlot(-1,1)
							$VarCard = $VarCard + 1
							SetPlayerVar( -1, 3538, $VarCard )
					endif
				endif              
				
			}
		//------------------------------|
		//        Field Level UP        |
		//------------------------------|
			function OnFieldLevelUp(){
				
				$levelf = GetFieldLevel(-1)
				if $levelf >= 25
					$VarCard = GetPlayerVar( -1, 3538 )
					if $VarCard == 3
							BC( "screen", "player", -1, "You found a new Fate Card gear slot!" )
							AddTarotSlot(-1,1)
							$VarCard = $VarCard + 1
							SetPlayerVar( -1, 3538, $VarCard )
					endif
				endif
				
				}
		//------------------------------|
		//        Dead                  |
		//------------------------------|
			function OnDead(){                            
				$killerid = GetKillerID(-1)             
				if $killerid > 0
					$MapID = GetPlayerInfo(-1,"mapid")
					if $MapID >= 25801
							if $MapID <= 25910
								$killerid = GetKillerID(-1)
								#name = GetPlayerInfo($killerid,"name")
								$getvar = GetPlayerVar($killerid,4072)
								$getvar += 1
								SetPlayerVar($killerid,4072,$getvar)
								if $getvar == 10
									BC("screen","map",$MapID,"The hero ",#name,"] is on a killing spree! Killed ",$getvar," people so far!")
								endif
								if $getvar == 20
									BC("screen","map",$MapID,"The hero ",#name,"] is on a murderous rampage! Killed ",$getvar," people so far!")
								endif
								if $getvar == 50
									BC("screen","map",$MapID,"The hero ",#name,"] is unstoppable! Killed ",$getvar," people so far!")
									BC("chat","map",$MapID,"The hero ",#name,"] is unstoppable! Killed ",$getvar," people so far!")
								endif
								if $getvar == 100
									BC("screen","map",$MapID,"The hero ",#name,"] is on a mad slaughter!  Killed ",$getvar," people so far!")
									BC("chat","map",$MapID,"The hero ",#name,"] is on a mad slaughter!  Killed ",$getvar," people so far!")
									BC("screen","servergroup",-1,"The hero ",#name,"] went on a mad slaughter in the Demonshard Throne!")
									BC("chat","servergroup",-1,"The hero ",#name,"] went on a mad slaughter in the Demonshard Throne!")
								endif
								if $getvar == 200
									BC("screen","map",$MapID,"The hero ",#name,"] is on a godlike rampage! Killed ",$getvar," people so far!")
									BC("screen","map",$MapID,"The hero ",#name,"] is on a godlike rampage! Killed ",$getvar," people so far!")
									BC("chat","servergroup",-1,"The hero ",#name,"] went on a godlike rampage in the Demonshard Throne!")
									BC("chat","servergroup",-1,"The hero ",#name,"] went on a godlike rampage in the Demonshard Throne!")
								endif
								if $getvar == 500
									BC("screen","map",$MapID,"The hero ",#name,"] is greater than godlike! Killed ",$getvar," people so far! Can anyone stop them?!")
									BC("chat","map",$MapID,"The hero ",#name,"] is greater than godlike! Killed ",$getvar," people so far! Can anyone stop them?!")
									BC("screen","servergroup",-1,"The hero ",#name,"] was greater than godlike in the Demonshard Throne!")
									BC("chat","servergroup",-1,"The hero ",#name,"] was greater than godlike in the Demonshard Throne!")
								endif
								
							endif
					endif
				endif
				
			}
		//------------------------------|
		//        Field Quest           |
		//------------------------------| 
			function OnReqRushFieldTask(){
				$mylevel = GetPlayerInfo(-1, "level")
				$myfieldlevel = GetFieldLevel(-1 )
				$100minglevel = GetRankListValue(1, 99)
				$100mingfieldlevel = GetFieldRankListValue( 99)               
				$mday = GetSystemTime("mday")
				$day =  GetPlayerVar( -1, 3572 )

			if $day == $mday
				BC( "screen", "player", -1, "You've already accepted today's Race to Elysium quest. You can only do so once per day!" )
				return
			endif 

			$result = 0
			$result1 = IsTaskAccept( -1, 1870 )
			$result = $result + $result1
			$result2 = IsTaskAccept( -1, 1880 )
			$result = $result + $result2   
			$result3 = IsTaskAccept( -1, 1881 )
			$result = $result + $result3  
			$result4 = IsTaskAccept( -1, 1882 )
			$result = $result + $result4
			$result5 = IsTaskAccept( -1, 1883 )
			$result = $result + $result5
			$result6 = IsTaskAccept( -1, 1884 )
			$result = $result + $result6
			$result7 = IsTaskAccept( -1, 1885 )
			$result = $result + $result7
			$result8 = IsTaskAccept( -1, 1886 )
			$result = $result + $result8
			if $result != 8
				BC( "screen", "player", -1, "You haven't yet completed the Race to Elysium quest of that grade. Please complete it before accepting another!" )
				return
			endif
			if $mylevel >= 60
				if $mylevel < 75
					if $100minglevel >= 75
							$n = SetPlayerVar(-1 , 3572,  $mday)
							if $n == 0
								AcceptTask(-1,1880 )
								return    		
							endif	    		
					endif
				endif
			endif 

			if $mylevel >= 75
				if $mylevel < 90
					if $100minglevel >= 90
							$n = SetPlayerVar(-1 , 3572,  $mday)
							if $n == 0
								AcceptTask(-1,1881 )
								return    		
							endif	    		
					endif
				endif
			endif    

			if $mylevel >= 90
				if $mylevel < 100
					if $100minglevel >= 100
							$n = SetPlayerVar(-1 , 3572,  $mday)
							if $n == 0
								AcceptTask(-1,1882 )
								return    		
							endif	    		
					endif
				endif
			endif   

			if $mylevel >= 100
				if $mylevel < 115
					if $100minglevel >= 115
							$n = SetPlayerVar(-1 , 3572,  $mday)
							if $n == 0
								AcceptTask(-1,1883 )
								return    		
							endif	    		
					endif
				endif
			endif  

			if $mylevel >= 115
				if $mylevel < 120
					if $100minglevel >= 120
							$n = SetPlayerVar(-1 , 3572,  $mday)
							if $n == 0
								AcceptTask(-1,1884 )
								return    		
							endif	    		
					endif
				endif
			endif  

			if $myfieldlevel > 0
				if $myfieldlevel < 15
					if $100mingfieldlevel >= 15
							$n = SetPlayerVar(-1 , 3572,  $mday)
							if $n == 0
								AcceptTask(-1,1885 )
								return    		
							endif	    		
					endif
				endif
			endif

			if $myfieldlevel >= 15
				if $myfieldlevel < 30
					if $100mingfieldlevel >= 30
							$n = SetPlayerVar(-1 , 3572,  $mday)
							if $n == 0
								AcceptTask(-1,1886 )
								return    		
							endif	    		
					endif
				endif
			endif    
			}
		//------------------------------|
		//        Check Result          |
		//------------------------------|
			function checkresult(){
			$playercoin = GetPlayerVar(-1,4049)
			$playergift = GetPlayerVar(-1,4050)
			$lastjoin = GetPlayerVar(-1,3436)
			if $lastjoin > 0
				if $lastjoin < 3
					$lastjoin = 3
					SetPlayerVar(-1,3436,$lastjoin)
				endif
			endif
			
			$lastrace = GetGlobalVar(299)
			$chipQ = GetPlayerVar(-1,4076)
			$chipB = GetPlayerVar(-1,4077)
			$chipZ = GetPlayerVar(-1,4079)
			$chipX = GetPlayerVar(-1,4080)
			if $chipQ == 0
				if $chipB == 0
					if $chipZ == 0
                              if $chipX == 0
                                   $isret = 1
                              endif
					endif
				endif
			endif
			if $isret == 0
				if $lastjoin > 0
					if $lastrace >= $lastjoin
                              SetPlayerActLog(-1,45,$lastrace)
                              SetPlayerActLog(-1,46,$chipQ)
                              SetPlayerActLog(-1,47,$chipB)
                              SetPlayerActLog(-1,48,$chipZ)
                              SetPlayerActLog(-1,49,$chipX)
                              $race_result_index = 290 + $lastjoin
                              $playerindex = 285 + $lastjoin
                              $race_result = GetGlobalVar($race_result_index)
                              $gift = 0
                              if $race_result == 0

                              endif
                              if $race_result == 3
                                   if $chipQ > 0
                                        SetPlayerVar(-1,$playerindex,1)
                                        $coin = $chipQ * 2
                                        $chipQ = 0
                                        SendMail(-1,"New Year's Race - Emerald Dragon","Congratulations! Emerald Dragon you've rooted for won the last match! You can receive Commemorative Coins amounting to twice the amount of your Blessings from Dada. (If you blessed another contestant, you can also receive the small gifts amounting to the amount of your Blessings!)",0,0)
                                   else
                                        SendMail(-1,"New Year's Race - Emerald Dragon","Sorry, the contestant you've blessed in the last match has lost his match. You can receive certain number of small gifts from Dada!",0,0)
                                   endif
                                   $gift += $chipB
                                   $gift += $chipZ
                                   $gift += $chipX
                              endif
                              if $race_result == 4
                                   if $chipB > 0
                                        SetPlayerVar(-1,$playerindex,1)
                                        $coin = $chipB * 2
                                        $chipB = 0
                                        SendMail(-1,"New Year's Race - White Tiger","Congratulations! White Tiger you've rooted for won the last match! You can receive Commemorative Coins amounting to twice the amount of your Blessings from Dada. (If you blessed another contestant, you can also receive the small gifts amounting to the amount of your Blessings!)",0,0)
                                   else
                                        SendMail(-1,"New Year's Race - White Tiger","Sorry, the contestant you've blessed in the last match has lost his match. You can receive certain number of small gifts from Dada!",0,0)
                                   endif
                                   $gift += $chipQ
                                   $gift += $chipZ
                                   $gift += $chipX
                              endif
                              if $race_result == 5
                                   if $chipZ > 0
                                        SetPlayerVar(-1,$playerindex,1)
                                        $coin = $chipZ * 2
                                        $chipZ = 0
                                        SendMail(-1,"New Year's Race - Scarlet Phoenix","Congratulations! Scarlet Phoenix you've rooted for won the last match! You can receive Commemorative Coins amounting to twice the amount of your Blessings from Dada. (If you blessed another contestant, you can also receive the small gifts amounting to the amount of your Blessings!)",0,0)
                                   else
                                        SendMail(-1,"New Year's Race - Scarlet Phoenix","Sorry, the contestant you've blessed in the last match has lost his match. You can receive certain number of small gifts from Dada!",0,0)
                                   endif
                                   $gift += $chipB
                                   $gift += $chipQ
                                   $gift += $chipX
                              endif
                              if $race_result == 6
                                   if $chipX > 0
                                        SetPlayerVar(-1,$playerindex,1)
                                        $coin = $chipX * 2
                                        $chipX = 0
                                        SendMail(-1,"New Year's Race - Obsidian Turtle","Congratulations! Scarlet Phoenix you've rooted for won the last match! You can receive Commemorative Coins amounting to twice the amount of your Blessings from Dada. (If you blessed another contestant, you can also receive the small gifts amounting to the amount of your Blessings!)",0,0)
                                   else
                                        SendMail(-1,"New Year's Race - Obsidian Turtle","Sorry, the contestant you've blessed in the last match has lost his match. You can receive certain number of small gifts from Dada!",0,0)
                                   endif
                                   $gift += $chipB
                                   $gift += $chipZ
                                   $gift += $chipQ
                              endif
                              $playercoin += $coin
                              $playergift += $gift
                              SetPlayerVar(-1,4049,$playercoin)
                              SetPlayerVar(-1,4050,$playergift)
                              SetPlayerActLog(-1,51,$playercoin)
                              SetPlayerActLog(-1,54,$playergift)
                              SetPlayerVar(-1,4076,0)
                              SetPlayerVar(-1,4077,0)
                              SetPlayerVar(-1,4079,0)
                              SetPlayerVar(-1,4080,0)
					endif
				endif
			endif
			
			}
		//------------------------------|
		//        Valentine             |
		//------------------------------|
			function valentine(){


			$Now_Mday =  GetSystemTime( "mday" )

			$Now_Month =  GetSystemTime( "month" )

			$Now_Year =  GetSystemTime( "year" )

			$Now_Week =  GetSystemTime( "week" )

			$Now_Yday =  GetSystemTime( "yday" )

			$playervar = GetPlayerVar(-1,347)  
			if $playervar != 0 
				return
			endif 

				if $Now_Year != 2013 
			return
			endif
			if $Now_Yday < 46
			return
			endif  
			if $Now_Yday > 120 
			return
			endif
			$playervar = GetPlayerVar(-1,340)  
			if $playervar != 0 
				return
			endif 
			$idp = GetPlayerID()
			$value1 = GetGlobalVar(91 )
			$value2 = GetGlobalVar(92 )
			$value3 = GetGlobalVar(93 )

			if $idp == $value1
					SendMail(-1,"Drop-dead Gorgeous","Congratulations for earning first place in the Valentine's Day Charisma rankings! Hurry over to Skuld in Atlantis to accept your special prize!",0,0)
					SetPlayerVar(-1,347,1)
			endif   
				if $idp == $value2
					SendMail(-1,"Roughed and Rarin'","Congratulations for earning second place in the Valentine's Day Charisma rankings! Hurry over to Skuld in Atlantis to accept your special prize!",0,0)
					SetPlayerVar(-1,347,1)
			endif  
				if $idp == $value3
					SendMail(-1,"Love Boat","Congratulations for earning third place in the Valentine's Day Charisma rankings! Hurry over to Skuld in Atlantis to accept your special prize!",0,0)
					SetPlayerVar(-1,347,1)
			endif  

			}
	//-----------------------------------|
	//	Script : NEW Player Script      
	//	Author : Zenn                   
	//   Date   : 2023                   
	//-----------------------------------|HIDE HERE
		//------------------------------|
		//        Dungeon Reward        |
		//------------------------------|
			function DungeonRwd(){
				//--------------------|
				// Sys Setting        |
				//--------------------|
					$PlayerID = GetPlayerID()
					$Var = 3760
					$Point = GetPlayerVar(-1, $Var)
					$Max = 100 - $Point
					if $Point == 25
							SendMail( $PlayerID , "Daily Bounty" , "{#ffe09d00=Contain:#}{#ffca30e3= Common Chest#}\n{#FF30FFEE=Reward from complete Daily Bounty Event#}" , 0, 9 )
							$Point = $Point + 1
							SetPlayerVar(-1, $Var , $Point)
					endif

					if $Point == 50
							SendMail( $PlayerID , "Daily Bounty" , "{#ffe09d00=Contain:#}{#ffca30e3= Mysthic Chest#}\n{#FF30FFEE=Reward from complete Daily Bounty Event#}" , 0, 9 )
							$Point = $Point + 1
							SetPlayerVar(-1, $Var , $Point)                    
					endif

					if $Point == 100
							SendMail( $PlayerID , "Daily Bounty" , "{#ffe09d00=Contain:#}{#ffca30e3= Legendary Chest#}\n{#FF30FFEE=Reward from complete Daily Bounty Event#}" , 0, 9 )
							SetPlayerVar(-1, $Var, 0)
					endif
				
			}
		//------------------------------|
		//        Daily Reward          |
		//------------------------------|
			function dailyReward(){
				call vip()
				//--------------------|
				// VAR Setting        |
				//--------------------| 
					$V_lastday = 3880
					$V_reward = 3881
					$V_Noble = 4003
					$V_Point = 4020
					$lastDay = GetPlayerVar(-1, $V_lastday)  
					$nobleLv = GetPlayerVar(-1, $V_Noble)
					$Donate = GetPlayerVar(-1, $V_Point)  
					$nowDay = GetSystemTime("yday")
					$offDay = GetOffLineDays(-1)
					$bag1 = GetPlayerInfo(-1,"nullitem",0)
					$bag2 = GetPlayerInfo(-1,"nullitem",1)
				//--------------------|
				// Reward Setting     |
				//--------------------|                     
					$FCrystal = 9
					$Hammer1 = 2331
					$Hammer2 = 2332
					$Hammer3 = 2333
					$Hammer4 = 2334
					$Hammer5 = 2335
					$Hammer6 = 2336
					$Hammer7 = 2337
					$GTalisman1 = 2146
					$GTalisman2 = 2141
					$GTalisman3 = 2147
					$GemC1 = 59837
					$GemC2 = 59838
					$GemC3 = 59839
					$X2exp = 64402
					$MValkyrie = 6390
					$MArtemis = 6394
					$LValkyrie = 6602
					$LArtemis = 6605
					$Fmount = 62039
					$Vmount = 62069 
					$MedQTE = 2                                   
				//--------------------|
				// Check              |
				//--------------------|
					if $bag1 < 10
						if $Lang == 1
							BC( "messagebox", "player", -1, "{#FF19D47A=Cần ít nhất 10 ô trong Túi\nVui lòng sắp xếp túi đồ và Re-log#}" )		
						endif
						if $Lang == 2
							BC( "messagebox", "player", -1, "{#FF19D47A=You need atleast 10 Space on your inventory\nPlease sort out your bag and Re-log#}" )
						endif	
						return
					endif

					if $bag2 < 10
							BC( "messagebox", "player", -1, "{#FF19D47A=You need atleast 10 Space on your inventory\nPlease Re-log#}" )		
						return
					endif 
				//--------------------SENDING REWARD
					if $lastDay != $nowDay
						if $offDay > 1  
							$Reward = $Reward + $offDay
							if $Lang == 1
								BC( "messagebox", "player", -1, "{#FF19D47A=Bạn đã Offline ", $OfflineDays," Ngày\nĐã bỏ lỡ rất nhiều phần quà#}" )		
							endif
							if $Lang == 2
								BC( "messagebox", "player", -1, "{#FF19D47A=You has been Offline for ", $OfflineDays," Days\nYou miss out a lot of Reward#}" )	
							endif
							call expRefund()
						else
							$Reward = GetPlayerVar(-1, $V_reward)
						endif

						if $Reward == 0
							call dailyRwd1()
							SetPlayerVar( -1, $V_lastday, $nowDay)
							SetPlayerVar( -1, $V_reward, 1)
						endif
						if $Reward == 1
							call dailyRwd2()
							SetPlayerVar( -1, $V_lastday, $nowDay)
							SetPlayerVar( -1, $V_reward, 2)
						endif
						if $Reward == 2
							call dailyRwd3()
							SetPlayerVar( -1, $V_lastday, $nowDay)
							SetPlayerVar( -1, $V_reward, 3)
						endif
						if $Reward == 3
							call dailyRwd4()
							SetPlayerVar( -1, $V_lastday, $nowDay)
							SetPlayerVar( -1, $V_reward, 4)
						endif
						if $Reward == 4
							call dailyRwd5()
							SetPlayerVar( -1, $V_lastday, $nowDay)
							SetPlayerVar( -1, $V_reward, 5)
						endif
						if $Reward == 5
							call dailyRwd6()
							SetPlayerVar( -1, $V_lastday, $nowDay)
							SetPlayerVar( -1, $V_reward, 6)
						endif
						if $Reward == 6
							call dailyRwd7()
							SetPlayerVar( -1, $V_lastday, $nowDay)
							SetPlayerVar( -1, $V_reward, 0)
						endif
					endif
			}
		//------------------------------|
		//        Daily Rwd 1           |
		//------------------------------|
			function dailyRwd1(){
				if $nobleLv < 2
					AddPlayerInfo( -1,"item", $MArtemis, $MedQTE)
					AddPlayerInfo( -1,"item", $MValkyrie, $MedQTE)
					AddPlayerInfo( -1, "item", $Hammer1, 1)
					AddPlayerInfo( -1, "item", $FCrystal, 5)
				else   
					AddPlayerInfo( -1,"item", $MArtemis, $MedQTE)
					AddPlayerInfo( -1,"item", $MValkyrie, $MedQTE)
					AddPlayerInfo( -1, "item", $Hammer1, 1)
					AddPlayerInfo( -1, "item", $FCrystal, 5)
				endif  	                    
						
			}
		//------------------------------|
		//        Daily Rwd 2           |
		//------------------------------|
			function dailyRwd2(){
			}
		//------------------------------|
		//        Daily Rwd 3           |
		//------------------------------|
			function dailyRwd3(){
				
			}
		//------------------------------|
		//        Daily Rwd 4           |
		//------------------------------|
			function dailyRwd4(){
				
			}
		//------------------------------|
		//        Daily Rwd 5           |
		//------------------------------|
			function dailyRwd5(){
				
			}
		//------------------------------|
		//        Daily Rwd 6           |
		//------------------------------|
			function dailyRwd6(){
				
			}
		//------------------------------|
		//        Daily Rwd 7           |
		//------------------------------|
			function dailyRwd7(){
				
			}
		//------------------------------|
		//        Random Daily Rwd      |
		//------------------------------|
			function RandailyRwd(){
				
			}
		//------------------------------|
		//        VIP Player            |
		//------------------------------|
          function vip(){
               $Now_Yday =  GetSystemTime( "yday" ) 
               $Vip = GetPlayerVar( -1, 4002)
               if $Vip == 0
                    $Check = 1
                    return
               endif           
          }
