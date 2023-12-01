	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/17
	//		Author:???
	//		TaskName:Ectype-elinggubao-Npc-2146.s
	//		TaskID:???3
	//
	//****************************************
	
	
	function OnRequest(){

	}
	
	
	function OnOption0(){
		
	$ectype_id = GetEctypeID( -1 , 258 )
		//???????,0????  1 ??
		$mode = GetEctypeVar( $ectype_id , 111 )
		
		//110???????
		$level = GetEctypeVar( $ectype_id , 110 )
		if $mode == 0
			//????
			$ectlevel = 54
		endif
		
		if $mode == 1
			//????
			$ectlevel = 55
		endif
		
		
		
		$ectype_id = GetEctypeID( -1 , 258 )
		//0??? 1??? 10???
		$a = GetEctypeVar( -1 , 16 )
		$b = GetEctypeVar( -1 , 17 )
		$c = GetEctypeVar( -1 , 18 )
		$d = GetEctypeVar( -1 , 19 )
		
		
		if $a == 1
			BC( "screen" , "player" , -1  , "Kill all present monsters before activating this statue" )
			return
		endif
		
		
		if $b == 1
			BC( "screen" , "player" , -1  , "Kill all present monsters before activating this statue" )
			return
		endif
		
		if $d == 1
			BC( "screen" , "player" , -1  , "Kill all present monsters before activating this statue" )
			return
		endif
		
		if $c == 0
			SetEctypeVar( -1 , 18 , 1 )
			StartEctypeTimer ( -1 , 6 )
			PlayEffect(-1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini", 1 )
			BC( "screen" , "map" , $ectype_id , "The statue shakes fiercely! White Castle Guards will appear in 10 seconds!" )
		else
			if $c == 1
				BC( "screen" , "player" , -1 , "Kill all the White Castle Guards to activate Statue III." )
				return
			endif
			
			if $c == 10
				BC( "screen" , "player" , -1  , "Statue III activated!" )
				return	
			endif
		endif
				
				
				
				
	
		
	}