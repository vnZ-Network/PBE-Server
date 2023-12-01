	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/06
	//		Author:???
	//		TaskName:Ectype-elinggubao-Npc-2190.s
	//		TaskID:??????
	//
	//****************************************
	
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		$ectype_id = GetEctypeID( -1 , 258 )
		$bag = GetPlayerInfo( -1, "nullitem", 0 )
		
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
		
		//~~~~~~~~~~~~~~~~~~~~~~~
		
		if $bag < 1
			BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif	
				
		$a = GetPlayerInfo( -1, "item", 63714 )
		
		if $a < 1
			AddPlayerInfo( -1, "item", 63714 , 1 )
		else
			BC( "screen" , "player" , -1 , "You already have a Key to the Gallery" )
			return	
		endif
		
		
		//???????????
		$rush = GetEctypeVar( $ectype_id , 14 )
		if $rush == 0
		
			BC( "dialogbox" , "player" , -1 , "You searched the Moonlight Tree's roots and found the {#ff66b400=Key to the Gallery#}!\n\n{#ffe60000=The ground rumbles beneath you for a moment. Be wary as you make your way back...#}" )
		
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
			
			AddLevelMonster( 51606 ,  $ectlevel , $level , 10 ,$ectype_id, 104 , 28 , 4 )
			AddLevelMonster( 51606 ,  $ectlevel , $level , 10 ,$ectype_id, 95 , 29 , 4 )
			
			$mode = GetEctypeVar( $ectype_id , 111 )
			//110???????
			$level = GetEctypeVar( $ectype_id , 110 )
			if $mode == 0
				//????
				$ectlevel = 65
			endif
			
			if $mode == 1
				//????
				$ectlevel = 66
			endif
	
			AddLevelMonster( 51612 ,  $ectlevel , $level , 4 ,$ectype_id, 80 , 42 , 6 )
			AddLevelMonster( 51612 ,  $ectlevel , $level , 1 ,$ectype_id, 102 , 28 , 0 )
			AddLevelMonster( 51612 ,  $ectlevel , $level , 1 ,$ectype_id, 95 , 29 , 0 )
			AddLevelMonster( 51612 ,  $ectlevel , $level , 1 ,$ectype_id, 95 , 40 , 0 )
			AddLevelMonster( 51612 ,  $ectlevel , $level , 1 ,$ectype_id, 96 , 60 , 0 )
			AddLevelMonster( 51612 ,  $ectlevel , $level , 1 ,$ectype_id, 100 , 65 , 0 )
			AddLevelMonster( 51612 ,  $ectlevel , $level , 1 ,$ectype_id, 101 , 73 , 0 )
			AddLevelMonster( 51612 ,  $ectlevel , $level , 1 ,$ectype_id, 101 , 80 , 0 )
			
			//?????
			AddMonsterByFloat( 51684 , 1 , $ectype_id , 268 , 49 , 0 )
			AddMonsterByFloat( 51684 , 1 , $ectype_id , 268 , 61 , 0 )
			AddMonsterByFloat( 51684 , 1 , $ectype_id , 260 , 72 , 0 )
			AddMonsterByFloat( 51684 , 1 , $ectype_id , 254 , 72 , 0 )
			AddMonsterByFloat( 51684 , 1 , $ectype_id , 246 , 79 , 0 )
			AddMonsterByFloat( 51684 , 1 , $ectype_id , 246 , 90 , 0 )
			PlayEffect(-1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini", 1 )
			SetEctypeVar( -1 , 14 , 1 )
		endif
		
	}