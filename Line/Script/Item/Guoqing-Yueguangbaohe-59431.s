	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/09/18
	//		Author:???
	//		TaskName:Guoqing-Yueguangbaohe-59431.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnUseItem(){
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 20
			BC( "screen", "player", -1, "Your character level is not over 20 yet." )
			return
		endif
		
		//??????????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		//??1?????
		$count = GetPlayerInfo( -1, "item", 59431 )
		if 	$count < 1
			BC( "screen", "player", -1, "You do not have enough Moonlight Chests. " )
			return
		endif
		//??????20?
		//????????100??
		
		$level = GetPlayerInfo(-1,"level")
		//???????
		$today_time = GetSystemTime( "yday" )
		//?????????
		$use_number = GetPlayerVar( -1 , 3209 )
		//???????????
		$last_use_time = GetPlayerVar( -1 , 3613 )
		
		//??????
			$revalue = SubPlayerInfo( -1, "item", 59431, 1)
			if $revalue == 0
				//??????20?
				//????????100??
				if $today_time == $last_use_time
					if $use_number < 20
					//---------------?????????????.?????20?.?????.??????+1
						$use_number = $use_number + 1
						SetPlayerVar( -1 , 3209 ,$use_number)
					//-----------------------
						$n = RandomNumber ( 1, 100 )
						if $n == 1
							if $level < 20
								$a = 200 - $level
								$b = $a * $level
								$add_money = $b / 5
								AddPlayerInfo(-1,"money",$add_money)
								//????? = ?? * (200-??)/5
								BC( "screen", "player", -1, "You opened a Moonlight Chest and found some coins. " )
							else
								BC( "screen", "player", -1, "You opened a Moonlight Chest and found Fortify Crystal Shard." )
								AddPlayerInfo( -1, "item", 11, 1 )
							endif
						endif
						if $n == 2
							$a = 200 - $level
							$b = $a * $level
							$add_money = $b / 5
							AddPlayerInfo(-1,"money",$add_money)
							//????? = ?? * (200-??)/5
							BC( "screen", "player", -1, "You opened a Moonlight Chest and found some coins. " )
						endif
						if $n == 3
							$a = 200 - $level
							$b = $a * $level
							$add_money = $b / 2
							
							AddPlayerInfo(-1,"money",$add_money)
							BC( "screen", "player", -1, "You opened a Moonlight Chest and found large amount of coins." )
						endif
						//-----------------------------------------------
						if $n > 3
							if $n <= 33
								if $level < 20
									$a = $level * $level
									$b = $level * 30
									$c = $a + $b
									$add_exp = $c + 25
									AddPlayerInfo(-1,"exp",$add_exp)
									//????? = ?? * ??+??*30 + 25
									BC( "screen", "player", -1, "You read the knowledge in the Moonlight Chest and gained some EXP." )
								else
									BC( "screen", "player", -1, "You opened the Moonlight Chest and found Fortify Crystal." )
									AddPlayerInfo( -1, "item", 1, 1 )
								endif
							endif
						endif
						if $n > 33
							if $n <= 66
								$a = $level * $level
								$b = $level * 30
								$c = $a + $b
								$add_exp = $c + 25
								AddPlayerInfo(-1,"exp",$add_exp)
								//????? = ?? * ??+??*30 + 25
								BC( "screen", "player", -1, "You read the knowledge in the Moonlight Chest and gained some EXP." )
							endif
						endif
						if $n > 66
//							$a = $level * $level
//							$b = $level * 50
//							$c = $a + $b
//							$add_exp = $c + 40
//							AddPlayerInfo(-1,"exp",$add_exp)
//							//????? = ?? * ??*2+??*50 + 40
							$m = RandomNumber ( 1, 100 )
							if $m < 10
								AddPlayerInfo(-1,"item",6539,1)
							endif
							if $m < 20
								if $m > 9
									AddPlayerInfo(-1,"item",6540,1)
								endif
							endif
							if $m < 30
								if $m > 19
									AddPlayerInfo(-1,"item",6541,1)
								endif
							endif
							if $m < 40
								if $m > 29
									AddPlayerInfo(-1,"item",6542,1)
								endif
							endif
							if $m < 50
								if $m > 39
									AddPlayerInfo(-1,"item",6543,1)
								endif
							endif
							if $m < 60
								if $m > 49
									AddPlayerInfo(-1,"item",6544,1)
								endif
							endif
							if $m < 70
								if $m > 59
									AddPlayerInfo(-1,"item",6545,1)
								endif
							endif
							if $m < 80
								if $m > 69
									AddPlayerInfo(-1,"item",6546,1)
								endif
							endif
							if $m < 90
								if $m > 79
									AddPlayerInfo(-1,"item",61049,1)
								endif
							endif
							if $m > 89
								AddPlayerInfo(-1,"item",61055,1)
							endif
						endif
					else
					//??????20?????.??100??
						AddPlayerInfo(-1,"exp",100)
						BC( "screen", "player", -1, "You have opened 20 Moonlight Chests today. You can only gain 100 EXP." )
					endif
				//??????????????????
				else
					//---------------?????????????.?????.???????1,?????????????????
					$use_number = 1
					SetPlayerVar( -1 , 3209 ,$use_number)
					SetPlayerVar( -1 ,3613 , $today_time)
			
					//-----------------------
					$n = RandomNumber ( 1, 100 )
					if $n == 1
						if $level < 20
							$a = 200 - $level
							$b = $a * $level
							$add_money = $b / 5
							AddPlayerInfo(-1,"money",$add_money)
							//????? = ?? * (200-??)/5
							BC( "screen", "player", -1, "You opened a Moonlight Chest and found some coins. " )
						else
							BC( "screen", "player", -1, "You opened a Moonlight Chest and found Fortify Crystal Shard." )
							AddPlayerInfo( -1, "item", 11, 1 )
						endif
					endif
					if $n == 2
						$a = 200 - $level
						$b = $a * $level
						$add_money = $b / 5
						AddPlayerInfo(-1,"money",$add_money)
						//????? = ?? * (200-??)/5
						BC( "screen", "player", -1, "You opened a Moonlight Chest and found some coins. " )
					endif
					if $n == 3
						$a = 200 - $level
						$b = $a * $level
						$add_money = $b / 2
						
						AddPlayerInfo(-1,"money",$add_money)
						BC( "screen", "player", -1, "You opened a Moonlight Chest and found large amount of coins." )
					endif
					//-----------------------------------------------
					if $n > 3
						if $n <= 33
							if $level < 20
								$a = $level * $level
								$b = $level * 30
								$c = $a + $b
								$add_exp = $c + 25
								AddPlayerInfo(-1,"exp",$add_exp)
								//????? = ?? * ??+??*30 + 25
								BC( "screen", "player", -1, "You read the knowledge in the Moonlight Chest and gained some EXP." )
							else
								BC( "screen", "player", -1, "You opened the Moonlight Chest and found Fortify Crystal." )
								AddPlayerInfo( -1, "item", 1, 1 )
							endif
						endif
					endif
					if $n > 33
						if $n <= 66
							$a = $level * $level
							$b = $level * 30
							$c = $a + $b
							$add_exp = $c + 25
							AddPlayerInfo(-1,"exp",$add_exp)
							//????? = ?? * ??+??*30 + 25
							BC( "screen", "player", -1, "You read the knowledge in the Moonlight Chest and gained some EXP." )
						endif
					endif
					if $n > 66
						$a = $level * $level
						$b = $level * 50
						$c = $a + $b
						$add_exp = $c + 40
						AddPlayerInfo(-1,"exp",$add_exp)
						//????? = ?? * ??*2+??*50 + 40
						BC( "screen", "player", -1, "You read the knowledge in the Moonlight Chest and gained a large amount of EXP." )
					endif
				endif
			endif
	}