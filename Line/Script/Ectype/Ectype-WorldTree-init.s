	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/08/13
	//		Author:???
	//		TaskName:Ectype-WorldTree-init.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnCreate(){
		//??????ID
		$ectype_ID = GetEctypeID( -1, 250 )
		DeleteNPC( 472, $ectype_ID )
		DeleteNPC( 473, $ectype_ID )
		DeleteNPC( 476, $ectype_ID )
		DeleteNPC( 485, $ectype_ID )
		
	}
	
	
	function InitTimer(){
	
	  //??????????
	  SetEctypeTimer( 0, 1, "EctypeTime1" )
	  SetEctypeTimer( 1, 2, "EctypeTime2" )
	  SetEctypeTimer( 2, 7, "EctypeTime3" )
	  SetEctypeTimer( 3, 60, "EctypeTime4" )
	  SetEctypeTimer( 4, 60, "EctypeTime5" )
	  SetEctypeTimer( 5, 3, "EctypeTime6" )
	  SetEctypeTimer( 6, 3, "EctypeTime7" )
	  SetEctypeTimer( 7, 1, "EctypeTime8" )
	  SetEctypeTimer( 8, 3, "EctypeTime9" )
	  SetEctypeTimer( 9, 500, "EctypeTime10" )
	  
	}
	
	//?????
	function EctypeTime1(){
		$Var = GetEctypeVar( -1, 6 )
		if $Var == 0
			//??????ID
			$ectype_ID = GetEctypeID( -1 ,250 )
			$ectype_type = GetEctypeVar( -1, 110 )
			//????
			AddLevelMonster( 51380, 30, $ectype_type, 2, $ectype_ID, 51, 37, 1 )
			AddLevelMonster( 51382, 87, $ectype_type, 1, $ectype_ID, 50, 38, 0 )
			AddLevelMonster( 51380, 30, $ectype_type, 2, $ectype_ID, 54, 36, 1 )
			AddLevelMonster( 51382, 87, $ectype_type, 1, $ectype_ID, 55, 35, 0 )
			AddLevelMonster( 51380, 30, $ectype_type, 2, $ectype_ID, 56, 36, 1 )
			AddLevelMonster( 51382, 87, $ectype_type, 1, $ectype_ID, 57, 37, 0 )
			AddLevelMonster( 51380, 30, $ectype_type, 2, $ectype_ID, 57, 38, 1 )
			AddLevelMonster( 51382, 87, $ectype_type, 1, $ectype_ID, 58, 37, 0 )
			AddLevelMonster( 51380, 30, $ectype_type, 2, $ectype_ID, 58, 39, 1 )
			AddLevelMonster( 51382, 87, $ectype_type, 1, $ectype_ID, 57, 38, 0 )
			AddLevelMonster( 51380, 30, $ectype_type, 2, $ectype_ID, 56, 40, 1 )
			AddLevelMonster( 51382, 87, $ectype_type, 1, $ectype_ID, 55, 41, 0 )
			AddLevelMonster( 51380, 30, $ectype_type, 2, $ectype_ID, 57, 42, 1 )
			AddLevelMonster( 51382, 87, $ectype_type, 1, $ectype_ID, 58, 41, 0 )
			AddLevelMonster( 51380, 30, $ectype_type, 1, $ectype_ID, 59, 41, 0 )
			AddLevelMonster( 51382, 87, $ectype_type, 1, $ectype_ID, 60, 40, 0 )
			SetEctypeVar( -1, 6, 1 )
			BC( "screen", "map", $ectype_ID, "Who can help me?!" )
		endif
		
		$ectype_ID = GetEctypeID( -1 ,250 )
		$ectype_type = GetEctypeVar( -1, 119 )
		$ectype_type = $ectype_type + 1
		SetEctypeVar( -1, 119, $ectype_type )
		StartEctypeTimer( $ectype_ID, 0 )
				
	}
	
	function EctypeTime2(){
		
		//??????ID
		$ectype_ID = GetEctypeID( -1, 250 )
		$ectype_type = GetEctypeVar( -1, 110 )
		//????
		AddLevelMonster( 51383, 85, $ectype_type, 2, $ectype_ID, 86, 35, 1 )
		AddLevelMonster( 51383, 85, $ectype_type, 2, $ectype_ID, 83, 36, 1 )
		AddLevelMonster( 51383, 85, $ectype_type, 2, $ectype_ID, 84, 38, 1 )
		AddLevelMonster( 51383, 85, $ectype_type, 2, $ectype_ID, 83, 41, 1 )
		AddLevelMonster( 51383, 85, $ectype_type, 2, $ectype_ID, 84, 43, 1 )
		AddLevelMonster( 51383, 85, $ectype_type, 2, $ectype_ID, 84, 45, 1 )
		AddLevelMonster( 51383, 85, $ectype_type, 2, $ectype_ID, 87, 44, 1 )
		AddLevelMonster( 51383, 85, $ectype_type, 2, $ectype_ID, 90, 45, 1 )
		AddLevelMonster( 51383, 85, $ectype_type, 2, $ectype_ID, 91, 42, 1 )
		AddLevelMonster( 51383, 85, $ectype_type, 2, $ectype_ID, 90, 39, 1 )
		AddMonster( 51403, 1, $ectype_ID, 87, 37, 0 )
		AddMonster( 51403, 1, $ectype_ID, 85, 42, 0 )
		AddMonster( 51403, 1, $ectype_ID, 89, 41, 0 )
				
	}
	
	function EctypeTime3(){
		
		//??????ID
		$ectype_ID = GetEctypeID( -1, 250 )
		$ectype_type = GetEctypeVar( -1, 110 )
		//????
		AddLevelMonster( 51383, 85, $ectype_type, 2, $ectype_ID, 89, 38, 1 )
		AddLevelMonster( 51383, 85, $ectype_type, 2, $ectype_ID, 87, 35, 1 )
		AddLevelMonster( 51383, 85, $ectype_type, 2, $ectype_ID, 84, 35, 1 )
		AddLevelMonster( 51383, 85, $ectype_type, 2, $ectype_ID, 84, 38, 1 )
		AddLevelMonster( 51383, 85, $ectype_type, 2, $ectype_ID, 82, 41, 1 )
		AddLevelMonster( 51383, 85, $ectype_type, 2, $ectype_ID, 84, 43, 1 )
		AddLevelMonster( 51383, 85, $ectype_type, 2, $ectype_ID, 85, 45, 1 )
		AddLevelMonster( 51383, 85, $ectype_type, 2, $ectype_ID, 88, 44, 1 )
		AddLevelMonster( 51383, 85, $ectype_type, 2, $ectype_ID, 91, 44, 1 )
		AddLevelMonster( 51383, 85, $ectype_type, 2, $ectype_ID, 90, 41, 1 )
		AddMonster( 51403, 1, $ectype_ID, 90, 40, 0 )
		AddMonster( 51403, 1, $ectype_ID, 85, 38, 0 )
		AddMonster( 51403, 1, $ectype_ID, 87, 43, 0 )
		
				
	}
	
	function EctypeTime4(){
		
		//??????ID
		$ectype_ID = GetEctypeID( -1 ,250 )
		$ectype_type = GetEctypeVar( -1, 112 )
		$ectype_type = $ectype_type - 2
		if $ectype_type <= 0
			$ectype_type = 0
		endif
		SetEctypeVar( -1, 112, $ectype_type )
		
		$ectype_type = GetEctypeVar( -1, 112 )
		if $ectype_type > 0
			BC( "screen", "map", $ectype_ID, "Because of leaks, the water level in the Reservoir has fallen." )
			StartEctypeTimer( $ectype_ID, 4 )
		endif
				
	}
	
	function EctypeTime5(){
		
		//??????ID
		$ectype_ID = GetEctypeID( -1 ,250 )
		$ectype_type = GetEctypeVar( -1, 112 )
		$ectype_type = $ectype_type - 2
		if $ectype_type <= 0
			$ectype_type = 0
		endif
		SetEctypeVar( -1, 112, $ectype_type )
		
		$ectype_type = GetEctypeVar( -1, 112 )
		if $ectype_type > 0
			BC( "screen", "map", $ectype_ID, "Because of leaks, the water level in the Reservoir has fallen." )
			StartEctypeTimer( $ectype_ID, 3 )
		endif	
				
	}
	
	function EctypeTime6(){
		
		//??????ID
		$ectype_ID = GetEctypeID( -1 ,250 )
		$ectype_type = GetEctypeVar( -1, 110 )
		//????
		AddLevelMonster( 51385, 30, $ectype_type, 5, $ectype_ID, 87, 52, 2 )
		AddLevelMonster( 51386, 30, $ectype_type, 1, $ectype_ID, 87, 52, 0 )
		AddLevelMonster( 51385, 30, $ectype_type, 5, $ectype_ID, 86, 57, 2 )
		AddLevelMonster( 51386, 30, $ectype_type, 1, $ectype_ID, 86, 57, 0 )
		AddLevelMonster( 51385, 30, $ectype_type, 5, $ectype_ID, 84, 62, 2 )
		AddLevelMonster( 51386, 30, $ectype_type, 1, $ectype_ID, 84, 62, 0 )
		AddLevelMonster( 51385, 30, $ectype_type, 5, $ectype_ID, 82, 69, 2 )
		AddLevelMonster( 51386, 30, $ectype_type, 1, $ectype_ID, 82, 69, 0 )
		AddLevelMonster( 51385, 30, $ectype_type, 5, $ectype_ID, 82, 74, 2 )
		AddLevelMonster( 51386, 30, $ectype_type, 1, $ectype_ID, 82, 74, 0 )
		AddLevelMonster( 51385, 30, $ectype_type, 5, $ectype_ID, 82, 80, 2 )
		AddLevelMonster( 51386, 30, $ectype_type, 1, $ectype_ID, 82, 80, 0 )
		AddLevelMonster( 51385, 30, $ectype_type, 5, $ectype_ID, 80, 82, 2 )
		AddLevelMonster( 51386, 30, $ectype_type, 1, $ectype_ID, 81, 84, 0 )
		AddLevelMonster( 51385, 30, $ectype_type, 5, $ectype_ID, 84, 82, 2 )
		AddLevelMonster( 51386, 30, $ectype_type, 1, $ectype_ID, 83, 84, 0 )
		
				
	}
	
	function EctypeTime7(){
		
		//??????ID
		$ectype_ID = GetEctypeID( -1, 250 )
		$ectype_type = GetEctypeVar( -1, 110 )
		//????
		AddMonsterByFloat( 51399, 1, $ectype_ID, 143, 210, 0 )
		AddLevelMonster( 51395, 85, $ectype_type, 1, $ectype_ID, 60, 79, 0 )
		AddLevelMonster( 51395, 85, $ectype_type, 1, $ectype_ID, 50, 79, 0 )
		AddLevelMonster( 51395, 85, $ectype_type, 1, $ectype_ID, 50, 87, 0 )
		AddLevelMonster( 51395, 85, $ectype_type, 1, $ectype_ID, 60, 87, 0 )
		AddLevelMonster( 51397, 35, $ectype_type, 3, $ectype_ID, 59, 85, 1 )
		AddLevelMonster( 51397, 35, $ectype_type, 3, $ectype_ID, 51, 86, 1 )
		AddLevelMonster( 51397, 35, $ectype_type, 3, $ectype_ID, 52, 80, 1 )
		AddLevelMonster( 51397, 35, $ectype_type, 3, $ectype_ID, 59, 80, 1 )
		AddLevelMonster( 51397, 35, $ectype_type, 3, $ectype_ID, 57, 85, 1 )
		AddLevelMonster( 51397, 35, $ectype_type, 3, $ectype_ID, 52, 84, 1 )
		AddLevelMonster( 51397, 35, $ectype_type, 3, $ectype_ID, 53, 81, 1 )
		AddLevelMonster( 51397, 35, $ectype_type, 3, $ectype_ID, 57, 81, 1 )
		AddLevelMonster( 51397, 35, $ectype_type, 3, $ectype_ID, 55, 81, 1 )
		AddLevelMonster( 51397, 35, $ectype_type, 3, $ectype_ID, 55, 83, 1 )
		
				
	}
	
	function EctypeTime8(){
		
		//??????ID
		$ectype_ID = GetEctypeID( -1, 250 )
		$ectype_type = GetEctypeVar( -1, 110 )
		//????
		AddLevelMonster( 51405, 30, $ectype_type, 1, $ectype_ID, 92, 83, 0 )
				
	}
	
	function EctypeTime9(){
		
		//??????ID
		$ectype_ID = GetEctypeID( -1 ,250 )
		AddMonsterByFloat( 51407, 1, $ectype_ID, 169, 178, 0 )
		AddMonsterByFloat( 51408, 1, $ectype_ID, 155, 178, 0 )
		AddMonsterByFloat( 51407, 1, $ectype_ID, 155, 162, 0 )
		AddMonsterByFloat( 51407, 1, $ectype_ID, 169, 162, 0 )
				
	}
	
	function EctypeTime10(){
		
		//??????ID
		$ectype_ID = GetEctypeID( -1, 250 )
		$ectype_type = GetEctypeVar( -1, 110 )
		//????
		AddLevelMonster( 51401, 33, $ectype_type, 1, $ectype_ID, 62, 66, 0 )
				
	}
	