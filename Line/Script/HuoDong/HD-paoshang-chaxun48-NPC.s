	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/2/23
	//		Author:??
	//		TaskName:HD-paoshang-chaxun48-NPC.s
	//		TaskID:??48?NPC??????
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

		$result = IsTaskAccept( -1, 531 )
		if $result == 0
			if $random_number == 0
				$money = 12830
			endif
			if $random_number == 1
				$money = 13380
			endif
			if $random_number == 2
				$money = 14330
			endif
			if $random_number == 3
				$money = 14885
			endif
			if $random_number == 4
				$money = 15010
			endif
			if $random_number == 5
				$money = 15500
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
		
		$result = IsTaskAccept( -1, 773 )
		if $result == 0
			if $random_number == 0
				$money = 18900
			endif
			if $random_number == 1
				$money = 20510
			endif
			if $random_number == 2
				$money = 21320
			endif
			if $random_number == 3
				$money = 23480
			endif
			if $random_number == 4
				$money = 24560
			endif
			if $random_number == 5
				$money = 25720
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
		
		$result = IsTaskAccept( -1, 777 )
		if $result == 0
			if $random_number == 0
				$money = 6725
			endif
			if $random_number == 1
				$money = 8525
			endif
			if $random_number == 2
				$money = 10310
			endif
			if $random_number == 3
				$money = 11600
			endif
			if $random_number == 4
				$money = 13475
			endif
			if $random_number == 5
				$money = 16350
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