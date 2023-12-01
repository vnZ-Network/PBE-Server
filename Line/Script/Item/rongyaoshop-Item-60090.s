

	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/26
	//		Author:???
	//		TaskName:rongyaoshop-Item-60090.s
	//		TaskID:??????(???)
	//****************************************
	
	function OnUseItem(){
	
		$title1 = HaveTitle( -1 , 7 )
		$title2 = HaveTitle( -1 , 8 )
		$title3 = HaveTitle( -1 , 9 )
		
		if $title1 != 0
			if $title2 != 0
				if $title3 != 0
					BC( "screen" , "player" , -1 , "You don't have a proper Master title. Please go to Atlantis and get one from Gallaja." )
					BC( "chat" , "player" , -1 , "You don't have a proper Master title. Please go to Atlantis and get one from Gallaja." )
					return
				endif
			endif
		endif
		
		$time = GetSystemTime( "yday" )
		$date = GetPlayerVar( -1 , 3901 )
		
		if $time != $date
			$info = SubPlayerInfo( -1, "item", 60090 , 1  )
			if $info != 0
				return
			endif
			SetPlayerVar( -1 , 3901 , $time )
			$level = GetPlayerInfo(-1 , "level")
			
			if $level < 45
				$a = $level * $level
				
				$add_exp = $a * 10
				
			else
				$a = $level * 4
				$b = $a - 76
				
				$c = $level * $level
				$d = $c * 10
				
				$e = $d * $b
				
				$add_exp = $e / 100
				
			endif
			
			
			AddPlayerInfo( -1 , "exp" , $add_exp)
			
		else
			BC( "screen" , "player" , -1 , "You have opened [Glory Force] today already, [Glory Force] can only be opened once per day!" )
			BC( "chat" , "player" , -1 , "You have opened [Glory Force] today already, [Glory Force] can only be opened once per day!" )
			return
		endif
			
	}