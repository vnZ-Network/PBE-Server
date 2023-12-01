	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/08/09
	//		Author:???
	//		TaskName:Ectype-TitanLast-init.s
	//		TaskID:??????
	//
	//****************************************
	
	function OnCreate(){
		//??????ID
		$ectype_ID = GetEctypeID( -1, 332 )
		DeleteNPC( 735, -1 )
		
	}
	
	function InitTimer(){
	
	  //??????????
	  SetEctypeTimer( 0, 1, "EctypeTime1" )
	  SetEctypeTimer( 1, 3, "EctypeTime2" )
	  SetEctypeTimer( 2, 2, "EctypeTime3" )
	  SetEctypeTimer( 3, 2, "EctypeTime4" )
	  
	}
	
	//?????
	function EctypeTime1(){
		
		SetEctypeVar( -1, 3, 1 )
		$ectype_ID = GetEctypeID( -1, 332 )
		$Var = GetEctypeVar( -1, 0 )
		
		if $Var == 0
			//????
			AddMonsterByFloat( 52223, 1, $ectype_ID, 212, 275 , 0 )
			AddMonsterByFloat( 52223, 1, $ectype_ID, 211, 277 , 0 )
			AddMonsterByFloat( 52223, 1, $ectype_ID, 208, 276 , 0 )
			AddMonsterByFloat( 52223, 1, $ectype_ID, 197, 271 , 1 )
			AddMonsterByFloat( 52223, 1, $ectype_ID, 190, 271 , 1 )
			AddMonsterByFloat( 52223, 1, $ectype_ID, 188, 276 , 1 )
			AddMonsterByFloat( 52223, 1, $ectype_ID, 190, 281 , 1 )
			AddMonsterByFloat( 52223, 1, $ectype_ID, 194, 282 , 1 )
			AddMonsterByFloat( 52223, 1, $ectype_ID, 198, 279 , 1 )
			AddMonsterByFloat( 52223, 1, $ectype_ID, 200, 276 , 1 )
			AddMonsterByFloat( 52248, 1, $ectype_ID, 193, 276 , 0 )
			AddMonsterByFloat( 52223, 2, $ectype_ID, 193, 245 , 2 )
			AddMonsterByFloat( 52223, 2, $ectype_ID, 193, 239 , 2 )
			AddMonsterByFloat( 52223, 2, $ectype_ID, 186, 242 , 2 )
			AddMonsterByFloat( 52225, 1, $ectype_ID, 176, 240 , 0 )
		endif
		
		if $Var == 1
			//????
			AddMonsterByFloat( 52253, 1, $ectype_ID, 212, 275 , 0 )
			AddMonsterByFloat( 52253, 1, $ectype_ID, 211, 277 , 0 )
			AddMonsterByFloat( 52253, 1, $ectype_ID, 208, 276 , 0 )
			AddMonsterByFloat( 52253, 1, $ectype_ID, 197, 271 , 1 )
			AddMonsterByFloat( 52253, 1, $ectype_ID, 190, 271 , 1 )
			AddMonsterByFloat( 52253, 1, $ectype_ID, 188, 276 , 1 )
			AddMonsterByFloat( 52253, 1, $ectype_ID, 190, 281 , 1 )
			AddMonsterByFloat( 52253, 1, $ectype_ID, 194, 282 , 1 )
			AddMonsterByFloat( 52253, 1, $ectype_ID, 198, 279 , 1 )
			AddMonsterByFloat( 52253, 1, $ectype_ID, 200, 276 , 1 )
			AddMonsterByFloat( 52248, 1, $ectype_ID, 193, 276 , 0 )
			AddMonsterByFloat( 52253, 2, $ectype_ID, 193, 245 , 2 )
			AddMonsterByFloat( 52253, 2, $ectype_ID, 193, 239 , 2 )
			AddMonsterByFloat( 52253, 2, $ectype_ID, 186, 242 , 2 )
			AddMonsterByFloat( 52255, 1, $ectype_ID, 176, 240 , 0 )
		endif
		
		if $Var == 2
			//????
			AddMonsterByFloat( 52273, 1, $ectype_ID, 212, 275 , 0 )
			AddMonsterByFloat( 52273, 1, $ectype_ID, 211, 277 , 0 )
			AddMonsterByFloat( 52273, 1, $ectype_ID, 208, 276 , 0 )
			AddMonsterByFloat( 52273, 1, $ectype_ID, 197, 271 , 1 )
			AddMonsterByFloat( 52273, 1, $ectype_ID, 190, 271 , 1 )
			AddMonsterByFloat( 52273, 1, $ectype_ID, 188, 276 , 1 )
			AddMonsterByFloat( 52273, 1, $ectype_ID, 190, 281 , 1 )
			AddMonsterByFloat( 52273, 1, $ectype_ID, 194, 282 , 1 )
			AddMonsterByFloat( 52273, 1, $ectype_ID, 198, 279 , 1 )
			AddMonsterByFloat( 52273, 1, $ectype_ID, 200, 276 , 1 )
			AddMonsterByFloat( 52248, 1, $ectype_ID, 193, 276 , 0 )
			AddMonsterByFloat( 52273, 2, $ectype_ID, 193, 245 , 2 )
			AddMonsterByFloat( 52273, 2, $ectype_ID, 193, 239 , 2 )
			AddMonsterByFloat( 52273, 2, $ectype_ID, 186, 242 , 2 )
			AddMonsterByFloat( 52275, 1, $ectype_ID, 176, 240 , 0 )
		endif
		
		BC("screen", "map", $ectype_ID, "Heroes You are now in the territory of the Titan Klanus. ")
			
	}
	
	function EctypeTime2(){
		
		SetEctypeVar( -1, 1, 0 )
		SetEctypeVar( -1, 2, 0 )
		
	}
	
	function EctypeTime3(){
		
		$ectype_ID = GetEctypeID( -1, 332 )
		$Var = GetEctypeVar( -1, 0 )
		
		//??????
		if $Var == 0
			//????
			AddMonsterByFloat( 52222, 1, $ectype_ID, 289, 64 , 0 )
			AddMonsterByFloat( 52221, 2, $ectype_ID, 281, 66 , 2 )
			AddMonsterByFloat( 52223, 1, $ectype_ID, 287, 71 , 2 )
			AddMonsterByFloat( 52221, 2, $ectype_ID, 279, 74 , 2 )
			AddMonsterByFloat( 52223, 1, $ectype_ID, 286, 79 , 2 )
			AddMonsterByFloat( 52221, 2, $ectype_ID, 274, 79 , 2 )
			AddMonsterByFloat( 52223, 1, $ectype_ID, 281, 87 , 2 )
			AddMonsterByFloat( 52221, 2, $ectype_ID, 266, 84 , 2 )
			AddMonsterByFloat( 52223, 1, $ectype_ID, 274, 92 , 2 )
			AddMonsterByFloat( 52221, 2, $ectype_ID, 263, 94 , 2 )
			AddMonsterByFloat( 52223, 1, $ectype_ID, 250, 86 , 2 )
			AddMonsterByFloat( 52221, 2, $ectype_ID, 250, 97 , 2 )
			AddMonsterByFloat( 52223, 1, $ectype_ID, 239, 96 , 2 )
			AddMonsterByFloat( 52221, 2, $ectype_ID, 240, 86 , 2 )
			AddMonsterByFloat( 52223, 1, $ectype_ID, 207, 66 , 2 )
			AddMonsterByFloat( 52221, 2, $ectype_ID, 202, 71 , 2 )
			AddMonsterByFloat( 52223, 1, $ectype_ID, 212, 76 , 2 )
			AddMonsterByFloat( 52221, 2, $ectype_ID, 202, 79 , 2 )
			AddMonsterByFloat( 52223, 1, $ectype_ID, 204, 89 , 2 )
			AddMonsterByFloat( 52221, 2, $ectype_ID, 217, 82 , 2 )
			AddMonsterByFloat( 52223, 1, $ectype_ID, 215, 92 , 2 )
			AddMonsterByFloat( 52221, 2, $ectype_ID, 225, 84 , 2 )
			AddMonsterByFloat( 52223, 1, $ectype_ID, 225, 94 , 2 )
		endif
		
		if $Var == 1
			//????
			AddMonsterByFloat( 52252, 1, $ectype_ID, 289, 64 , 0 )
			AddMonsterByFloat( 52251, 2, $ectype_ID, 281, 66 , 2 )
			AddMonsterByFloat( 52253, 1, $ectype_ID, 287, 71 , 2 )
			AddMonsterByFloat( 52251, 2, $ectype_ID, 279, 74 , 2 )
			AddMonsterByFloat( 52253, 1, $ectype_ID, 286, 79 , 2 )
			AddMonsterByFloat( 52251, 2, $ectype_ID, 274, 79 , 2 )
			AddMonsterByFloat( 52253, 1, $ectype_ID, 281, 87 , 2 )
			AddMonsterByFloat( 52251, 2, $ectype_ID, 266, 84 , 2 )
			AddMonsterByFloat( 52253, 1, $ectype_ID, 274, 92 , 2 )
			AddMonsterByFloat( 52251, 2, $ectype_ID, 263, 94 , 2 )
			AddMonsterByFloat( 52253, 1, $ectype_ID, 250, 86 , 2 )
			AddMonsterByFloat( 52251, 2, $ectype_ID, 250, 97 , 2 )
			AddMonsterByFloat( 52253, 1, $ectype_ID, 239, 96 , 2 )
			AddMonsterByFloat( 52251, 2, $ectype_ID, 240, 86 , 2 )
			AddMonsterByFloat( 52253, 1, $ectype_ID, 207, 66 , 2 )
			AddMonsterByFloat( 52251, 2, $ectype_ID, 202, 71 , 2 )
			AddMonsterByFloat( 52253, 1, $ectype_ID, 212, 76 , 2 )
			AddMonsterByFloat( 52251, 2, $ectype_ID, 202, 79 , 2 )
			AddMonsterByFloat( 52253, 1, $ectype_ID, 204, 89 , 2 )
			AddMonsterByFloat( 52251, 2, $ectype_ID, 217, 82 , 2 )
			AddMonsterByFloat( 52253, 1, $ectype_ID, 215, 92 , 2 )
			AddMonsterByFloat( 52251, 2, $ectype_ID, 225, 84 , 2 )
			AddMonsterByFloat( 52253, 1, $ectype_ID, 225, 94 , 2 )
		endif
		
		if $Var == 2
			//????
			AddMonsterByFloat( 52272, 1, $ectype_ID, 289, 64 , 0 )
			AddMonsterByFloat( 52271, 2, $ectype_ID, 281, 66 , 2 )
			AddMonsterByFloat( 52273, 1, $ectype_ID, 287, 71 , 2 )
			AddMonsterByFloat( 52271, 2, $ectype_ID, 279, 74 , 2 )
			AddMonsterByFloat( 52273, 1, $ectype_ID, 286, 79 , 2 )
			AddMonsterByFloat( 52271, 2, $ectype_ID, 274, 79 , 2 )
			AddMonsterByFloat( 52273, 1, $ectype_ID, 281, 87 , 2 )
			AddMonsterByFloat( 52271, 2, $ectype_ID, 266, 84 , 2 )
			AddMonsterByFloat( 52273, 1, $ectype_ID, 274, 92 , 2 )
			AddMonsterByFloat( 52271, 2, $ectype_ID, 263, 94 , 2 )
			AddMonsterByFloat( 52273, 1, $ectype_ID, 250, 86 , 2 )
			AddMonsterByFloat( 52271, 2, $ectype_ID, 250, 97 , 2 )
			AddMonsterByFloat( 52273, 1, $ectype_ID, 239, 96 , 2 )
			AddMonsterByFloat( 52271, 2, $ectype_ID, 240, 86 , 2 )
			AddMonsterByFloat( 52273, 1, $ectype_ID, 207, 66 , 2 )
			AddMonsterByFloat( 52271, 2, $ectype_ID, 202, 71 , 2 )
			AddMonsterByFloat( 52273, 1, $ectype_ID, 212, 76 , 2 )
			AddMonsterByFloat( 52271, 2, $ectype_ID, 202, 79 , 2 )
			AddMonsterByFloat( 52273, 1, $ectype_ID, 204, 89 , 2 )
			AddMonsterByFloat( 52271, 2, $ectype_ID, 217, 82 , 2 )
			AddMonsterByFloat( 52273, 1, $ectype_ID, 215, 92 , 2 )
			AddMonsterByFloat( 52271, 2, $ectype_ID, 225, 84 , 2 )
			AddMonsterByFloat( 52273, 1, $ectype_ID, 225, 94 , 2 )
		endif
		
	}
	
	function EctypeTime4(){
		
		$ectype_ID = GetEctypeID( -1, 332 )
		$Var = GetEctypeVar( -1, 0 )
		OpenMapMask( 8 )
		
		//??????
		if $Var == 0
			//????
			AddMonsterByFloat( 52232, 1, $ectype_ID, 245, 81, 0, 0, 90 )
			AddMonsterByFloat( 52233, 1, $ectype_ID, 259, 81, 0, 0, 90 )
			AddMonsterByFloat( 52234, 1, $ectype_ID, 231, 80, 0, 0, 90 )
		endif
		
		if $Var == 1
			//????
			AddMonsterByFloat( 52260, 1, $ectype_ID, 245, 81, 0, 0, 90 )
			AddMonsterByFloat( 52261, 1, $ectype_ID, 259, 81, 0, 0, 90 )
			AddMonsterByFloat( 52262, 1, $ectype_ID, 231, 80, 0, 0, 90 )
		endif
		
		if $Var == 2
			//????
			AddMonsterByFloat( 52280, 1, $ectype_ID, 245, 81, 0, 0, 90 )
			AddMonsterByFloat( 52281, 1, $ectype_ID, 259, 81, 0, 0, 90 )
			AddMonsterByFloat( 52282, 1, $ectype_ID, 231, 80, 0, 0, 90 )
		endif
		
	}