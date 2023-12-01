

	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/26
	//		Author:???
	//		TaskName:rongyaoshop-Item-59085.s
	//		TaskID:??????????
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
			
		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
		if $nobag < 1
			BC( "screen", "player", -1 , "You don't have a free bag slot." )
			return
		endif
		
		$info = SubPlayerInfo( -1, "item", 59085 , 1  )
			if $info != 0
				return
			else
			  AddPlayerInfo( -1, "item", 53305 , 1  )
				BC( "screen" , "player" , -1 , "You got a Starword - Illusion." )
				BC( "chat" , "player" , -1 , "You got a Starword - Illusion." )
				return
			endif
	
	}