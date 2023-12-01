	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/20
	//		Author:???
	//		TaskName:90-MainLine-Monster-60076.s
	//		TaskID: 
	//
	//****************************************
	
	function OnDead(){
		$info = GetPlayerInfo( -1 , "item", 12706 )
		if $info == 0
			BC( "screen" , "player" , -1 ,"You would dare drink the waters of the Styx?! Did you lose your parchment...?" )
			BC( "chat" , "player" , -1 ,"You would dare drink the waters of the Styx?! Did you lose your parchment...?" )
			return
		endif
		$ectype_id = GetEctypeID( -1 , 244 )
		$var = GetEctypeVar( $ectype_id , 110 )
		$var = $var + 1
		if $var < 10
			AddStatus( -1 , 10612, 11 )
			SetEctypeVar( $ectype_id , 110 , $var )
			BC( "screen" , "player" , -1 ,"The words on the parchment are coming into view... but the water is so painful to the touch!" )
			BC( "chat" , "player" , -1 ,"The words on the parchment are coming into view... but the water is so painful to the touch!" )
		endif
		if $var == 10
			AddStatus( -1 , 10612, 11 )
			BC( "screen" , "player" , -1 ,"The words on the parchment are completely clear." )
			BC( "chat" , "player" , -1 ,"The words on the parchment are completely clear." )
			$del = SubPlayerInfo( -1 , "item", 12706 , 1 )
			if $del != 0
				return
			endif
			AddPlayerInfo( -1 , "item", 12707 , 1  )
			SetEctypeVar( $ectype_id , 110 , $var )
		endif
		
	}
	