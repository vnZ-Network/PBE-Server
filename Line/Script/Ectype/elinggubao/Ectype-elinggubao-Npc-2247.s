	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/22
	//		Author:???
	//		TaskName:Ectype-elinggubao-Npc-2247.s
	//		TaskID:???????
	//
	//****************************************
	
	
	function OnRequest(){
		$open = GetEctypeVar( -1 , 25 )
		if $open != 0
			DisableNpcOption(0)
		endif
	
	}
	
	
	function OnOption0(){
		$ectype_id = GetEctypeID( -1 , 258 )
		$mon = GetEctypeVar( -1 , 4 )
		$open = GetEctypeVar( -1 , 25 )
		
		$mode = GetEctypeVar( $ectype_id , 111 )
		
		//110???????
		$level = GetEctypeVar( $ectype_id , 110 )
		if $mode == 0
			//????
			$ectlevel = 72
		endif
		
		if $mode == 1
			//????
			$ectlevel = 73
		endif
		
		if $open == 0
			if $mon == 0
				SetEctypeVar( -1 , 4 , 1 )
				AddLevelMonster( 51623 , $ectlevel , $level , 1 , $ectype_id , 92 , 71 , 0 )
				BC( "screen" , "map" , $ectype_id , "The Book of Demons appeared!" )
			else
				BC( "screen" , "map" , $ectype_id , "Destroy the Book of Demons!" )
			endif
		endif
		
		
	}