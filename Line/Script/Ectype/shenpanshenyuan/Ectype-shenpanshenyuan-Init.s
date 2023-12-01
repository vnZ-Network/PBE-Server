	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/03
	//		Author:???
	//		TaskName:Ectype-yilonghuangu-Init.s
	//		TaskID:?????????
	//
	//****************************************
	
	function OnCreate(){
		
		$ectype_ID = GetEctypeID( -1 , 228 )
		$ectype_var = GetEctypeVar( -1, 38 )
		
		if $ectype_var == 0
		//??????
		
			AddMonster( 52601 , 1 , $ectype_ID , 85 , 83 , 0 )
			AddMonster( 52601 , 1 , $ectype_ID , 81 , 83 , 0 )
			AddMonster( 52601 , 1 , $ectype_ID , 82 , 75 , 0 )
			AddMonster( 52601 , 1 , $ectype_ID , 77 , 79 , 0 )
			
			AddMonster( 52602 , 2 , $ectype_ID , 85 , 83 , 0 )
			AddMonster( 52602 , 2 , $ectype_ID , 81 , 83 , 0 )
			AddMonster( 52602 , 2 , $ectype_ID , 82 , 75 , 0 )
			AddMonster( 52602 , 2 , $ectype_ID , 77 , 79 , 0 )
			
			AddMonster( 52603 , 1 , $ectype_ID , 65 , 76 , 0 )
			AddMonster( 52603 , 1 , $ectype_ID , 61 , 78 , 0 )
			AddMonster( 52603 , 1 , $ectype_ID , 58 , 79 , 0 )
			
			AddMonster( 52604 , 2 , $ectype_ID , 65 , 76 , 0 )
			AddMonster( 52604 , 2 , $ectype_ID , 61 , 78 , 0 )
			AddMonster( 52604 , 2 , $ectype_ID , 58 , 79 , 0 )
			AddMonster( 52604 , 2 , $ectype_ID , 77 , 73 , 0 )
			AddMonster( 52604 , 2 , $ectype_ID , 74 , 74 , 0 )
			AddMonster( 52604 , 2 , $ectype_ID , 69 , 75 , 0 )
			
			AddMonster( 52605 , 2 , $ectype_ID , 77 , 73 , 0 )
			AddMonster( 52605 , 2 , $ectype_ID , 74 , 74 , 0 )
			AddMonster( 52605 , 2 , $ectype_ID , 69 , 75 , 0 )
			
			AddMonster( 52631 , 1 , $ectype_ID , 43 , 84 , 0 )
			AddMonsterByFloat( 51238 , 1 , $ectype_ID , 107 , 112 , 0 )
			
			//???????????
			AddMonsterByFloat( 52609 , 1 , $ectype_ID , 177 , 120 , 0 , 0 , 90 )
			AddMonsterByFloat( 52609 , 1 , $ectype_ID , 177 , 130 , 0 , 0 , 90 )
			AddMonsterByFloat( 52609 , 1 , $ectype_ID , 177 , 140 , 0 , 0 , 90 )
			AddMonsterByFloat( 52609 , 1 , $ectype_ID , 177 , 150 , 0 , 0 , 90 )
			
			
			AddMonsterByFloat( 52610 , 1 , $ectype_ID , 147 , 108 , 0 , 0 , 180 )
			AddMonsterByFloat( 52610 , 1 , $ectype_ID , 177 , 110 , 0 , 0 , 180 )
			AddMonsterByFloat( 52610 , 1 , $ectype_ID , 165 , 108 , 0 , 0 , 180 )
			AddMonsterByFloat( 52610 , 1 , $ectype_ID , 183 , 110 , 0 , 0 , 180 )
			AddMonsterByFloat( 52610 , 1 , $ectype_ID , 155 , 108 , 0 , 0 , 180 )
			
			
			AddMonsterByFloat( 52611 , 1 , $ectype_ID , 183 , 120 , 0 , 0 , 270 )
			AddMonsterByFloat( 52611 , 1 , $ectype_ID , 183 , 130 , 0 , 0 , 270 )
			AddMonsterByFloat( 52611 , 1 , $ectype_ID , 183 , 140 , 0 , 0 , 270 )
			AddMonsterByFloat( 52611 , 1 , $ectype_ID , 183 , 150 , 0 , 0 , 270 )
			
			
			AddMonsterByFloat( 52612 , 1 , $ectype_ID , 155 , 114 , 0 , 0 , 0 )
			AddMonsterByFloat( 52612 , 1 , $ectype_ID , 147 , 114 , 0 , 0 , 0 )
			AddMonsterByFloat( 52612 , 1 , $ectype_ID , 165 , 114 , 0 , 0 , 0 )
			
			OpenMask( 3 , $ectype_ID )
		
			//??????NPC
			DeleteNPC( 2053 , -1 )
			DeleteNPC( 2054 , -1 )
			DeleteNPC( 2055 , -1 )
			DeleteNPC( 2056 , -1 )
			AddNPC( 2058 , -1 )
			
		else
				
			//??
			AddMonster( 51271 , 1 , $ectype_ID , 85 , 83 , 0 )
			AddMonster( 51271 , 1 , $ectype_ID , 81 , 83 , 0 )
			AddMonster( 51271 , 1 , $ectype_ID , 82 , 75 , 0 )
			AddMonster( 51271 , 1 , $ectype_ID , 77 , 79 , 0 )
			
			AddMonster( 51272 , 2 , $ectype_ID , 85 , 83 , 0 )
			AddMonster( 51272 , 2 , $ectype_ID , 81 , 83 , 0 )
			AddMonster( 51272 , 2 , $ectype_ID , 82 , 75 , 0 )
			AddMonster( 51272 , 2 , $ectype_ID , 77 , 79 , 0 )
			
			AddMonster( 51273 , 1 , $ectype_ID , 65 , 76 , 0 )
			AddMonster( 51273 , 1 , $ectype_ID , 61 , 78 , 0 )
			AddMonster( 51273 , 1 , $ectype_ID , 58 , 79 , 0 )
			
			AddMonster( 51274 , 2 , $ectype_ID , 65 , 76 , 0 )
			AddMonster( 51274 , 2 , $ectype_ID , 61 , 78 , 0 )
			AddMonster( 51274 , 2 , $ectype_ID , 58 , 79 , 0 )
			AddMonster( 51274 , 2 , $ectype_ID , 77 , 73 , 0 )
			AddMonster( 51274 , 2 , $ectype_ID , 74 , 74 , 0 )
			AddMonster( 51274 , 2 , $ectype_ID , 69 , 75 , 0 )
			
			AddMonster( 51275 , 2 , $ectype_ID , 77 , 73 , 0 )
			AddMonster( 51275 , 2 , $ectype_ID , 74 , 74 , 0 )
			AddMonster( 51275 , 2 , $ectype_ID , 69 , 75 , 0 )
			
			AddMonster( 51281 , 1 , $ectype_ID , 43 , 84 , 0 )
			
			AddMonsterByFloat( 51288 , 1 , $ectype_ID , 107 , 112 , 0 )
			
			//?????
			AddMonsterByFloat( 51279 , 1 , $ectype_ID , 177 , 120 , 0 , 0 , 90 )
			AddMonsterByFloat( 51279 , 1 , $ectype_ID , 177 , 130 , 0 , 0 , 90 )
			AddMonsterByFloat( 51279 , 1 , $ectype_ID , 177 , 140 , 0 , 0 , 90 )
			AddMonsterByFloat( 51279 , 1 , $ectype_ID , 177 , 150 , 0 , 0 , 90 )
			
			
			AddMonsterByFloat( 51290 , 1 , $ectype_ID , 147 , 108 , 0 , 0 , 180 )
			AddMonsterByFloat( 51290 , 1 , $ectype_ID , 177 , 110 , 0 , 0 , 180 )
			AddMonsterByFloat( 51290 , 1 , $ectype_ID , 165 , 108 , 0 , 0 , 180 )
			AddMonsterByFloat( 51290 , 1 , $ectype_ID , 183 , 110 , 0 , 0 , 180 )
			AddMonsterByFloat( 51290 , 1 , $ectype_ID , 155 , 108 , 0 , 0 , 180 )
			
			
			AddMonsterByFloat( 51291 , 1 , $ectype_ID , 183 , 120 , 0 , 0 , 270 )
			AddMonsterByFloat( 51291 , 1 , $ectype_ID , 183 , 130 , 0 , 0 , 270 )
			AddMonsterByFloat( 51291 , 1 , $ectype_ID , 183 , 140 , 0 , 0 , 270 )
			AddMonsterByFloat( 51291 , 1 , $ectype_ID , 183 , 150 , 0 , 0 , 270 )
			
			
			AddMonsterByFloat( 51292 , 1 , $ectype_ID , 155 , 114 , 0 , 0 , 0 )
			AddMonsterByFloat( 51292 , 1 , $ectype_ID , 147 , 114 , 0 , 0 , 0 )
			AddMonsterByFloat( 51292 , 1 , $ectype_ID , 165 , 114 , 0 , 0 , 0 )
			
			//????3??
			AddMonsterByFloat( 51293 , 1 , $ectype_ID , 133 , 177 , 0 )
			AddMonsterByFloat( 51296 , 1 , $ectype_ID , 128 , 177 , 0 )
			AddMonsterByFloat( 51294 , 1 , $ectype_ID , 123 , 177 , 0 )
			AddMonsterByFloat( 51297 , 1 , $ectype_ID , 118 , 177 , 0 )
			AddMonsterByFloat( 51295 , 1 , $ectype_ID , 113 , 177 , 0 )
			AddMonsterByFloat( 51298 , 1 , $ectype_ID , 110 , 167 , 0 )
			AddMonsterByFloat( 51299 , 1 , $ectype_ID , 110 , 175 , 0 )
			
			
			OpenMask( 3 , $ectype_ID )
			
			//??????NPC
			DeleteNPC( 2053 , -1 )
			DeleteNPC( 2054 , -1 )
			DeleteNPC( 2055 , -1 )
			DeleteNPC( 2056 , -1 )
			AddNPC( 2058 , -1 )
		
		endif
	}
	
	
	function InitTimer(){
	
	    //??????????
	    //SetEctypeTimer(1, 5, "EctypeTime2")
	    //SetEctypeTimer(2, 5, "EctypeTime3")
	    //SetEctypeTimer(3, 5, "EctypeTime4")
	    //SetEctypeTimer(4, 5, "EctypeTime5")
	    //SetEctypeTimer(5, 5, "EctypeTime6")
	}
	
	
	function OnTDSuccess(){
	
		
		$ectype_ID = GetEctypeID( -1 , 228 )
		
		$ectype_var = GetEctypeVar( -1, 38 )
		//??????
//		if $ectype_var == 0
//			//????BOSS
//			AddMonster( 52633 , 1 , $ectype_ID , 42 , 42 , 0 )
//			BC( "screen" , "map" , $ectype_ID , "Latamantis: The human can pass my judgment. Let me show you the final judgment!" )
//			
//			OpenMask( 3 , $ectype_ID )
//			
//			//??????
//			DeleteMonster( $ectype_ID , 52638 )
//		else
		
			//????BOSS
			AddMonster( 51283 , 1 , $ectype_ID , 42 , 42 , 0 )
			BC( "screen" , "map" , $ectype_ID , "Latamantis: The human can pass my judgment. Let me show you the final judgment!" )
			
			OpenMask( 3 , $ectype_ID )
			
			//??????
			DeleteMonster( $ectype_ID , 51288 )
			
			//AddNPC( 2056 , -1 )
//		endif
	
	}
	
	
	function OnTDFailure(){
		
		//?????TD NPC
		AddNPC( 2055 , -1 )
		$ectype_ID = GetEctypeID( -1 , 228 )
		BC( "screen" , "map" , $ectype_ID , "You failed in stopping the judgment! You will face the final judgment, struggle in a hell of blood and darkness!")
		
		
		OpenMask( 3 , $ectype_ID )
	
	}