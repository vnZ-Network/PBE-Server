	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/29
	//		Author:???
	//		TaskName:
	//		TaskID:??????-?? 
	//
	//****************************************
	
	
	//??   3903
	//??   3904
	
	function OnUseItem(){
		
		$itemcount = GetPlayerInfo( -1 , "item" , 63561 )
		if $itemcount <= 0
			BC( "screen" , "player" , -1 , "It requires a Cross of Salvation to get a new Revelation of Dead." )
			return
		endif
		
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem == 0
			BC( "screen" , "player" , -1 , "Sorry. Your bag is full." )
			return
		endif
		
		$lv = GetPlayerInfo( -1 , "level" )
		if $lv < 95
			BC( "screen" , "player" , -1 , "You have to be above LV95 to use it." )
			return
		endif
		
		//??+1
		$violet = GetPlayerVar( -1 , 3904 )
		$violet = $violet + 1
		SetPlayerVar( -1 , 3904 , $violet )
		
		//??+1
		$blue = GetPlayerVar( -1 , 3903 )
		$blue = $blue + 1
		SetPlayerVar( -1 , 3903 , $blue )
		
		
		//????
		SubPlayerInfo( -1 , "item" , 12741 , 1 )
		SubPlayerInfo( -1 , "item" , 63561 , 1 )
		
		
		//?30???????
		$result = $violet % 30
		if $result == 0
			SetPlayerVar( -1 , 3904 , 0 )
			//????
			AddPlayerInfo( -1 , "item" , 12742 , 1 )
			return
		endif
		
		
		//?10???????
		$result = $blue % 10
		if $result == 0
			$ran = RandomNumber( 1 , 10000 )
			if $ran >= 1
				if $ran < 9500
					//????
					AddPlayerInfo( -1 , "item" , 12741 , 1 )
					BC( "screen" , "player" , -1 , "Congratulations! You acquired a Revelation of Dead (Blue)!" )
					SetPlayerVar( -1 , 3903 , 0 )
					return
				endif
			endif
			
			if $ran >= 9500
				if $ran <= 10000
					//????
					AddPlayerInfo( -1 , "item" , 12742 , 1 )
					BC( "screen" , "player" , -1 , "Congratulations! You acquired a Revelation of Dead (Golden)!" )
					SetPlayerVar( -1 , 3904 , 0 )
					return
				endif
			endif
		endif
		
		
		
		//??????35%,??45%,??15%,??5%
		$random = RandomNumber( 1 , 10000 )
		if $random >= 1
			if $random < 3500
				//??
				AddPlayerInfo( -1 , "item" , 12739 , 1 )
				BC( "screen" , "player" , -1 , "You have acquired a Revelation of Dead (White)!" )
				return
			endif
		endif
		
		if $random >= 3500
			if $random < 8000
				//????
				AddPlayerInfo( -1 , "item" , 12740 , 1 )
				BC( "screen" , "player" , -1 , "You have acquired a Revelation of Dead (Green)!" )
				return
			endif
		endif
		
		if $random >= 8000
			if $random < 9500
				//????
				AddPlayerInfo( -1 , "item" , 12741 , 1 )
				BC( "screen" , "player" , -1 , "You have acquired a Revelation of Dead (Blue)!" )
				SetPlayerVar( -1 , 3903 , 0 )
				return
			endif
		endif
		
		if $random >= 9500
			if $random <= 10000 
				//????
				AddPlayerInfo( -1 , "item" , 12742 , 1 )
				BC( "screen" , "player" , -1 , "You have acquired a Revelation of Dead (Golden)!" )
				SetPlayerVar( -1 , 3904 , 0 )
				return
			endif
		endif

	}