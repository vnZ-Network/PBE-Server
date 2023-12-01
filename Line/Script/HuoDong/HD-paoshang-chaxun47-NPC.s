	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/2/23
	//		Author:??
	//		TaskName:HD-paoshang-chaxun47-NPC.s
	//		TaskID:??47?NPC??????
	//
	//****************************************

	function OnRequest(){
	
		$level = GetPlayerInfo( -1, "level" )
		if $level < 45
			DisableNpcOption(0)
			return
		endif
		
	}
	//????
	function OnOption0(){

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
		$money = 0

		$result = IsTaskAccept( -1, 525 )
		
		if $result == 0
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
			endif
			if $random_number == 5
				BC( "dialogbox", "player", -1, "The value of your good is.", $money ,"Yuan!This is the highest." )
			else
				if $random_number == 0
					BC( "dialogbox", "player", -1, "The value of your good is.", $money ,"Yuan!This is the lowest." )
				else
					BC( "dialogbox", "player", -1, "The value of your good is.", $money ,"Yuan." )
				endif
			endif
			return
		endif
		
		$result = IsTaskAccept( -1, 527 )
		if $result == 0
			if $random_number == 0
				$money = 12960
			endif
			if $random_number == 1
				$money = 14210
			endif
			if $random_number == 2
				$money = 15150
			endif
			if $random_number == 3
				$money = 18565
			endif
			if $random_number == 4
				$money = 19720
			endif
			if $random_number == 5
				$money = 20030
			endif
			if $random_number == 5
				BC( "dialogbox", "player", -1, "The value of your good is.", $money ,"Yuan!This is the highest." )
			else
				if $random_number == 0
					BC( "dialogbox", "player", -1, "The value of your good is.", $money ,"Yuan!This is the lowest." )
				else
					BC( "dialogbox", "player", -1, "The value of your good is.", $money ,"Yuan." )
				endif
			endif
			return
		endif
		
		$result = IsTaskAccept( -1, 781 )
		if $result == 0
			if $random_number == 0
				$money = 18860
			endif
			if $random_number == 1
				$money = 19840
			endif
			if $random_number == 2
				$money = 20980
			endif
			if $random_number == 3
				$money = 21420
			endif
			if $random_number == 4
				$money = 21764
			endif
			if $random_number == 5
				$money = 22100
			endif
			if $random_number == 5
				BC( "dialogbox", "player", -1, "The value of your good is.", $money ,"Yuan!This is the highest." )
			else
				if $random_number == 0
					BC( "dialogbox", "player", -1, "The value of your good is.", $money ,"Yuan!This is the lowest." )
				else
					BC( "dialogbox", "player", -1, "The value of your good is.", $money ,"Yuan." )
				endif
			endif
			return
		endif
		BC( "dialogbox", "player", -1, "I can't quote you a price unless you have what I'm looking for." )
	}