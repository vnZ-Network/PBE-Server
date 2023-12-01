	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/29
	//		Author:??
	//		TaskName:???????
	//		TaskID:
	//
	//****************************************
	
	function OnRequest(){		
		$taskday = GetPlayerVar( -1, 3995 )
		$num = GetPlayerVar( -1, 3321 )
		$Now_Yday =  GetSystemTime( "yday" )
		$lv = GetPlayerInfo( -1, "level")
		$count = GetPlayerInfo( -1, "item", 59886 )
		//??????????
		if $Now_Yday == $taskday
		   DisableNpcOption(1)
		endif
		if $count < 1
			 DisableNpcOption(0)
		endif 		
		if $num != 0
			 DisableNpcOption(1)	
		endif		
		$result1 = IsTaskAccept(-1, 1733)
		$result2 = IsTaskDone(-1, 1733)
		$result3 = IsTaskAccept(-1, 1735)
		$result4 = IsTaskAccept(-1, 1738)
		$result5 = IsTaskDone(-1, 1738)
		if $result3 == 0
			 DisableNpcOption(1)
		endif
		if $result1 == 0
			 DisableNpcOption(1)
		endif
		if $result2 != 0
		   DisableNpcOption(1)
		endif
		if $num == 0
			 if $result4 == 0
			 		 DisableNpcOption(1)
			 else
			 		if $result5 == 0
			 			 DisableNpcOption(1)
			 		endif
			 endif
		endif
	}  
	
	function OnOption0(){
		$taskday = GetPlayerVar( -1, 3995 )
		$num = GetPlayerVar( -1, 3321 )
		$Now_Yday =  GetSystemTime( "yday" )
		$lv = GetPlayerInfo( -1, "level")
		$count = GetPlayerInfo( -1, "item", 59886 )
		//????????????500,????,?????
		$energy = GetPlayerVar ( -1, 3998)  
    if $energy >= 500
				//????
        $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
        if $bag_count < 2
        		if $energy < 500
        				BC( "screen", "player", -1, "The Energy Core has not been fully recharged. Continue your efforts." ) 
        		else
			 			BC( "screen", "player", -1, "You must have at least 2 free bag spaces." )
						return
						endif
				endif
				//??????????????
    		SubPlayerInfo ( -1, "item", 59886, 1 )
    		AddPlayerInfo ( -1, "item", 59889, 1 )
    		SetPlayerVar (-1, 3998, 0)
    		BC( "screen", "player", -1, "The Energy Core has been recharged. Return it to the Astrolabe as soon as possible!" )    
    else
       	BC( "screen", "player", -1, "The Energy Core has not been fully recharged. Continue your efforts." )    
    endif    
	}

//??????+??????????	
	function OnOption1(){
		$taskday = GetPlayerVar( -1, 3995 )
		$num = GetPlayerVar( -1, 3321 )
		$Now_Yday =  GetSystemTime( "yday" )
		$lv = GetPlayerInfo( -1, "level")
		$count = GetPlayerInfo( -1, "item", 59886 )
		if $num != 0				 
			if $taskday == $Now_Yday
				//BC( "screen", "player", -1, $taskday, "........", $Now_Yday,".....num="$num ) 
				BC( "dialogbox", "player", -1, "You have already acquired this quest today.")
				return
			endif
			
//			$godlv = GetGodLevel(-1)
//			if $godlv < 15
//				BC( "dialogbox", "player", -1, "GUID:08285000005")	
//				return
//			endif				
			
			if $count >= 20
				BC( "dialogbox", "player", -1, "Your Quest list is full. Complete or trash a quest to accept the Chaotic Starry Night quest.")	
				return
			endif			
		endif	
		
			//????,????,??????										
			AcceptTask( -1, 1735 )
	}
	
