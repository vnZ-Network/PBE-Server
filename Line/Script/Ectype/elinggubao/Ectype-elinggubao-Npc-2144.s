	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/17
	//		Author:???
	//		TaskName:Ectype-elinggubao-Npc-2144.s
	//		TaskID:???1
	//
	//****************************************
	
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
	
		
		
		
		$ectype_id = GetEctypeID( -1 , 258 )
		//0??? 1??? 10???
		$a = GetEctypeVar( -1 , 16 )
		$b = GetEctypeVar( -1 , 17 )
		$c = GetEctypeVar( -1 , 18 )
		$d = GetEctypeVar( -1 , 19 )
		
		
		if $b == 1
			BC( "screen" , "player" , -1  , "Kill all present monsters before activating this statue" )
			return
		endif
		
		
		if $c == 1
			BC( "screen" , "player" , -1  , "Kill all present monsters before activating this statue" )
			return
		endif
		
		if $d == 1
			BC( "screen" , "player" , -1  , "Kill all present monsters before activating this statue" )
			return
		endif
		
		if $a == 0
			SetEctypeVar( -1 , 16 , 1 )
			StartEctypeTimer ( -1 , 4 )
			PlayEffect(-1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini", 1 )
			BC( "screen" , "map" , $ectype_id , "The statue shakes fiercely! Ghouls will appear in 10 seconds!" )
		else
			if $a == 1
				BC( "screen" , "player" , -1 , "Kill all the Ghouls to activate Statue I." )
				return
			endif
			
			if $a == 10
				BC( "screen" , "player" , -1  , "Statue I activated!" )
				return	
			endif
		endif
		
	}