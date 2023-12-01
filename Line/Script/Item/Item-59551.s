	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/12/7
	//		Author:???
	//		TaskName:Item-59551.s
	//		TaskID:?????
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
		if $nobag < 1
			BC( "screen", "player", -1, "Your bag is full" )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 59551 , 1 )
		if  $info != 0
			return
		endif
		
		$ServerVar = GetServerVar( 37 )
		$n = RandomNumber ( 0 , 10000 )

		if $n < 5
			if $ServerVar < 2
				DropMonsterItems( -1, 90126 )
				$ServerVar = $ServerVar + 1
				SetServerVar( 37, $ServerVar )
				return
			else
				AddPlayerInfo( -1 ,"item", 63719 , 1 )
				return
			endif		
				
		endif
		
		if $n < 15
			if $n >= 5
				AddPlayerInfo( -1 ,"item", 2125 , 1 )

			endif
		endif
		if $n < 215
			if $n >= 15
				AddPlayerInfo( -1 ,"item", 63422 , 1 )	
					
			endif
		endif
		
		if $n < 315
			if $n >= 215
				AddPlayerInfo( -1 ,"item", 60502 , 1 )	
					
			endif
		endif
		
		if $n < 515
			if $n >= 315
				AddPlayerInfo( -1 ,"item", 64245 , 1 )	
					
			endif
		endif
		
		if $n < 615
			if $n >= 515
				AddPlayerInfo( -1 ,"item", 2121 , 1 )	
					
			endif
		endif

		if $n < 815
			if $n >= 615
				AddPlayerInfo( -1 ,"item", 9 , 1 )	
					
			endif
		endif

		if $n < 1015
			if $n >= 815
				AddPlayerInfo( -1 ,"item", 63359 , 1 )	
					
			endif
		endif

		if $n < 1315
			if $n >= 1015
				AddPlayerInfo( -1 ,"item", 2126 , 1 )	
					
			endif
		endif

		if $n < 3315
			if $n >= 1315
				AddPlayerInfo( -1 ,"item", 64244 , 1 )	
					
			endif
		endif
		
		if $n < 5315
			if $n >= 3315
				AddPlayerInfo( -1 ,"item", 6066 , 1 )	
					
			endif
		endif
		
		if $n < 5415
			if $n >= 5315
				AddPlayerInfo( -1 ,"item", 59556 , 1 )	
					
			endif
		endif

		if $n >= 5415
			AddPlayerInfo( -1 ,"item", 63719 , 1 )	
				
		endif
		
	}