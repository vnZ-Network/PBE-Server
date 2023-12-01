	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/01
	//		Author:??
	//		TaskName:ITEM-huanwupin64242.s
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
		$bag_count = GetPlayerInfo( -1, "nullitem", 1 )
		
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient material bag slots!" )
			return
		endif
		
		//??1?????
		$count = GetPlayerInfo( -1, "item", 64242 )
		if 	$count < 1
			BC( "screen", "player", -1, "Insufficient Chests of Luck!" )
			return
		endif
		//??????20?,??????40?
		//????????100??
		
		$level = GetPlayerInfo(-1,"level")
		//???????
		$today_time = GetSystemTime( "yday" )
		//?????????
		$use_number = GetPlayerVar( -1 , 3209 )
		//???????????
		$last_use_time = GetPlayerVar( -1 , 3613 )
		//??????
		$vip = IsDiamondVIP(-1)
		//?????
		//????? = ????^2+0.6*????+1000
		//????? = ????? / 3
		//????? = ????? / 5
		
		$fieldlevel = GetFieldLevel(-1)
		$godexp = $fieldlevel * $fieldlevel
		$b = $fieldlevel * 6
		$b = $b / 10
		$godexp = $godexp + $b
		$godexp = $godexp + 1000
		$godexp1 = $godexp / 3
		$godexp2 = $godexp / 5
		
		//??????
			$revalue = SubPlayerInfo( -1, "item", 64242, 1)
			if $revalue == 0
				//??????20?
				//????????100??
				if $today_time == $last_use_time
							
					if $vip == 0
					
						if $use_number < 40
					//---------------?????????????.?????40?.?????.??????+1
						$use_number = $use_number + 1
						SetPlayerVar( -1 , 3209 ,$use_number)
						BC( "screen", "player", -1, "You are now a Platinum Noble. Now you are ranked ", $use_number ," to open a chest, and the chest can not be opened more than 40 times a day." )
						//-----------------------
						$n = RandomNumber ( 1, 100 )
						if $n == 1
							if $level < 45
								$a = 200 - $level
								$temp_level = $level + $fieldlevel
								$b = $a * $temp_level
								$add_money = $b / 5
								AddPlayerInfo(-1,"money",$add_money)
								//????? = ?? * (200-??)/5
								BC( "screen", "player", -1, "You opened the Chest of Luck and discovered some coins!" )
							else
								BC( "screen", "player", -1, "You opened the Chest of Luck and discovered the Fortify Crystal Shard!" )
								AddPlayerInfo( -1, "item", 11, 1 )
							endif
						endif
						if $n == 2
							$a = 200 - $level
							$temp_level = $level + $fieldlevel
							$b = $a * $temp_level
							$add_money = $b / 5
							AddPlayerInfo(-1,"money",$add_money)
							//????? = ?? * (200-??)/5
							BC( "screen", "player", -1, "You opened the Chest of Luck and discovered some coins!" )
						endif
						if $n == 3
							$a = 200 - $level
							$temp_level = $level + $fieldlevel
							$b = $a * $temp_level
							$add_money = $b / 2
							//????? = ?? * (200-??)/2
							AddPlayerInfo(-1,"money",$add_money)
							BC( "screen", "player", -1, "You opened the Chest of Luck and discovered lots of coins!" )
						endif
						//-----------------------------------------------
						if $n > 3
							if $n <= 33
								if $level < 45
									$a = $level * $level
									$b = $level * 30
									$c = $a + $b
									$add_exp = $c + 25
									AddPlayerInfo(-1,"exp",$add_exp)
									//????? = ?? * ??+??*30 + 25
									BC( "screen", "player", -1, "You read the book inside the Chest of Luck, and earned some EXP from it!" )
								else
									BC( "screen", "player", -1, "You opened the Chest of Luck and discovered a Fortify Crystal!" )
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
								if  $fieldlevel > 0
									AddFieldExp( -1 , $godexp1 )	
								endif
								BC( "screen", "player", -1, "You read the book inside the Chest of Luck, and earned some EXP from it!" )
							endif
						endif
						if $n > 66
							$a = $level * $level
							$b = $level * 50
							$c = $a + $b
							$add_exp = $c + 40
							AddPlayerInfo(-1,"exp",$add_exp)
							//????? = ?? * ??*2+??*50 + 40
							if  $fieldlevel > 0
								AddFieldExp( -1 , $godexp2 )	
							endif
							BC( "screen", "player", -1, "You read the book inside the Chest of Luck, and earned lots of EXP from it!" )
						endif
					else
					//??????40?????.??100??
						AddPlayerInfo(-1,"exp",100)
						BC( "screen", "player", -1, "You have opened the chest 40 times. You only get 100 EXP" )
						if  $fieldlevel > 0
							AddFieldExp( -1 , 3 )
							BC( "screen", "player", -1, "You've opened a Lucky Chest 40 times, you only get 3 Exaltation." )	
						endif	
					endif	
							
				//??????VIP??
				 else			
						if $use_number < 20
						//---------------?????????????.?????20?.?????.??????+1
							$use_number = $use_number + 1
							SetPlayerVar( -1 , 3209 ,$use_number)
							BC( "screen", "player", -1, "You have opened ", $use_number ," Chests of Luck. You'll get reduced rewards if you open more than 20 per day." )
							//-----------------------
							$n = RandomNumber ( 1, 100 )
							if $n == 1
								if $level < 45
									$a = 200 - $level
									$temp_level = $level + $fieldlevel
									$b = $a * $temp_level
									$add_money = $b / 5
									AddPlayerInfo(-1,"money",$add_money)
									//????? = ?? * (200-??)/5
									BC( "screen", "player", -1, "You opened the Chest of Luck and discovered some coins!" )
								else
									BC( "screen", "player", -1, "You opened the Chest of Luck and discovered the Fortify Crystal Shard!" )
									AddPlayerInfo( -1, "item", 11, 1 )
								endif
							endif
							if $n == 2
								$a = 200 - $level
								$temp_level = $level + $fieldlevel
								$b = $a * $temp_level
								$add_money = $b / 5
								AddPlayerInfo(-1,"money",$add_money)
								//????? = ?? * (200-??)/5
								BC( "screen", "player", -1, "You opened the Chest of Luck and discovered some coins!" )
							endif
							if $n == 3
								$a = 200 - $level
								$temp_level = $level + $fieldlevel
								$b = $a * $temp_level
								$add_money = $b / 2
								//????? = ?? * (200-??)/2
								AddPlayerInfo(-1,"money",$add_money)
								BC( "screen", "player", -1, "You opened the Chest of Luck and discovered lots of coins!" )
							endif
							//-----------------------------------------------
							if $n > 3
								if $n <= 33
									if $level < 45
										$a = $level * $level
										$b = $level * 30
										$c = $a + $b
										$add_exp = $c + 25
										AddPlayerInfo(-1,"exp",$add_exp)
										//????? = ?? * ??+??*30 + 25
										BC( "screen", "player", -1, "You read the book inside the Chest of Luck, and earned some EXP from it!" )
									else
										BC( "screen", "player", -1, "You opened the Chest of Luck and discovered a Fortify Crystal!" )
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
									if  $fieldlevel > 0
										AddFieldExp( -1 , $godexp1 )	
									endif
									BC( "screen", "player", -1, "You read the book inside the Chest of Luck, and earned some EXP from it!" )
								endif
							endif
							if $n > 66
								$a = $level * $level
								$b = $level * 50
								$c = $a + $b
								$add_exp = $c + 40
								AddPlayerInfo(-1,"exp",$add_exp)
								//????? = ?? * ??*2+??*50 + 40
								if  $fieldlevel > 0
									AddFieldExp( -1 , $godexp2 )	
								endif
								BC( "screen", "player", -1, "You read the book inside the Chest of Luck, and earned lots of EXP from it!" )
							endif
						else
						//??????20?????.??100??
							AddPlayerInfo(-1,"exp",100)
							BC( "screen", "player", -1, "You have opened the Chest of Luck 20 times. Now you can earn only 100 EXP!" )
							if  $fieldlevel > 0
								AddFieldExp( -1 , 3 )
								BC( "screen", "player", -1, "You've opened a Lucky Chest 20 times, you only get 3 Exaltation." )	
							endif	
						endif
					endif
				//??????????????????
				else
					//---------------?????????????.?????.???????1,?????????????????
					$use_number = 1
					SetPlayerVar( -1 , 3209 ,$use_number)
					SetPlayerVar( -1 ,3613 , $today_time)
					BC( "screen", "player", -1, "You have opened ", $use_number ,"st Chest of Luck today. Good luck!" )
					//-----------------------
					$n = RandomNumber ( 1, 100 )
					if $n == 1
						if $level < 45
							$a = 200 - $level
							$temp_level = $level + $fieldlevel
							$b = $a * $temp_level
							$add_money = $b / 5
							AddPlayerInfo(-1,"money",$add_money)
							//????? = ?? * (200-??)/5
							BC( "screen", "player", -1, "You opened the Chest of Luck and discovered some coins!" )
						else
							BC( "screen", "player", -1, "You opened the Chest of Luck and discovered the Fortify Crystal Shard!" )
							AddPlayerInfo( -1, "item", 11, 1 )
						endif
					endif
					if $n == 2
						$a = 200 - $level
						$temp_level = $level + $fieldlevel
						$b = $a * $temp_level
						$add_money = $b / 5
						AddPlayerInfo(-1,"money",$add_money)
						//????? = ?? * (200-??)/5
						BC( "screen", "player", -1, "You opened the Chest of Luck and discovered some coins!" )
					endif
					if $n == 3
						$a = 200 - $level
						$temp_level = $level + $fieldlevel
						$b = $a * $temp_level
						$add_money = $b / 2
						//????? = ?? * (200-??)/2
						AddPlayerInfo(-1,"money",$add_money)
						BC( "screen", "player", -1, "You opened the Chest of Luck and discovered lots of coins!" )
					endif
					//-----------------------------------------------
					if $n > 3
						if $n <= 33
							if $level < 45
								$a = $level * $level
								$b = $level * 30
								$c = $a + $b
								$add_exp = $c + 25
								AddPlayerInfo(-1,"exp",$add_exp)
								//????? = ?? * ??+??*30 + 25
								BC( "screen", "player", -1, "You read the book inside the Chest of Luck, and earned some EXP from it!" )
							else
								BC( "screen", "player", -1, "You opened the Chest of Luck and discovered a Fortify Crystal!" )
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
							if  $fieldlevel > 0
								AddFieldExp( -1 , $godexp1 )	
							endif
							BC( "screen", "player", -1, "You read the book inside the Chest of Luck, and earned some EXP from it!" )
						endif
					endif
					if $n > 66
						$a = $level * $level
						$b = $level * 50
						$c = $a + $b
						$add_exp = $c + 40
						AddPlayerInfo(-1,"exp",$add_exp)
						//????? = ?? * ??*2+??*50 + 40
						if  $fieldlevel > 0
							AddFieldExp( -1 , $godexp2 )	
						endif
						BC( "screen", "player", -1, "You read the book inside the Chest of Luck, and earned lots of EXP from it!" )
					endif
				endif
			endif
			
	}