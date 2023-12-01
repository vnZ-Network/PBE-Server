	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/06/19
	//		Author:???
	//		TaskName:npc-801&802.s
	//		TaskID:????NPC??
	//
	//****************************************	
	
	
	//??:
	//????????:3562
	//????????:3563
//3562		????											
//3563		????											
	//??????????:196
	//??????????:197
	
	function OnRequest() {
		
		//????:
		$nowweek = GetNowWeek()
		
		$3lastweek = GetPlayerVar(-1,3562)
		if $nowweek != $3lastweek
			SetPlayerVar(-1,196,0)
		endif
		
		$4lastweek = GetPlayerVar(-1,3563)
		if $nowweek != $4lastweek
			SetPlayerVar(-1,197,0)
		endif
		
		//?????????,1?????
		$star = 0
		$weekday = GetSystemTime ( "week" )
		$hour = GetSystemTime ( "hour" )
		
		if $weekday == 3
			if $hour >= 16
				if $hour < 18
					$star = 1
				endif
			endif
			if $hour >= 20
				if $hour < 22
					$star = 1
				endif
			endif
		endif
		
		if $weekday == 4
			if $hour >= 14
				if $hour < 18
					$star = 1
				endif
			endif
			if $hour >= 20
				if $hour < 22
					$star = 1
				endif
			endif
		endif
						
		if $weekday == 5
			if $hour >= 14
				if $hour < 16
					$star = 1
				endif
			endif
		endif
		
		if $star != 1
			DisableNpcOption(0)
		endif
		
	}
	
	//????
	function OnOption0() {
		
		
		//????????:
		$weekday = GetSystemTime ( "week" )
		$hour = GetSystemTime ( "hour" )
		
		$jie = 0
		//????
		if $weekday == 3
			if $hour >= 16
				if $hour < 18
					$jie = 1
				endif
			endif
			if $hour >= 20
				if $hour < 22
					$jie = 1
				endif
			endif
		endif
		
		if $weekday == 4
			if $hour >= 14
				if $hour < 16
					$jie = 1
				endif
			endif
		endif
		
		//????
		if $weekday == 4
			if $hour >= 16
				if $hour < 18
					$jie = 2
				endif
			endif
			if $hour >= 20
				if $hour < 22
					$jie = 2
				endif
			endif
		endif
		
		if $weekday == 5
			if $hour >= 14
				if $hour < 16
					$jie = 2
				endif
			endif
		endif
		
		//??,??$jie=1 ????????,??$jie=2 ?????????
		$3taskdone = GetPlayerVar(-1,196)
		$4taskdone = GetPlayerVar(-1,197)
		$have_3task = IsTaskAccept (-1, 1860)
		$have_4task = IsTaskAccept (-1, 1861)
		
		$level = GetPlayerInfo ( -1, "level")
		if $level < 75
			BC ("screen","player",-1,"You have to be at least LV75 to participate!")
			return
		endif
		//?????
		if $jie == 1
			if $3taskdone == 1
				BC ("screen","player",-1,"You've already completed this round of BOI Radio quests, stay tuned for the next one!")
				return
			else
				if $have_3task == 0
					BC ("screen", "player", -1, "N/A??????,???????")
					return
				else
					CancelTask(-1,1861)
					$3renwu = AcceptTask(-1,1860)
				endif
			endif
		endif
		
		//?????
		if $jie == 2
			if $4taskdone == 1
				BC ("screen","player",-1,"You've already completed this round of BOI Radio quests, stay tuned for the next one!")
				return
			else
				if $have_4task == 0
					BC ("screen", "player", -1, "N/A??????,???????")
					return
				else
					CancelTask(-1,1860)
					$4renwu = AcceptTask(-1,1861)
				endif
			endif
		endif
		
	}
		
		function OnOption1() {
			
			//?????
			//131 ???????1??????? 44268 ???????
			//132 ???????2???????	44269 ?????
			//133 ???????3???????	44270 ?????
			
			$servervar_num1 = 131
			$servervar_num2 = 132
			$servervar_num3 = 133
			
			$item1_id = 44268
			$item2_id = 44269
			$item3_id = 44270
			
			//????
			$playerlevel = GetPlayerInfo(-1,"level")
			$exp1 = $playerlevel * $playerlevel
			$expend = $exp1 * 300
			$halfexp = $expend / 2
			
			//??????
			$fieldlevel = GetFieldLevel(-1)
			$fieldexp1 = $fieldlevel * $fieldlevel
			$fieldexp2 = $fieldlevel * 6
			$fieldexp3 = $fieldexp2 / 10
			$fieldexp4 = $fieldexp1 + $fieldexp3
			$fieldexp5 = $fieldexp4 + 1000
			$fieldexpend = $fieldexp5 * 30
			$halffieldexp = $fieldexpend / 2
			
			//????
			$money = 730 * $playerlevel
			$moneyend = $money - 45000
			
			//???????
			$have_3task = IsTaskAccept(-1,1860)
			$have_4task = IsTaskAccept(-1,1861)
			if $have_3task != 0
				if $have_4task != 0
					BC ("screen","player",-1,"You haven't received the quest!")
					return
				endif
			endif
			
			//????
			$bag_count = GetPlayerInfo (-1, "nullitem", 0)
			if $bag_count < 1
				BC ("screen","player",-1,"There is not enough space in your bag.")
				return
			endif
			
			//?????????
			$req_num1 = GetGlobalVar ( $servervar_num1 )
			$req_num2 = GetGlobalVar ( $servervar_num2 )
			$req_num3 = GetGlobalVar ( $servervar_num3 )			
			//???????
			$player_num1 = GetPlayerInfo ( -1, "item", $item1_id )
			$player_num2 = GetPlayerInfo ( -1, "item", $item2_id )
			$player_num3 = GetPlayerInfo ( -1, "item", $item3_id )
			
			//?????????,???????
			if $player_num1 < $req_num1
				BC ("screen", "player", -1, "N/A???????????!")
				return
			endif
			
			if $player_num2 < $req_num2
				BC ("screen", "player", -1, "N/A???????????!")
				return
			endif
			
			if $player_num3 < $req_num3
				BC ("screen", "player", -1, "N/A???????????!")
				return
			endif
			
			//????
			$nowweek = GetNowWeek()		
			$3lastweek = GetPlayerVar(-1,3562)
			$4lastweek = GetPlayerVar(-1,3563)
			
			if $have_3task == 0	
				if $player_num1 == $req_num1
					if $player_num2 == $req_num2
						if $player_num3 == $req_num3
												
							//?????
							$del1 = SubPlayerInfo (-1, "item", $item1_id, $player_num1)
							$del2 = SubPlayerInfo (-1, "item", $item2_id, $player_num2)
							$del3 = SubPlayerInfo (-1, "item", $item3_id, $player_num3)
							if $del1 == 0
								if $del2 == 0
									if $del3 == 0
										//????
										$taskdone = SetTaskDone (-1, 1860)
										if $taskdone == 0
											AddPlayerInfo (-1, "exp", $expend)
											AddFieldExp(-1,$fieldexpend)
											AddPlayerInfo (-1,"item",44266, 1)
											AddPlayerInfo (-1,"money",$moneyend)
											BC ("screen", "player", -1, "Quest Clear!")
											SetPlayerVar(-1,196,1)
											SetPlayerVar(-1,3562,$nowweek)
										endif
									endif
								endif
							endif
						else
						//?????
							$del1 = SubPlayerInfo (-1, "item", $item1_id, $player_num1)
							$del2 = SubPlayerInfo (-1, "item", $item2_id, $player_num2)
							$del3 = SubPlayerInfo (-1, "item", $item3_id, $player_num3)
							if $del1 == 0
								if $del2 == 0
									if $del3 == 0
										$taskdone = SetTaskDone (-1, 1860)
										if $taskdone == 0
											AddPlayerInfo (-1, "exp", $halfexp)
											AddFieldExp(-1,$halffieldexp)
											AddPlayerInfo (-1,"money",$moneyend)
											BC ("screen", "player", -1, "You've surpassed my request! I really can't give you this photo album!")
											SetPlayerVar(-1,196,1)
											SetPlayerVar(-1,3562,$nowweek)
										endif
									endif
								endif
							endif
						endif
					else
					//?????
						$del1 = SubPlayerInfo (-1, "item", $item1_id, $player_num1)
						$del2 = SubPlayerInfo (-1, "item", $item2_id, $player_num2)
						$del3 = SubPlayerInfo (-1, "item", $item3_id, $player_num3)
						if $del1 == 0
							if $del2 == 0
								if $del3 == 0
									$taskdone = SetTaskDone (-1, 1860)
									if $taskdone == 0
										AddPlayerInfo (-1, "exp", $halfexp)
										AddFieldExp(-1,$halffieldexp)
										AddPlayerInfo (-1,"money",$moneyend)
										BC ("screen", "player", -1, "You've surpassed my request! I really can't give you this photo album!")
										SetPlayerVar(-1,196,1)
										SetPlayerVar(-1,3562,$nowweek)
									endif
								endif
							endif
						endif
					endif
				else
				//?????
					$del1 = SubPlayerInfo (-1, "item", $item1_id, $player_num1)
					$del2 = SubPlayerInfo (-1, "item", $item2_id, $player_num2)
					$del3 = SubPlayerInfo (-1, "item", $item3_id, $player_num3)
					if $del1 == 0
						if $del2 == 0
							if $del3 == 0
								$taskdone = SetTaskDone (-1, 1860)
								if $taskdone == 0
									AddPlayerInfo (-1, "exp", $halfexp)
									AddFieldExp(-1,$halffieldexp)
									AddPlayerInfo (-1,"money",$moneyend)
									BC ("screen", "player", -1, "You've surpassed my request! I really can't give you this photo album!")
									SetPlayerVar(-1,196,1)
									SetPlayerVar(-1,3562,$nowweek)
								endif
							endif
						endif
					endif
				endif
			endif
						
			if $have_4task == 0
				if $player_num1 == $req_num1
					if $player_num2 == $req_num2
						if $player_num3 == $req_num3
												
							//?????
							$del1 = SubPlayerInfo (-1, "item", $item1_id, $player_num1)
							$del2 = SubPlayerInfo (-1, "item", $item2_id, $player_num2)
							$del3 = SubPlayerInfo (-1, "item", $item3_id, $player_num3)
							if $del1 == 0
								if $del2 == 0
									if $del3 == 0
										//????
										$taskdone = SetTaskDone (-1, 1861)
										if $taskdone == 0
											AddPlayerInfo (-1, "exp", $expend)
											AddFieldExp(-1,$fieldexpend)
											AddPlayerInfo (-1,"item",44266, 1)
											AddPlayerInfo (-1,"money",$moneyend)
											BC ("screen", "player", -1, "Quest Clear!")
											SetPlayerVar(-1,197,1)
											SetPlayerVar(-1,3563,$nowweek)
										endif
									endif
								endif
							endif
						else
						//?????
							$del1 = SubPlayerInfo (-1, "item", $item1_id, $player_num1)
							$del2 = SubPlayerInfo (-1, "item", $item2_id, $player_num2)
							$del3 = SubPlayerInfo (-1, "item", $item3_id, $player_num3)
							if $del1 == 0
								if $del2 == 0
									if $del3 == 0
										$taskdone = SetTaskDone (-1, 1861)
										if $taskdone == 0
											AddPlayerInfo (-1, "exp", $halfexp)
											AddFieldExp(-1,$halffieldexp)
											AddPlayerInfo (-1,"money",$moneyend)
											BC ("screen", "player", -1, "You've surpassed my request! I really can't give you this photo album!")
											SetPlayerVar(-1,197,1)
											SetPlayerVar(-1,3563,$nowweek)
										endif
									endif
								endif
							endif
						endif
					else
					//?????
						$del1 = SubPlayerInfo (-1, "item", $item1_id, $player_num1)
						$del2 = SubPlayerInfo (-1, "item", $item2_id, $player_num2)
						$del3 = SubPlayerInfo (-1, "item", $item3_id, $player_num3)
						if $del1 == 0
							if $del2 == 0
								if $del3 == 0
									$taskdone = SetTaskDone (-1, 1861)
									if $taskdone == 0
										AddPlayerInfo (-1, "exp", $halfexp)
										AddFieldExp(-1,$halffieldexp)
										AddPlayerInfo (-1,"money",$moneyend)
										BC ("screen", "player", -1, "You've surpassed my request! I really can't give you this photo album!")
										SetPlayerVar(-1,197,1)
										SetPlayerVar(-1,3563,$nowweek)
									endif
								endif
							endif
						endif
					endif
				else
				//?????
					$del1 = SubPlayerInfo (-1, "item", $item1_id, $player_num1)
					$del2 = SubPlayerInfo (-1, "item", $item2_id, $player_num2)
					$del3 = SubPlayerInfo (-1, "item", $item3_id, $player_num3)
					if $del1 == 0
						if $del2 == 0
							if $del3 == 0
								$taskdone = SetTaskDone (-1, 1861)
								if $taskdone == 0
									AddPlayerInfo (-1, "exp", $halfexp)
									AddFieldExp(-1,$halffieldexp)
									AddPlayerInfo (-1,"money",$moneyend)
									BC ("screen", "player", -1, "You've surpassed my request! I really can't give you this photo album!")
									SetPlayerVar(-1,197,1)
									SetPlayerVar(-1,3563,$nowweek)
								endif
							endif
						endif
					endif
				endif
			endif
			
		}
							
					