	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/10
	//		Author:???
	//		TaskName:Ectype-elinggubao-Init.s
	//		TaskID:???????
	//
	//****************************************
	
	
	function OnCreate(){
	
	}
		
	function InitTimer(){	
		//????????
		SetEctypeTimer(1, 5, "EctypeTime0")
		
		//???
		SetEctypeTimer(2, 10, "EctypeTime1")
		
		//???????????????
		SetEctypeTimer(3, 10, "EctypeTime2")
		
		//????-????
		SetEctypeTimer(4, 10, "EctypeTime3")
		
		//????-?????
		SetEctypeTimer(5, 10, "EctypeTime4")
		
		//????-???????
		SetEctypeTimer(6, 10, "EctypeTime5")
		
		//????-???????
		SetEctypeTimer(7, 10, "EctypeTime6")
		
		//???????????,3????????
		SetEctypeTimer(8, 2, "EctypeTime7")
		
		//???????????,5???????????????
		SetEctypeTimer(9, 5, "EctypeTime8")
	}
	
	
	function EctypeTime0(){

		
	
		$Ectype_ID = GetEctypeID( -1 , 258 )
		
		CloseMask( 1 , $Ectype_ID )
		CloseMask( 2 , $Ectype_ID )
		CloseMask( 3 , $Ectype_ID )
		CloseMask( 4 , $Ectype_ID )
		CloseMask( 5 , $Ectype_ID )
		CloseMask( 6 , $Ectype_ID )
		CloseMask( 7 , $Ectype_ID )
		CloseMask( 8 , $Ectype_ID )
		CloseMask( 9 , $Ectype_ID )
		
		//???????,0????  1 ??
		$mode = GetEctypeVar( $Ectype_ID , 111 )
		
		//110???????
		$level = GetEctypeVar( $Ectype_ID , 110 )
		if $mode == 0
			//????
			$ectlevel = 54
		endif
		
		if $mode == 1
			//????
			$ectlevel = 55
		endif
		
		//??,????
		AddLevelMonster( 51601 , 54 , $level , 10 , $Ectype_ID , 44 , 113 , 6 )
		AddLevelMonster( 51601 , 54 , $level , 10 , $Ectype_ID , 53 , 115 , 6 )
		//????
		AddLevelMonster( 51616 , 54 , $level , 1 , $Ectype_ID , 63 , 114 , 0 )
		
		AddLevelMonster( 51616 , $ectlevel , $level , 1 , $Ectype_ID , 59 , 112 , 0 )
		AddLevelMonster( 51616 , $ectlevel , $level , 1 , $Ectype_ID , 55 , 113 , 0 )
		AddLevelMonster( 51616 , $ectlevel , $level , 1 , $Ectype_ID , 51 , 113 , 0 )
		AddLevelMonster( 51616 , $ectlevel , $level , 1 , $Ectype_ID , 47 , 113 , 0 )
		AddLevelMonster( 51616 , $ectlevel , $level , 1 , $Ectype_ID , 44 , 112 , 0 )
		AddLevelMonster( 51616 , $ectlevel , $level , 1 , $Ectype_ID , 40 , 111 , 0 )
		//??
		//AddLevelMonster( 51632 , $ectlevel , $level , 1 , $Ectype_ID , 40 , 110 , 0 )
		//?????????
		AddLevelMonster( 51605 , $ectlevel , $level , 2 , $Ectype_ID , 7 , 90 , 4 )
		AddLevelMonster( 51605 , $ectlevel , $level , 2 , $Ectype_ID , 7 , 86 , 4 )
		AddLevelMonster( 51605 , $ectlevel , $level , 2 , $Ectype_ID , 6 , 82 , 4 )
		AddLevelMonster( 51605 , $ectlevel , $level , 2 , $Ectype_ID , 9 , 79 , 4 )
		AddLevelMonster( 51605 , $ectlevel , $level , 2 , $Ectype_ID , 11 , 74 , 4 )
		AddLevelMonster( 51605 , $ectlevel , $level , 2 , $Ectype_ID , 10 , 68 , 4 )
		AddLevelMonster( 51605 , $ectlevel , $level , 2 , $Ectype_ID , 8 , 63 , 4 )
		AddLevelMonster( 51605 , $ectlevel , $level , 2 , $Ectype_ID , 6 , 57 , 4 )
		
		AddLevelMonster( 51606 , $ectlevel , $level , 10 , $Ectype_ID , 7 , 52 , 5 )
		AddLevelMonster( 51606 , $ectlevel , $level , 2 , $Ectype_ID , 7 , 44 , 3 )
		AddLevelMonster( 51606 , $ectlevel , $level , 2 , $Ectype_ID , 16 , 42 , 5 )
		AddLevelMonster( 51606 , $ectlevel , $level , 10 , $Ectype_ID , 24 , 42 , 5 )
		AddLevelMonster( 51606 , $ectlevel , $level , 2 , $Ectype_ID , 14 , 51 , 3 )
		AddLevelMonster( 51606 , $ectlevel , $level , 10 , $Ectype_ID , 24 , 52 , 5 )
		AddLevelMonster( 51606 , $ectlevel , $level , 2 , $Ectype_ID , 24 , 60 , 3 )
		
		//????
		AddLevelMonster( 51610 , $ectlevel , $level , 10 , $Ectype_ID , 52 , 61 , 8 )
		
		//?????????
		AddLevelMonster( 51616 , $ectlevel , $level , 2 , $Ectype_ID , 71 , 41 , 3 )
		AddLevelMonster( 51616 , $ectlevel , $level , 5 , $Ectype_ID , 81 , 42 , 8 )
		AddLevelMonster( 51616 , $ectlevel , $level , 2 , $Ectype_ID , 81 , 30 , 3 )
		AddLevelMonster( 51610 , $ectlevel , $level , 6 , $Ectype_ID , 94 , 52 , 6 )
		AddLevelMonster( 51616 , $ectlevel , $level , 4 , $Ectype_ID , 95 , 41 , 5 )
		//?????????
		AddLevelMonster( 51617 , $ectlevel , $level , 10 , $Ectype_ID , 105 , 45 , 10 )
		//AddLevelMonster( 51623 , $ectlevel , $level , 1 , $Ectype_ID , 94 , 70 , 0 )
		
		//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		//???????,0????  1 ??
		$mode = GetEctypeVar( $Ectype_ID , 111 )
		
		//110???????
		$level = GetEctypeVar( $Ectype_ID , 110 )
		if $mode == 0
			//????
			$ectlevel = 65
		endif
		
		if $mode == 1
			//????
			$ectlevel = 66
		endif

		//??????
		AddLevelMonster( 51612 , $ectlevel , $level , 2 , $Ectype_ID , 52 , 38 , 5 )
		AddLevelMonster( 51612 , $ectlevel , $level , 2 , $Ectype_ID , 58 , 38 , 5 )
		


		//??????NPC
		//???????????????
		DeleteNPC( 2253 , $Ectype_ID )
		//????(???)
		DeleteNPC( 2184 , $Ectype_ID )
		//??????
		DeleteNPC( 2133 , $Ectype_ID )
		DeleteNPC( 2134 , $Ectype_ID )
		DeleteNPC( 2135 , $Ectype_ID )
		DeleteNPC( 2136 , $Ectype_ID )
		//??????????npc
		DeleteNPC( 2143 , $Ectype_ID )
		
		DeleteNPC( 2148 , $Ectype_ID )
		
		DeleteNPC( 2254 , $Ectype_ID )
		DeleteNPC( 2255 , $Ectype_ID )

												
				

	}	
	
	
	//????-???
	
	function EctypeTime1(){
		
		$ectype_id = GetEctypeID( -1 , 258 )
		//???????,0????  1 ??
		$mode = GetEctypeVar( $ectype_id , 111 )
		
		//110???????
		$level = GetEctypeVar( $ectype_id , 110 )
		if $mode == 0
			//????
			$ectlevel = 63
		endif
		
		if $mode == 1
			//????
			$ectlevel = 64
		endif	
		
		BC( "screen" , "map" , $ectype_id , "Four Maggot Queens have appeared!" )
		AddLevelMonster( 51615 , $ectlevel , $level , 1 , $ectype_id , 76 , 69 , 0 )
		AddLevelMonster( 51615 , $ectlevel , $level , 1 , $ectype_id , 76 , 62 , 0 )
		AddLevelMonster( 51615 , $ectlevel , $level , 1 , $ectype_id , 72 , 69 , 0 )
		AddLevelMonster( 51615 , $ectlevel , $level , 1 , $ectype_id , 72 , 62 , 0 )

	}
	
	function OnTDSuccess(){
	
	
	}

	//????????
	function EctypeTime2(){
		
		
		$count1 = GetEctypeVar( -1 , 9 )
		$count2 = GetEctypeVar( -1 , 10 )
		$count3 = GetEctypeVar( -1 , 11 )
		$count4 = GetEctypeVar( -1 , 12 )
		
	//~~~~~~~~??????~~~~~~~~~~~~~
		$ectype_ID = GetEctypeID( -1 , 258 )
		//???????,0????  1 ??
		$mode = GetEctypeVar( $ectype_ID , 111 )
		
		//110???????
		$level = GetEctypeVar( $ectype_ID , 110 )
		
		if $mode == 0
			//????
			$ectlevel = 54
		endif
		
		if $mode == 1
			//????
			$ectlevel = 55
		endif
	//~~~~~~~~??????~~~~~~~~~~~~~	
		
		//??????1
		if $count1 == 0
			AddLevelMonster( 51602 , $ectlevel , $level , 30 , $ectype_ID , 24 , 75 , 10 )
			return
		endif
		
		//??????2
		if $count2 == 0
			AddLevelMonster( 51603 , $ectlevel , $level , 30 , $ectype_ID , 24 , 75 , 10 )
			return
		endif
	
		//??????????
		if $count3 == 0
			AddLevelMonster( 51607 , $ectlevel , $level , 10 , $ectype_ID , 24 , 75 , 10 )
			return
		endif
		
		//???????
		if $count4 == 0
			if $mode == 0
				AddLevelMonster( 51608 , 69 , $level , 40 , $ectype_ID , 24 , 75 , 10 )
			endif
			
			if $mode == 1
				AddLevelMonster( 51608 , 70 , $level , 40 , $ectype_ID , 24 , 75 , 10 )
			endif
		endif
		
	}


	//????-????
	function EctypeTime3(){
		
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
		
		
		AddLevelMonster( 51603 , $ectlevel , $level , 30 , $ectype_id , 74 , 66 , 10 )
		
		
	}
	
	
	
	//????-?????
	function EctypeTime4(){
		
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
		
		
		AddLevelMonster( 51611 , $ectlevel , $level , 30 , $ectype_id , 74 , 66 , 10 )
		
		
	}
	
	//????-???????
	function EctypeTime5(){
		
		$ectype_id = GetEctypeID( -1 , 258 )
		//???????,0????  1 ??
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
		
		
		AddLevelMonster( 51613 , $ectlevel , $level , 8 , $ectype_id , 74 , 66 , 10 )
		
		
	}
	
	
	//????-???????
	function EctypeTime6(){
		
		$ectype_id = GetEctypeID( -1 , 258 )
		//???????,0????  1 ??
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
		
		AddLevelMonster( 51614 , $ectlevel , $level , 8 , $ectype_id , 74 , 66 , 10)
		
		
	}
	
	
	//????npc3????????
	function EctypeTime7(){
		$ectype_id = GetEctypeID( -1 , 258 )
		NPCAction(-1 , 2141 , specialidle , 1)
		BC( "screen" , "map" , $ectype_id , "Let's play! I won't be too rough." )
	
	}
	
	
	//8???????????????
	function EctypeTime8(){
		
		$ectype_id = GetEctypeID( -1 , 258 )
		//??BOSS???,0????  1 ??
		$mode = GetEctypeVar( $ectype_id , 111 )
		
		//110???????
		$level = GetEctypeVar( $ectype_id , 110 )
		if $mode == 0
			AddLevelMonster( 51633 , 62 , $level , 1 , $ectype_id , 81 , 10 , 0 )
		endif
		
		if $mode == 1
			AddLevelMonster( 51633 , 71 , $level , 1 , $ectype_id , 81 , 10 , 0 )
		endif
		
		BC( "screen" , "map" , $ectype_id , "The Dark Harbinger swings his scythe menacingly." )
		DeleteNPC( 2141 , $ectype_id )
		
	
	}