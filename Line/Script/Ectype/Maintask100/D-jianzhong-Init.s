	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/02/05
	//		Author:???
	//		TaskName:D-jianzhong-Init.s
	//		TaskID:??
	//
	//****************************************
	
	function OnCreate(){
		
	}
	
	
	function InitTimer(){
			//???????
	  		SetEctypeTimer(0, 10, "EctypeTime1")
	    	
	    	
	    	//????????????
	    	SetEctypeTimer(1, 2,  "EctypeTime2") 
	    	
	    	SetEctypeTimer(2, 16, "EctypeTime3")
	    	
	    	SetEctypeTimer(3, 2,  "EctypeTime4") 
	    	
	    	SetEctypeTimer(4, 2,  "EctypeTime5") 
	    	
	    	SetEctypeTimer(5, 2,  "EctypeTime6") 
	    	  	   	  	
	    	
	    	
	}
	
	//?????
	function EctypeTime1(){
		
		
		 
		
		
		
		
//		??????ID
//		$ectype_ID = GetEctypeID( -1, 226 )
//		$ectype_type = GetEctypeVar( -1, 7 )
//		if $ectype_type == 0
//			//????
//			AddMonster( 51481, 25, $ectype_ID, 57, 69 , 10 )
//			AddMonster( 51481, 15, $ectype_ID, 74, 65 , 7 )
//			BC("screen", "map", $ectype_ID, "GUID:04441000000")
//		else
//			//????
//			AddMonster( 51201, 25, $ectype_ID, 57, 69 , 10 )
//			AddMonster( 51201, 15, $ectype_ID, 74, 65 , 7 )
//			BC("screen", "map", $ectype_ID, "GUID:04441000001")
//		endif
		
	}
	
	function EctypeTime2(){
		
		$ectype_ID = GetEctypeID( -1, 255 )
		$step = GetEctypeVar( $ectype_ID , 11 )
		
		if $step == 1
			SetEctypeVar( $ectype_ID , 39 , 4 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 156, 139, 0 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 151, 153, 0 )
			SetEctypeVar( $ectype_ID , 11 , 2 )
			DeleteNPC( 533, $ectype_ID )
			DeleteNPC( 538, $ectype_ID )
			StartEctypeTimer( $ectype_ID, 3 )
		endif
		if $step == 2
			SetEctypeVar( $ectype_ID , 39 , 4 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 157, 141, 0 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 154, 153, 0 )
			SetEctypeVar( $ectype_ID , 11 , 3 )
			DeleteNPC( 534, $ectype_ID )
			DeleteNPC( 537, $ectype_ID )
			StartEctypeTimer( $ectype_ID, 3 )
		endif
		if $step == 3
			SetEctypeVar( $ectype_ID , 39 , 4 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 158, 143, 0 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 156, 152, 0 )
			SetEctypeVar( $ectype_ID , 11 , 4 )
			DeleteNPC( 535, $ectype_ID )
			DeleteNPC( 536, $ectype_ID )
			StartEctypeTimer( $ectype_ID, 3 )
		endif
		if $step == 4
			SetEctypeVar( $ectype_ID , 39 , 4 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 160, 147, 0 )
			DeleteNPC( 500, $ectype_ID )
			SetEctypeVar( $ectype_ID , 11 , 5 )
			StartEctypeTimer( $ectype_ID, 3 )
		endif
		if $step == 5
			AddMonsterByFloat( 59133, 1 , $ectype_ID, 152 , 147 , 0 )
		endif
	
	}
		
	function EctypeTime3(){	
		//10?????NPC	
		
		//????????
		$ectype_ID = GetEctypeID( -1, 255 )
		BC("screen", "map", $ectype_ID, "Danger,  the Tyr Spirit Sword is unsealed!")
		SetEctypeVar( $ectype_ID , 39 , 4 )
		AddMonsterByFloat( 51596, 1, $ectype_ID, 152, 147, 0 )
//		AddNPC( 506, $ectype_ID )
//		NPCAction( -1, 506, born1, 1 )
		AddNPC( 506, $ectype_ID )
	}
	
	function EctypeTime4(){
		
		$ectype_ID = GetEctypeID( -1, 255 )
		$step = GetEctypeVar( $ectype_ID , 11 )
		
		if $step == 1
			SetEctypeVar( $ectype_ID , 39 , 4 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 156, 139, 0 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 151, 153, 0 )
			SetEctypeVar( $ectype_ID , 11 , 2 )
			DeleteNPC( 533, $ectype_ID )
			DeleteNPC( 538, $ectype_ID )
			StartEctypeTimer( $ectype_ID, 1 )
		endif
		if $step == 2
			SetEctypeVar( $ectype_ID , 39 , 4 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 157, 141, 0 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 154, 153, 0 )
			SetEctypeVar( $ectype_ID , 11 , 3 )
			DeleteNPC( 534, $ectype_ID )
			DeleteNPC( 537, $ectype_ID )
			StartEctypeTimer( $ectype_ID, 1 )
		endif
		if $step == 3
			SetEctypeVar( $ectype_ID , 39 , 4 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 158, 143, 0 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 156, 152, 0 )
			SetEctypeVar( $ectype_ID , 11 , 4 )
			DeleteNPC( 535, $ectype_ID )
			DeleteNPC( 536, $ectype_ID )
			StartEctypeTimer( $ectype_ID, 1 )
		endif
		if $step == 4
			SetEctypeVar( $ectype_ID , 39 , 4 )
			AddMonsterByFloat( 51596, 1, $ectype_ID, 160, 147, 0 )
			DeleteNPC( 500, $ectype_ID )
			SetEctypeVar( $ectype_ID , 11 , 5 )
			StartEctypeTimer( $ectype_ID, 1 )
		endif
		if $step == 5
			AddMonsterByFloat( 59133, 1 , $ectype_ID, 152 , 147 , 0 )
		endif
	
	}
	
	function EctypeTime5(){
		
		$ectype_ID = GetEctypeID( -1, 255 )
		SetEctypeVar( $ectype_ID , 39 , 55 )
		AddMonsterByFloat( 51596, 1, $ectype_ID, 152, 147 0 )
		DeleteNPC( 506, $ectype_ID )
		
	
	}
	
	function EctypeTime6(){
		
		$ectype_ID = GetEctypeID( -1, 255 )
		SetEctypeVar( $ectype_ID , 39 , 55 )
		AddMonsterByFloat( 51596, 1, $ectype_ID, 153, 143, 0 )
		DeleteNPC( 499, $ectype_ID)
		
	
	}

