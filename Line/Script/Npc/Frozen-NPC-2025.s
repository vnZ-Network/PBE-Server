	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/20
	//		Author:???
	//		TaskName:Frozen-NPC-2025.s
	//		TaskID: ????
	//
	//****************************************
	
	function OnRequest(){
		$week = GetSystemTime( "week" )
		if $week == 0
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
		endif
		if $week == 6
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		if $week == 1
			DisableNpcOption(2)
		endif
		if $week == 2
			DisableNpcOption(2)
		endif
		if $week == 3
			DisableNpcOption(2)
		endif
		if $week == 4
			DisableNpcOption(2)
		endif
		if $week == 5
			DisableNpcOption(2)
		endif
		
	}
	
	function OnOption0(){
		
		$week = GetSystemTime( "week" )
		if $week == 0
			return
		endif
		if $week == 6
			return
		endif
		$ectype_id = GetEctypeID( -1 , 25 )
		$b = GetEctypeVar( $ectype_id , 111 )
		if $b <= 20
			BC( "dialogbox" , "player" , -1 , "Your Guild has completed the Restraining Behemoth quest a total of ",$b," times." )
		else
			BC( "dialogbox" , "player" , -1 , "Your Guild has completed the Restraining Behemoth quest 20 times! Rayna can summon Behemoth Shadow, now." )
		endif
		
	}
	
	function OnOption1(){
		
		$week = GetSystemTime( "week" )
		if $week == 0
			return
		endif
		if $week == 6
			return
		endif
		$guildrank = GetPlayerInfo( -1 , "guildrank" )
		if $guildrank != 0
			BC( "dialogbox", "player", -1, "You are not the guild leader." )
			return
		endif
		$mapx = GetPlayerInfo( -1 , "mapx" )
		$mapy = GetPlayerInfo( -1 , "mapy" )
		#name = GetPlayerInfo( -1 , "name" )
		$ectype_id = GetEctypeID( -1 , 25 )
		$b = GetEctypeVar( $ectype_id , 111 )
		$a = GetEctypeVar( $ectype_id , 0 )
		if $a == 1
			BC( "dialogbox" , "player" , -1 , "Behemoth Shadow has already been summoned. The Soul Container has expired. " )
			return
		endif 
		if $b < 20
			BC( "dialogbox" , "player" , -1 , "Your Guild must complete the Restraining Behemoth quest 20 times." )
			return
		endif
		AddMonster( 30053 , 1 , $ectype_id , $mapx , $mapy , 1 )
		SetEctypeVar( $ectype_id , 0 , 1 )
		BC( "screen" , "map" ,$ectype_id , "The Behemoth Soul Container has unleashed an enormous amount of power!!" , #name , "Behemoth Shadow has been summoned!" )
		
		
	}
	
	function OnOption2(){
		
		$week = GetSystemTime( "week" )
		if $week != 6
			return
		endif
		$ectype_id = GetEctypeID( -1 , 25 )
		$a = GetPlayerInfo( -1 , "item" , 63488 )
		$guildrank = GetPlayerInfo( -1 , "guildrank" )
		if $guildrank != 0
			BC( "dialogbox", "player", -1, "You are not the guild leader." )
			return
		endif
		$mapx = GetPlayerInfo( -1 , "mapx" )
		$mapy = GetPlayerInfo( -1 , "mapy" )
		#name = GetPlayerInfo( -1 , "name" )
		if $a < 5
			BC( "dialogbox" , "player" , -1 , "You need 5 Behemoth Soul Shards to summon Behemoth." )
			return
		endif
		$info = SubPlayerInfo( -1 , "item" , 63488 , 5 )
		if $info != 0
			return
		endif
		AddMonster( 30052 , 1 , $ectype_id , $mapx , $mapy , 1 )
		BC( "screen" , "map" , $ectype_id , #name , "Behemoth has been summoned!" )
		
	}
	