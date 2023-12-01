	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/27
	//		Author:???
	//		TaskName:rongyaoshop-Item-60094.s
	//		TaskID:???????2500?60094??
	//
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
		$date = GetPlayerVar( -1 , 3902 )
		$round = GetPlayerVar( -1 , 3243 )
		$round = $round + 1
		
		if $time == $date
			if $round <= 5
				$revalue = SubPlayerInfo( -1, "item", 60094 , 1  )
				if $revalue != 0
					return
				endif
				AddPlayerInfo( -1, "prestige", 40 , 2500)
				SetPlayerVar( -1 , 3243 , $round )
				BC( "screen" , "player" , -1 , "You got 2500 Honor points, you can upgrade your master title with it!" )
			  BC( "chat" , "player" , -1 , "You got 2500 Honor points, you can upgrade your master title with it!" )
			else
				BC( "screen" , "player" , -1 , "Light of Honor can be opened 5 times per day!" )
				BC( "chat" , "player" , -1 , "Light of Honor can be opened 5 times per day!" )
			endif		
		else
			$revalue = SubPlayerInfo( -1, "item", 60094 , 1  )
			if $revalue != 0
				return
			endif
			AddPlayerInfo( -1, "prestige", 40 , 2500)
			SetPlayerVar( -1 , 3243 , 1 )
			SetPlayerVar( -1 , 3902 , $time )
			BC( "screen" , "player" , -1 , "You got 2500 Honor points, you can upgrade your master title with it!" )
			BC( "chat" , "player" , -1 , "You got 2500 Honor points, you can upgrade your master title with it!" )
		endif
		
		
		}