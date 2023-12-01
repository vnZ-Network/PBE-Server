 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/6/23
	//		Author:???
	//		TaskName:NPC-122.s
	//		TaskID:????1
	//
	//****************************************
	
	function OnRequest(){
		
		
		$task = IsTaskAccept( -1,1641 )
		if $task != 0
			DisableNpcOption(0)
		endif	
		
		$Info = GetPlayerInfo( -1 , "item" , 12462 )
		if $Info != 0
			DisableNpcOption(0)
		endif
		$a = GetPlayerVar( -1 , 3688 )
		if $a > 2
			DisableNpcOption(0)
		endif
		
		$c = GetPlayerInfo( -1 , "item" , 12627  )
		if $c > 0
			DisableNpcOption(0)
		endif
	}
	
	function OnOption0(){
		
		$n = RandomNumber ( 0, 99 )
		$a = GetPlayerVar( -1 , 3688 )
		$b = $a + 1
		
		$task = IsTaskAccept( -1 , 1641 )
		if $task != 0
			return
		endif	
		
		$Info = GetPlayerInfo( -1 , "item" , 12462 )
		if $Info != 0
			BC( "dialogbox", "player", -1, "You have found the trap map." )
			return
		endif
		$c = GetPlayerInfo( -1 , "item" , 12627 )
		if $c > 0
			BC( "dialogbox", "player", -1, "You have searched this location already." )
			return
		endif
		
		if $a == 0
			if $n < 33
				AddPlayerInfo( -1 , "item" , 12462 , 1 )
				SubPlayerInfo( -1 , "item" , 12627 , -1 )
				SubPlayerInfo( -1 , "item" , 12628 , -1 )
				SubPlayerInfo( -1 , "item" , 12629 , -1 )
			else
				BC( "dialogbox", "player", -1, "The trap map is not in this mural." )
				AddPlayerInfo( -1 , "item" , 12627 , 1 )
				SetPlayerVar( -1 , 3688 , $b )
			endif
		endif
		
		if $a == 1
			if $n < 50
				AddPlayerInfo( -1 , "item" , 12462 , 1 )
				SubPlayerInfo( -1 , "item" , 12627 , -1 )
				SubPlayerInfo( -1 , "item" , 12628 , -1 )
				SubPlayerInfo( -1 , "item" , 12629 , -1 )
			else
				BC( "dialogbox", "player", -1, "The trap map is not in this mural." )
				AddPlayerInfo( -1 , "item" , 12627 , 1 )
				SetPlayerVar( -1 , 3688 , $b )
			endif
		endif
		
		if $a == 2
			AddPlayerInfo( -1 , "item" , 12462 , 1 )
			SubPlayerInfo( -1 , "item" , 12627 , -1 )
			SubPlayerInfo( -1 , "item" , 12628 , -1 )
			SubPlayerInfo( -1 , "item" , 12629 , -1 )
			SetPlayerVar( -1 , 3688 , $b )
		endif
		if $a > 2
			AddPlayerInfo( -1 , "item" , 12462 , 1 )
			SubPlayerInfo( -1 , "item" , 12627 , -1 )
			SubPlayerInfo( -1 , "item" , 12628 , -1 )
			SubPlayerInfo( -1 , "item" , 12629 , -1 )
		endif
		
	}
	