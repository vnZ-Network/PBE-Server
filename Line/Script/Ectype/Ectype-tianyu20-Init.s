	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2011/11/01
	//		Author£∫÷ÏΩ®≥º
	//		TaskName£∫Ectype-tianyu20-Init.s
	//		TaskID£∫
	//
	//****************************************
	
	
	function OnCreate(){
		
		
		
	}
	function InitTimer(){
		$ectype_ID = GetCurEctypeID()
		$result = SetEctypeTimer( 1 , 1 , "EctypeTime1" )
		//SetEctypeTimer( 2 , 5 , "EctypeTime2" )
		StartEctypeTimer ($ectype_ID,1)
		//StartEctypeTimer ($ectype_ID,2)
		
	}
	
	function EctypeTime1(){
		
		$playerid = GetEctypeVar(-1,110)
		$ectype_ID = GetEctypeID($playerid,539)
		
		$done331 = IsTaskDone($playerid,331)
		$done333 = IsTaskDone($playerid,333)
		
		if $done331 == 0
			OpenMask(1,$ectype_ID)
			DeleteNPC(781,-1)
//		else
//			AddMonsterByFloat( 30525, 1, $ectype_ID, 131, 257, 0 )
//			AddMonsterByFloat( 30527, 1, $ectype_ID, 133, 257, 0 )
		endif
		
		if $done333 == 0
			OpenMask(2,$ectype_ID)
		endif
		
		$task329 = IsTaskDone($playerid,329)
		AddNpcByPos( 781, $ectype_ID, 27, 95, 180000, 0 )
		AddNpcByPos( 782, $ectype_ID, 37, 49, 180000, 0 )
		
		
		$task330 = IsTaskAccept($playerid,330)
		if $task330 == 0
			AddNpcByPos( 782, $ectype_ID, 37, 49, 180000, 0 )
			AddMonsterByFloat( 30520, 3, $ectype_ID, 76, 241, 0 )
			AddMonsterByFloat( 30520, 3, $ectype_ID, 85, 247, 0 )
			AddMonsterByFloat( 30520, 3, $ectype_ID, 94, 242, 0 )
			AddMonsterByFloat( 30520, 3, $ectype_ID, 97, 254, 0 )
			AddMonsterByFloat( 30520, 3, $ectype_ID, 95, 248, 0 )
		endif
		
		$task331 = IsTaskAccept($playerid,331)
		if $task331 == 0
			AddMonsterByFloat( 30512, 1, $ectype_ID, 115, 250, 0 )
			AddMonsterByFloat( 30525, 1, $ectype_ID, 131, 257, 0 )
			AddMonsterByFloat( 30527, 1, $ectype_ID, 133, 257, 0 )
			DeleteNPC(781,-1)
		endif
		
		$task332 = IsTaskAccept($playerid,332)
		if $task332 == 0
			AddNpcByPos( 782, $ectype_ID, 37, 49, 180000, 0 )
			AddMonsterByFloat( 30526,1,$ectype_ID,149,257,0)
			AddMonsterByFloat( 30521,1,$ectype_ID,152,257,0)
	    AddMonsterByFloat( 30521,1,$ectype_ID,145,254,0)    
	    AddMonsterByFloat( 30521,1,$ectype_ID,143,259,0)  
	    AddMonsterByFloat( 30521,1,$ectype_ID,161,256,0)
	    AddMonsterByFloat( 30521,1,$ectype_ID,160,264,0)
	    AddMonsterByFloat( 30521,1,$ectype_ID,151,267,0)
	    AddMonsterByFloat( 30521,1,$ectype_ID,143,266,0)
	    AddMonsterByFloat( 30521,1,$ectype_ID,142,245,0)
	    AddMonsterByFloat( 30521,1,$ectype_ID,151,246,0)
	    AddMonsterByFloat( 30521,1,$ectype_ID,159,240,0)  	
	    
	  	AddMonsterByFloat( 30528,1,$ectype_ID,152,213,0)
			AddMonsterByFloat( 30522,1,$ectype_ID,158,210,0)
			AddMonsterByFloat( 30522,1,$ectype_ID,150,220,0)
			AddMonsterByFloat( 30522,1,$ectype_ID,153,226,0)
			AddMonsterByFloat( 30522,1,$ectype_ID,157,220,0)
			AddMonsterByFloat( 30522,1,$ectype_ID,160,232,0)
			AddMonsterByFloat( 30522,1,$ectype_ID,153,232,0)
			AddMonsterByFloat( 30522,1,$ectype_ID,163,207,0)
			AddMonsterByFloat( 30522,1,$ectype_ID,170,206,0)
			
			AddMonsterByFloat( 30529,1,$ectype_ID,158,196,0)
			AddMonsterByFloat( 30523,1,$ectype_ID,164,193,0)
			AddMonsterByFloat( 30523,1,$ectype_ID,165,197,0)
			AddMonsterByFloat( 30523,1,$ectype_ID,170,199,0)
			AddMonsterByFloat( 30523,1,$ectype_ID,160,199,0)
			AddMonsterByFloat( 30523,1,$ectype_ID,151,196,0)
			AddMonsterByFloat( 30523,1,$ectype_ID,149,200,0)
			AddMonsterByFloat( 30523,1,$ectype_ID,145,196,0)
			AddMonsterByFloat( 30523,1,$ectype_ID,163,184,0)
			AddMonsterByFloat( 30523,1,$ectype_ID,165,176,0)
			AddMonsterByFloat( 30523,1,$ectype_ID,156,178,0)
			AddMonsterByFloat( 30523,1,$ectype_ID,163,184,0)
			AddMonsterByFloat( 30523,1,$ectype_ID,151,185,0)
			AddMonsterByFloat( 30523,1,$ectype_ID,144,187,0)
			AddMonsterByFloat( 30523,1,$ectype_ID,154,187,0)
			AddMonsterByFloat( 30523,1,$ectype_ID,163,168,0)
	  endif
	  
	  $task333 = IsTaskAccept($playerid,333)
	  if $task333 == 0
	  	AddMonsterByFloat( 30513, 1, $ectype_ID, 149, 149, 0 )
	  endif
	  
	  $task335 = IsTaskAccept($playerid,335)
	  if $task335 == 0
	  	DeleteMonster($ectype_ID,30524)
	  	AddMonsterByFloat( 30517, 1, $ectype_ID, 94, 125, 0 )
	  	//DeleteNPC(782,-1)
	  else
	  	AddMonsterByFloat( 30524, 1, $ectype_ID, 126, 165, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 126, 162, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 126, 159, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 126, 156, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 126, 153, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 126, 150, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 126, 144, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 119, 165, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 119, 162, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 119, 159, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 119, 156, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 119, 153, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 123, 144, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 120, 144, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 117, 144, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 114, 144, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 120, 151, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 117, 151, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 117, 154, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 117, 157, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 117, 160, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 117, 163, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 117, 166, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 117, 169, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 109, 151, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 109, 154, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 109, 157, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 109, 160, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 109, 163, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 109, 166, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 109, 144, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 107, 166, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 104, 166, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 101, 166, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 101, 163, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 101, 160, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 101, 157, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 94, 166, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 94, 163, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 94, 160, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 94, 157, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 94, 154, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 94, 151, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 97, 151, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 100, 151, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 103, 151, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 103, 148, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 103, 145, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 100, 145, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 97, 145, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 94, 145, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 91, 145, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 88, 145, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 97, 138, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 94, 138, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 97, 135, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 94, 135, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 87, 142, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 87, 139, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 87, 136, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 108, 136, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 101, 136, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 105, 135, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 111, 138, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 117, 135, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 126, 146, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 111, 144, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 109, 147, 0 )
		  //AddMonsterByFloat( 30524, 1, $ectype_ID, 105, 145, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 119, 168, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 119, 170, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 119, 172, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 119, 174, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 119, 176, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 117, 171, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 117, 173, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 117, 175, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 126, 167, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 126, 169, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 126, 171, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 128, 169, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 128, 167, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 128, 165, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 128, 163, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 128, 161, 0 )
		  AddMonsterByFloat( 30524, 1, $ectype_ID, 111, 141, 0 )
	  endif
	  
	  //∫£µ®
	  
	  
	  
	  
	  
	  
	 	  	
	  
	  
	}