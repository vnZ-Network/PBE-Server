	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/2/24
	//		Author:??
	//		TaskName:HD-paoshang-quest525.s
	//		TaskID:??????
	//
	//****************************************
	//3225 ??????,????
	//3675 ???????????,????
	//???????6?
	
		function OnTaskDone(){

		//??????
		//????????
		//??
		$Now_Minute =  GetSystemTime( "minute")
		//??
		$Now_Hour =  GetSystemTime( "hour" )
		//??
		$Now_Mday =  GetSystemTime( "mday" )	
		//??
		$Now_Month =  GetSystemTime( "month" )
		//???.0-6
		$Now_Week =  GetSystemTime( "week" )
		//??????.0-365
		$Now_Yday =  GetSystemTime( "yday" )
		//??????
		$Line = GetServerLineID()
		
		
		//--------------------------------------------------------------???
		$days = GetPlayerVar(-1 , 3675)
		$number = GetPlayerVar(-1 , 3225)
		
		if $days == $Now_Yday
			$number = $number + 1
			SetPlayerVar(-1 ,3225 , $number)
		else
			SetPlayerVar(-1 ,3675 , $Now_Yday)
			SetPlayerVar(-1 ,3225 , 1)
		endif
		
		//if $number > 6
		//	BC( "messagebox", "player", -1 ,"GUID:05045000000" )
		//	return
		//endif
		//---------------------------------------------------------------------
		//?3???????
		$temp_value = $Now_Minute / 3
		
		$a = $Now_Hour + $Now_Month
		$b = $Now_Mday + $Now_Week
		
		//???????
		$c = 13 * $temp_value
		
		$d = $a + $b
		$e = $b + $c
		$f = $d + $e
		
		$random_number = $f % 6
		//?????????????
		
		if $random_number == 0
			$money = 15349
		endif
		if $random_number == 1
			$money = 18229
		endif
		if $random_number == 2
			$money = 20029
		endif
		if $random_number == 3
			$money = 21589
		endif
		if $random_number == 4
			$money = 23269
		endif
		if $random_number == 5
			$money = 25117
			#name = GetPlayerInfo(-1 , "name")
			BC( "screen", "server", -1 ,"The hero ",#name," got the top prize in Crazy Shopping!" )
		endif
		
		//????????
		$status_value = IsExistStatus(-1 , 10518)
		if $status_value == 0
			//????
			$b1 = $money / 4
			$money = $money + $b1
			BC( "chat", "player", -1, "You can get bonus gold for the transform.", $b1 )
		endif
		//????????
		$quest_number = GetPlayerVar( -1 , 3215 )
		if $quest_number == 5
			//????????
			$status_value = IsExistStatus(-1 , 10518)
			if $status_value == 0
				AddPlayerInfo( -1, "item", 63271, 1)
				BC( "chat", "player", -1, "Since you are transformed, you gained an extra gift: Magician's Chest." )
			endif
			//????????
		endif
		
		AddPlayerInfo(-1 , "money" ,$money)
		
	}