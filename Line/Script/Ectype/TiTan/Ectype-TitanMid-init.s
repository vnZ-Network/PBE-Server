	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/08/09
	//		Author:???
	//		TaskName:Ectype-TitanMid-init.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnCreate(){
		//??????ID
		$ectype_ID = GetEctypeID( -1, 313 )
		
	}
	
	
	function InitTimer(){
	
	  //??????????
	  SetEctypeTimer( 0, 1, "EctypeTime1" )
	  SetEctypeTimer( 1, 3, "EctypeTime2" )
	  
	}
	
	//?????
	function EctypeTime1(){
		
		$ectype_ID = GetEctypeID( -1, 313 )
		$Var = GetEctypeVar( -1, 0 )
		
		if $Var == 0
			//????
			$a = 52223
		endif
		
		if $Var == 1
			//????
			$a = 52253
		endif
		
		if $Var == 2
			//????
			$a = 52273
		endif
		
		$n = 15
		while $n > 0
			$Rndx = RandomNumber( 107, 143 )
			$Rndy = RandomNumber( 200, 210 )
			AddMonsterByFloat( $a, 1, $ectype_ID, $Rndx, $Rndy, 0 )
			$Rndx1 = RandomNumber( 146, 179 )
			$Rndy1 = RandomNumber( 200, 210 )
			AddMonsterByFloat( $a, 1, $ectype_ID, $Rndx1, $Rndy1, 0 )
			$Rndx2 = RandomNumber( 182, 217 )
			$Rndy2 = RandomNumber( 200, 210 )
			AddMonsterByFloat( $a, 1, $ectype_ID, $Rndx2, $Rndy2, 0 )
			$n = $n - 1
		endwhile
		
		BC("screen", "map", $ectype_ID, "Heroes! Please pass the hallway quickly!")
			
	}
	
	function EctypeTime2(){
		
		$ectype_ID = GetEctypeID( -1, 313 )
		ReleaseEctype( $ectype_ID )
		
	}