	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/12/7
	//		Author:???
	//		TaskName:Item-59554.s
	//		TaskID:?????
	//
	//****************************************
	
	
	function OnUseItem(){
	
		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
		if $nobag < 1
			BC( "screen", "player", -1, "Your bag is full" )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 59554 , 1 )
		if  $info != 0
			return
		endif
		
		$ServerVar = GetServerVar( 38 )
		$n = RandomNumber ( 0 , 10000 )

		if $n < 13
			if $ServerVar < 4
				DropMonsterItems( -1, 90127 )
				$ServerVar = $ServerVar + 1
				SetServerVar( 38, $ServerVar )
				return
			else
				AddPlayerInfo( -1 ,"item", 63719 , 1 )
				return
			endif		
				
		endif
		
		if $n < 23
			if $n >= 13
				AddPlayerInfo( -1 ,"item", 2125 , 1 )

			endif
		endif
		if $n < 523
			if $n >= 23
				AddPlayerInfo( -1 ,"item", 63422 , 1 )	
					
			endif
		endif
		
		if $n < 723
			if $n >= 523
				AddPlayerInfo( -1 ,"item", 60504 , 1 )	
					
			endif
		endif
		
		if $n < 923
			if $n >= 723
				AddPlayerInfo( -1 ,"item", 60505 , 1 )	
					
			endif
		endif
		
		if $n < 973
			if $n >= 923
				AddPlayerInfo( -1 ,"item", 60484 , 1 )	
					
			endif
		endif

		if $n < 1073
			if $n >= 973
				AddPlayerInfo( -1 ,"item", 63768 , 1 )	
					
			endif
		endif

		if $n < 2073
			if $n >= 1073
				AddPlayerInfo( -1 ,"item", 9 , 1 )	
					
			endif
		endif

		if $n < 3073
			if $n >= 2073
				AddPlayerInfo( -1 ,"item", 60503 , 1 )	
					
			endif
		endif

		if $n < 3573
			if $n >= 3073
				AddPlayerInfo( -1 ,"item", 64245 , 1 )	
					
			endif
		endif
		
		if $n < 3673
			if $n >= 3573
				AddPlayerInfo( -1 ,"item", 2121 , 1 )	
					
			endif
		endif
		
		if $n < 4673
			if $n >= 3673
				AddPlayerInfo( -1 ,"item", 20273 , 1 )	
					
			endif
		endif
		
		if $n < 4873
			if $n >= 4673
				AddPlayerInfo( -1 ,"item", 63343 , 1 )	
					
			endif
		endif
		
		if $n < 5373
			if $n >= 4873
				AddPlayerInfo( -1 ,"item", 60057 , 1 )	
					
			endif
		endif
		
		if $n < 6373
			if $n >= 5373
				AddPlayerInfo( -1 ,"item", 59122 , 1 )	
					
			endif
		endif
		
		if $n < 7373
			if $n >= 6373
				AddPlayerInfo( -1 ,"item", 59557 , 1 )	
					
			endif
		endif

		if $n >= 7373
			AddPlayerInfo( -1 ,"item", 63719 , 1 )	
				
		endif
		
	}