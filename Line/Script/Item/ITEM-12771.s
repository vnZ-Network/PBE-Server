	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/1/22
	//		Author:??
	//		TaskName:
	//		TaskID:????-?? 
	//
	//****************************************
	
	
	//??   3941
	//??   3942
	
	function OnUseItem(){
		
		$itemcount = GetPlayerInfo( -1 , "item" , 59222 )
		if $itemcount <= 0
			BC( "screen" , "player" , -1 , "Yggdrasil's Song is required to get a new Yggdrasil's Whisper." )
			return
		endif
		
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem == 0
			BC( "screen" , "player" , -1 , "Sorry. Your bag is full." )
			return
		endif
		
		$title = HaveTitle( -1 , "21" )
		if $title != 0
			BC( "screen" , "player" , -1 , "You don't have the Demi-God title. Unable to receive." )
			return
		endif
		
		//??+1
		$violet = GetPlayerVar( -1 , 3942 )
		$violet = $violet + 1
		SetPlayerVar( -1 , 3942 , $violet )
		
		//??+1
		$blue = GetPlayerVar( -1 , 3941 )
		$blue = $blue + 1
		SetPlayerVar( -1 , 3941 , $blue )
		
		
		//????
		SubPlayerInfo( -1 , "item" , 12771 , 1 )
		SubPlayerInfo( -1 , "item" , 59222 , 1 )
		
		
		//?30???????
		$result = $violet % 30
		if $result == 0
			SetPlayerVar( -1 , 3942 , 0 )
			//????
			AddPlayerInfo( -1 , "item" , 12772 , 1 )
			return
		endif
		
		
		//?10???????
		$result = $blue % 10
		if $result == 0
			$ran = RandomNumber( 1 , 10000 )
			if $ran >= 1
				if $ran < 9500
					//????
					AddPlayerInfo( -1 , "item" , 12771 , 1 )
					BC( "screen" , "player" , -1 , "Congratulations! You have acquired Tree of World's Whisper (Blue)." )
					SetPlayerVar( -1 , 3941 , 0 )
					return
				endif
			endif
			
			if $ran >= 9500
				if $ran <= 10000
					//????
					AddPlayerInfo( -1 , "item" , 12772 , 1 )
					BC( "screen" , "player" , -1 , "Congratulations! You have acquired Tree of World's Whisper (Golden)." )
					SetPlayerVar( -1 , 3942 , 0 )
					return
				endif
			endif
		endif
		
		
		
		//??????35%,??45%,??15%,??5%
		$random = RandomNumber( 1 , 10000 )
		if $random >= 1
			if $random < 3500
				//??
				AddPlayerInfo( -1 , "item" , 12769 , 1 )
				BC( "screen" , "player" , -1 , "You have acquired a Revelation of Dead (White)!" )
				return
			endif
		endif
		
		if $random >= 3500
			if $random < 8000
				//????
				AddPlayerInfo( -1 , "item" , 12770 , 1 )
				BC( "screen" , "player" , -1 , "You have acquired a Revelation of Dead (Green)!" )
				return
			endif
		endif
		
		if $random >= 8000
			if $random < 9500
				//????
				AddPlayerInfo( -1 , "item" , 12771 , 1 )
				BC( "screen" , "player" , -1 , "You have acquired a Revelation of Dead (Blue)!" )
				SetPlayerVar( -1 , 3941 , 0 )
				return
			endif
		endif
		
		if $random >= 9500
			if $random <= 10000 
				//????
				AddPlayerInfo( -1 , "item" , 12772 , 1 )
				BC( "screen" , "player" , -1 , "You have acquired a Revelation of Dead (Golden)!" )
				SetPlayerVar( -1 , 3942 , 0 )
				return
			endif
		endif

	}