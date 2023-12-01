	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/2/23
	//		Author:??
	//		TaskName:HD-paoshang-chaxun46-NPC.s
	//		TaskID:??46?NPC??????
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

		$result = IsTaskAccept( -1, 529 )
		
		if $result == 0
			if $random_number == 0
				$money = 12702
			endif
			if $random_number == 1
				$money = 15277
			endif
			if $random_number == 2
				$money = 16177
			endif
			if $random_number == 3
				$money = 17677
			endif
			if $random_number == 4
				$money = 19627
			endif
			if $random_number == 5
				$money = 21577
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
		
		$result = IsTaskAccept( -1, 533 )
		
		if $result == 0
			if $random_number == 0
				$money = 10070
			endif
			if $random_number == 1
				$money = 11622
			endif
			if $random_number == 2
				$money = 11820
			endif
			if $random_number == 3
				$money = 11905
			endif
			if $random_number == 4
				$money = 12535
			endif
			if $random_number == 5
				$money = 13724
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
		
		
		$result = IsTaskAccept( -1, 775 )
		if $result == 0
			if $random_number == 0
				$money = 10970
			endif
			if $random_number == 1
				$money = 12074
			endif
			if $random_number == 2
				$money = 12380
			endif
			if $random_number == 3
				$money = 13430
			endif
			if $random_number == 4
				$money = 14018
			endif
			if $random_number == 5
				$money = 14270
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