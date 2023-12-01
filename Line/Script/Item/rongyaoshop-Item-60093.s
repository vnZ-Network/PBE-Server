

	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/26
	//		Author:???
	//		TaskName:rongyaoshop-Item-60093.s
	//		TaskID:??????(???)
	//****************************************
	
	function OnUseItem(){
	
		$title1 = HaveTitle( -1 , 12 )
		
		if $title1 != 0
					BC( "screen" , "player" , -1 , "You do not have the title of Master level 6, upgrade your master level with Gallaja in Atlantis!" )
					BC( "chat" , "player" , -1 , "You do not have the title of Master level 6, upgrade your master level with Gallaja in Atlantis!" )
					return
		endif
		
		$time = GetSystemTime( "yday" )
		$date = GetPlayerVar( -1 , 3901 )
		
		if $time != $date
			$info = SubPlayerInfo( -1, "item", 60093 , 1  )
			if $info != 0
				return
			endif
			SetPlayerVar( -1 , 3901 , $time )
			$level = GetPlayerInfo(-1 , "level")
			
			if $level < 45
				$a = $level * $level
				
				$add_exp = $a * 80
				
			else
				$a = $level * 4
				$b = $a - 76
				
				$c = $level * $level
				$d = $c * 80
				
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