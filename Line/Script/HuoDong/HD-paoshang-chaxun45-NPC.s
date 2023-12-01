	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/2/23
	//		Author:??
	//		TaskName:HD-paoshang-chaxun45-NPC.s
	//		TaskID:??45?NPC??????
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
		//-----------
		$result = IsTaskAccept( -1, 535 )
		
		if $result == 0
			if $random_number == 0
				$money = 9515
			endif
			if $random_number == 1
				$money = 11765
			endif
			if $random_number == 2
				$money = 13745
			endif
			if $random_number == 3
				$money = 14465
			endif
			if $random_number == 4
				$money = 15905
			endif
			if $random_number == 5
				$money = 18245
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
		
		//----------------
		
		
		$result = IsTaskAccept( -1, 771 )
		if $result == 0
			if $random_number == 0
				$money = 13225
			endif
			if $random_number == 1
				$money = 15375
			endif
			if $random_number == 2
				$money = 17475
			endif
			if $random_number == 3
				$money = 17155
			endif
			if $random_number == 4
				$money = 18625
			endif
			if $random_number == 5
				$money = 19095
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
		
		$result = IsTaskAccept( -1, 779 )
		if $result == 0
			if $random_number == 0
				$money = 19560
			endif
			if $random_number == 1
				$money = 20000
			endif
			if $random_number == 2
				$money = 20592
			endif
			if $random_number == 3
				$money = 21288
			endif
			if $random_number == 4
				$money = 21960
			endif
			if $random_number == 5
				$money = 22464
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