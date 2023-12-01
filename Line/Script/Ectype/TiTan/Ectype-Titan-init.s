	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/08/09
	//		Author:???
	//		TaskName:Ectype-Titan-init.s
	//		TaskID:????
	//
	//****************************************
	
	function OnCreate(){
		//??????ID
		$ectype_ID = GetEctypeID( -1, 303 )
		
	}
	
	
	function InitTimer(){
	
	  //??????????
	  SetEctypeTimer( 0, 1, "EctypeTime1" )
	  SetEctypeTimer( 1, 1, "EctypeTime2" )
	  SetEctypeTimer( 2, 1, "EctypeTime3" )
	  SetEctypeTimer( 3, 3, "EctypeTime4" )
	  SetEctypeTimer( 4, 6, "EctypeTime5" )
	  SetEctypeTimer( 5, 4, "EctypeTime6" )
	  SetEctypeTimer( 6, 4, "EctypeTime7" )
	  SetEctypeTimer( 7, 10, "EctypeTime8" )
	  SetEctypeTimer( 8, 10, "EctypeTime9" )
	  SetEctypeVar( -1, 10 , 1)
	  
	}
	
	//?????
	function EctypeTime1(){
		
		SetEctypeVar( -1, 3, 0 )
		$ectype_ID = GetEctypeID( -1 ,303 )
		$Var = GetEctypeVar( -1, 0 )
		
		if $Var == 0
			//????
			SetEctypeVar( -1, 110, 1215000 )
			AddMonsterByFloat( 52222, 1, $ectype_ID, 62, 127 , 0 )
			AddMonsterByFloat( 52222, 1, $ectype_ID, 62, 140 , 0 )
			AddMonsterByFloat( 52222, 1, $ectype_ID, 118, 128 , 0 )
			AddMonsterByFloat( 52222, 1, $ectype_ID, 118, 140 , 0 )
			$n = 10
			while $n > 0
				call RandomPos()
				$n = $n - 1
			endwhile
		endif
		
		if $Var == 1
			//????
			SetEctypeVar( -1, 110, 4590000 )
			AddMonsterByFloat( 52252, 1, $ectype_ID, 62, 127 , 0 )
			AddMonsterByFloat( 52252, 1, $ectype_ID, 62, 140 , 0 )
			AddMonsterByFloat( 52252, 1, $ectype_ID, 118, 128 , 0 )
			AddMonsterByFloat( 52252, 1, $ectype_ID, 118, 140 , 0 )
			$n = 10
			while $n > 0
				call RandomPos()
				$n = $n - 1
			endwhile
		endif
		
		if $Var == 2
			//????
			SetEctypeVar( -1, 110, 8100000 )
			AddMonsterByFloat( 52272, 1, $ectype_ID, 62, 127 , 0 )
			AddMonsterByFloat( 52272, 1, $ectype_ID, 62, 140 , 0 )
			AddMonsterByFloat( 52272, 1, $ectype_ID, 118, 128 , 0 )
			AddMonsterByFloat( 52272, 1, $ectype_ID, 118, 140 , 0 )
			$n = 10
			while $n > 0
				call RandomPos()
				$n = $n - 1
			endwhile
		endif
		
		BC("screen", "map", $ectype_ID, "Kronos is asleep. Please be careful. ")
		
		AddMonsterByFloat( 52285 , 1 , $ectype_ID , 92 , 81 , 0)
		
			
	}
	
	function EctypeTime2(){
		
		$ectype_ID = GetEctypeID( -1 ,303 )
		$Var = GetEctypeVar( -1, 0 )
		
		if $Var == 0
			//????
			AddMonsterByFloat( 52229, 1, $ectype_ID, 91, 173 , 0 )
		endif
		
		if $Var == 1
			//????
			AddMonsterByFloat( 52229, 1, $ectype_ID, 91, 173 , 0 )
		endif
		
		if $Var == 2
			//????
			AddMonsterByFloat( 52229, 1, $ectype_ID, 91, 173 , 0 )
		endif
		
		BC("screen", "map", $ectype_ID, "Come, my pretties. Stare deep into my eye...")
			
	}
	
	function EctypeTime3(){
		
		$ectype_ID = GetEctypeID( -1, 303 )
		$Var = GetEctypeVar( -1, 0 )
		
		if $Var == 0
			//????
			AddMonsterByFloat( 52221, 1, $ectype_ID, 91, 275, 0 )
			AddMonsterByFloat( 52221, 1, $ectype_ID, 90, 277, 0 )
			AddMonsterByFloat( 52221, 1, $ectype_ID, 88, 276, 0 )
			AddMonsterByFloat( 52221, 2, $ectype_ID, 76, 274, 2 )
			AddMonsterByFloat( 52221, 2, $ectype_ID, 69, 273, 2 )
			AddMonsterByFloat( 52221, 2, $ectype_ID, 70, 280, 2 )
			AddMonsterByFloat( 52221, 2, $ectype_ID, 76, 280, 2 )
			AddMonsterByFloat( 52221, 3, $ectype_ID, 73, 245, 2 )
			AddMonsterByFloat( 52221, 3, $ectype_ID, 72, 239, 2 )
			AddMonsterByFloat( 52224, 1, $ectype_ID, 59, 242, 0 )
		endif
		
		if $Var == 1
			//????
			AddMonsterByFloat( 52251, 1, $ectype_ID, 91, 275, 0 )
			AddMonsterByFloat( 52251, 1, $ectype_ID, 90, 277, 0 )
			AddMonsterByFloat( 52251, 1, $ectype_ID, 88, 276, 0 )
			AddMonsterByFloat( 52251, 2, $ectype_ID, 76, 274, 2 )
			AddMonsterByFloat( 52251, 2, $ectype_ID, 69, 273, 2 )
			AddMonsterByFloat( 52251, 2, $ectype_ID, 70, 280, 2 )
			AddMonsterByFloat( 52251, 2, $ectype_ID, 76, 280, 2 )
			AddMonsterByFloat( 52251, 3, $ectype_ID, 73, 245, 2 )
			AddMonsterByFloat( 52251, 3, $ectype_ID, 72, 239, 2 )
			AddMonsterByFloat( 52254, 1, $ectype_ID, 59, 242, 0 )
		endif
		
		if $Var == 2
			//????
			AddMonsterByFloat( 52271, 1, $ectype_ID, 91, 275, 0 )
			AddMonsterByFloat( 52271, 1, $ectype_ID, 90, 277, 0 )
			AddMonsterByFloat( 52271, 1, $ectype_ID, 88, 276, 0 )
			AddMonsterByFloat( 52271, 2, $ectype_ID, 76, 274, 2 )
			AddMonsterByFloat( 52271, 2, $ectype_ID, 69, 273, 2 )
			AddMonsterByFloat( 52271, 2, $ectype_ID, 70, 280, 2 )
			AddMonsterByFloat( 52271, 2, $ectype_ID, 76, 280, 2 )
			AddMonsterByFloat( 52271, 3, $ectype_ID, 73, 245, 2 )
			AddMonsterByFloat( 52271, 3, $ectype_ID, 72, 239, 2 )
			AddMonsterByFloat( 52274, 1, $ectype_ID, 59, 242, 0 )
		endif
		
		BC("screen", "map", $ectype_ID, "Dangers lurk in the tower. ")
		
	}
	
	function EctypeTime4(){
		
		$ectype_ID = GetEctypeID( -1, 303 )
		ReleaseEctype( $ectype_ID )
		
	}
	
	function EctypeTime5(){
		
		OpenMapMask( 7 )
		
	}
	
	function EctypeTime6(){
		
		$ectype_ID = GetEctypeID( -1, 303 )
		AddMonsterByFloat( 52246, 1, $ectype_ID, 81, 134, 0, 0, 90 )
		
	}
	
	function EctypeTime7(){
		
		$ectype_ID = GetEctypeID( -1, 303 )
		AddMonsterByFloat( 52246, 1, $ectype_ID, 103, 134, 0, 0, 90 )
		
	}
	
	function EctypeTime8(){
		
		$ectype_ID = GetEctypeID( -1, 303 )
		SetEctypeVar( -1, 5, 0 )
		StartEctypeTimer( -1, 8 )
		
	}
	
	function EctypeTime9(){
		
		$ectype_ID = GetEctypeID( -1, 303 )
		SetEctypeVar( -1, 5, 0 )
		StartEctypeTimer( -1, 7 )
		
	}
	
	function RandomPos(){
		
		$ectype_ID = GetEctypeID( -1 ,303 )
		$Var = GetEctypeVar( -1, 0 )
		
		if $Var == 0
			$a = 52221
			$b = 52223
		endif
		
		if $Var == 1
			$a = 52251
			$b = 52253
		endif
		
		if $Var == 2
			$a = 52271
			$b = 52273
		endif
		
		$Rndx = RandomNumber( 62, 118 )
		$Rndy = RandomNumber( 127, 140 )
		AddMonsterByFloat( $a, 1, $ectype_ID, $Rndx, $Rndy, 1 )
		
		$Rndx = RandomNumber( 62, 118 )
		$Rndy = RandomNumber( 127, 140 )
		AddMonsterByFloat( $b, 1, $ectype_ID, $Rndx, $Rndy, 1 )
		
	}