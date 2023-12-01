    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/01/22
	//		Author:???
	//		TaskName:Mon-32211.s
	//		TaskID:??
	//****************************************
	
	//?????????  3944
	//???????    3254
	
	
	function OnDead(){
		
		//????
		$random = RandomNumber( 1 , 90 )
		if $random >= 1
			if $random <= 30
				PlayEffect( -1 , "common\huodong\xinnianlipao\tx_xinnianlipao1.ini" , 2 )
			endif
		endif
		
		if $random >= 31
			if $random <= 60
				PlayEffect( -1 , "common\huodong\xinnianlipao\tx_xinnianlipao3.ini" , 2 )
			endif
		endif
		
		if $random >= 61
			if $random <= 90
				PlayEffect( -1 , "common\huodong\xinnianlipao\tx_xinnianlipao4.ini" , 2 )
			endif
		endif
		
		
		#name = GetPlayerInfo( -1 , "name" )
		$random2 = RandomNumber( 1 , 70 )
			if $random2 >= 1
				if $random2 <= 10
					BC("screen" , "server" , -1 ,  "" , #name , """Welcome to Battle of the Immortals! May you have a good time here!" )
					BC("chat" , "server" , -1 ,  "" , #name , """Welcome to Battle of the Immortals! May you have a good time here!" )
				endif
			endif
			
			if $random2 >= 11
				if $random2 <= 20
					BC("screen" , "server" , -1 ,  "" , #name , """May you live as long as you want and want as long as you live!" )
					BC("chat" , "server" , -1 ,  "" , #name , """May you live as long as you want and want as long as you live!" )
				endif
			endif
			
			if $random2 >= 21
				if $random2 <= 30
					BC("screen" , "server" , -1 ,  "" , #name , """May joy and health be with you always!" )
					BC("chat" , "server" , -1 ,  "" , #name , """May joy and health be with you always!" )
				endif
			endif
			
			if $random2 >= 31
				if $random2 <= 40
					BC("screen" , "server" , -1 ,  "" , #name , """May happiness follow you wherever you go!" )
					BC("chat" , "server" , -1 ,  "" , #name , """May happiness follow you wherever you go!" )
				endif
			endif
			
			if $random2 >= 41
				if $random2 <= 50
					BC("screen" , "server" , -1 ,  "" , #name , """Wish all the best wishes for you!" )
					BC("chat" , "server" , -1 ,  "" , #name , """Wish all the best wishes for you!" )
				endif
			endif
			
			if $random2 >= 51
				if $random2 <= 60
					BC("screen" , "server" , -1 , "Best wishes for you and your family! I'm " , "" , #name , "" )
					BC("chat" , "server" , -1 , "Best wishes for you and your family! I'm " , "" , #name , "" )
				endif
			endif
			
			if $random2 >= 61
				if $random2 <= 70
					BC("screen" , "server" , -1 , "Intermittent firecrackers bring the celebration!" , "" , #name , "" , "May the warmest wishes, happy thoughts and friendly greetings stay with you all the year through!")
					BC("chat" , "server" , -1 , "Intermittent firecrackers bring the celebration!" , "" , #name , "" , "May the warmest wishes, happy thoughts and friendly greetings stay with you all the year through!")
				endif
			endif
		
			
			//????10???
			$lastday = GetPlayerVar( -1 , "3944" )
			$today =  GetSystemTime( "yday" )
			$times = GetPlayerVar( -1 , "3254" )
			if $lastday == $today
				if $times >= 10
					return
				else
					$times = $times + 1
					SetPlayerVar( -1 , "3254" , $times )
				endif
			else
				SetPlayerVar( -1 , "3254" , 1 )
				SetPlayerVar( -1 , "3944" , $today )
			endif
			
			
			$level = GetPlayerInfo( -1 , "level" )
			if $level < 45
				$exp = $level * $level
				$exp = $exp * 10
				AddPlayerInfo( -1 , "exp" , $exp )
			else
				$exp = $level * $level
				$exp = $exp * 10
				$a = $level * 4
				$a = $a - 76
				$exp = $exp * $a
				$exp = $exp / 100
				AddPlayerInfo( -1 , "exp" , $exp )
			endif
		
	}