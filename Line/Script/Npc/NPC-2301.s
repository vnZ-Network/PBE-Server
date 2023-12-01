 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/6/22
	//		Author:???
	//		TaskName:NPC-2301.s
	//		TaskID:?????
	//****************************************
	
	
	function OnRequest(){
	
		$Now_Month =  GetSystemTime( "month" )
		$Now_Mday =  GetSystemTime( "mday" )
		if $Now_Month < 7
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
		endif
		
		if $Now_Month > 9
			DisableNpcOption(0)
			DisableNpcOption(1)
			DisableNpcOption(2)
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
		endif		
		
		//2012?7?10??????? 
		   
		if $Now_Month == 7   
		   if $Now_Mday <= 9
		      DisableNpcOption(0)
			    DisableNpcOption(1)
			    DisableNpcOption(2)
			    DisableNpcOption(3)
			    DisableNpcOption(4)
			    DisableNpcOption(5)
			    DisableNpcOption(6)
			  endif
		endif

		//2012y8m21d??????????,Option(7)???		
		if $Now_Month >= 8   
	   if $Now_Mday >= 31
	      DisableNpcOption(7)
		  endif
		endif
		
				
//		//2011??,????4044??????????????????Option8
//		$time = GetSystemTime( "yday" )
//		$last = GetPlayerVar( -1, 4044 )
//    if $last == $time 
//       DisableNpcOption(8)	
//    endif
//    
//    //??????,30?????????????
//    $level = GetPlayerInfo( -1, "level" )
//    if $level <= 29
//       DisableNpcOption(8)
//    endif
//    
//    
//    
//			$year = GetSystemTime("year")
//			$month = GetSystemTime("month")
//			$mday = GetSystemTime("mday")
//
//			if $year == 2011
//				if $month != 12
//					DisableNpcOption(9)
//					DisableNpcOption(10)
//				else
//					if $mday < 27
//						DisableNpcOption(9)
//						DisableNpcOption(10)
//					endif
//				endif
//			else
//				if $month != 1
//					DisableNpcOption(9)
//					DisableNpcOption(10)
//				else
//					if $mday > 15
//						DisableNpcOption(9)
//						DisableNpcOption(10)
//					endif
//				endif
//			endif
			
			
	}
	

	//????????????,??????????BC??,????
	//\n??????????????????????,???????????
	
	function OnOption0(){
	
		$a = GetPlayerVar( -1 , 3871 )
		if $a < 1500
			BC( "dialogbox", "player", -1, "You must have at least 1500 Lucky Points to exchange for an Easter Card." )
			return
		endif
		
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		$a = $a - 1500
		SetPlayerVar( -1 , 3871, $a )
		AddPlayerInfo( -1, "item", 63757 , 1 )
		
	}
	
		
	function OnOption1(){
	
		$a = GetPlayerVar( -1 , 3871 )
		if $a < 7000
			BC( "dialogbox", "player", -1, "You must have at least 7000 Lucky Points to exchange for 5 Easter Cards." )
			return
		endif
		
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		$a = $a - 7000
		SetPlayerVar( -1 , 3871, $a )
		AddPlayerInfo( -1, "item", 63757 , 5 )
		
	}
	
	function OnOption2(){
	
		$a = GetPlayerVar( -1 , 3871 )
		if $a < 120000
			BC( "dialogbox", "player", -1, "You must have at least 120,000 Lucky Points to exchange for a Summer Camp Launch." )
			return
		endif
		
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		$a = $a - 120000
		SetPlayerVar( -1 , 3871, $a )
		AddPlayerInfo( -1, "item", 62071 , 1 )
		
	}
	
	function OnOption3(){
	
		$a = GetPlayerVar( -1 , 3871 )
		if $a < 30000
			BC( "dialogbox", "player", -1, "You must have at least 30,000 Lucky Points to exchange for a Summer Camp Uniform (F)." )
			return
		endif
		
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		$a = $a - 30000
		SetPlayerVar( -1 , 3871, $a )
		AddPlayerInfo( -1, "item", 36517 , 1 )
		
	}
		function OnOption4(){
	
		$a = GetPlayerVar( -1 , 3871 )
		if $a < 30000
			BC( "dialogbox", "player", -1, "You must have at least 30,000 Lucky Points to exchange for a Summer Camp Uniform (M)." )
			return
		endif
		
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		$a = $a - 30000
		SetPlayerVar( -1 , 3871, $a )
		AddPlayerInfo( -1, "item", 36518 , 1 )
		
	}
	
	function OnOption5(){
		//????????,????????? 207

		//??
		$Now_Mday =  GetSystemTime( "mday" )	
		//??
		$Now_Month =  GetSystemTime( "month" )
		
		$a = GetPlayerInfo( -1, "item", 63756 )
		if $a < 1
			BC( "dialogbox", "player", -1, "You don't have an Easter Egg!" )
			return
		endif
		
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
	
		$a = GetPlayerVar( -1 , 3873 )
		if $a < 20
			BC( "dialogbox", "player", -1, "You must have broken at least 20 Easter Eggs of Luck to exchange for a Summer Riotous Badge.\nTalk to the Easter Egg for more details." )
			return
		endif
		//???2011???????
		//if $a == 20
			//$b = GetPlayerVar( -1 , 3878 )
			//if $b < 10
				//BC( "dialogbox", "player", -1, "GUID:08130000013" )
				//return
			//endif
		//endif
		
		if $Now_Month < 8
			BC( "dialogbox", "player", -1, "From Aug. 1st to the 31st, you can exchange for the final rewards! Exchange your Easter Eggs for a Summer Riotous Badge.\nFor more information, refer to the following dialogue options." )
			return
		endif
		
		$a = GetPlayerVar( -1 , 207 )
		if $a == 1
			BC( "dialogbox", "player", -1, "You have already obtained a Summer Riotous Badge." )
			return
		endif
		
		$sub = SubPlayerInfo( -1 , "item" , 63756 , 1 )
		if $sub != 0
			return
		endif
		SetPlayerVar( -1 , 207 , 1 )
		AddPlayerInfo( -1, "item", 21153 , 1 )
		
	}
	
	function OnOption6(){
		
		$a = GetPlayerVar( -1 , 3871 )
	
		BC( "dialogbox", "player", -1, "You have a total of " ,$a ,"Make sure to receive your rewards!")
		//,?????????????????	
		
	}

	function OnOption7(){
		
		$qualify = GetPlayerVar( -1 , 76 )
		$got = GetPlayerVar(-1,207)
		
		if $qualify != 1
			BC( "dialogbox", "player", -1, "You didn't receive a flawed Badge, but you can still collect the Summer Riotous Badge in the usual way.")
			return
		endif

		$a = GetPlayerVar( -1 , 207 )
		if $a == 1
			BC( "dialogbox", "player", -1, "You have already obtained a Summer Riotous Badge." )
			return
		endif

		BC( "dialogbox", "player", -1, "Many apologies! In my carelessness, I sent flawed Badges to everyone. Let me give you the correct Badge to make up for my error.")
		SetPlayerVar( -1 , 207 , 1 )
		AddPlayerInfo( -1, "item", 21153 , 1 )
		
	}




















	
//	function OnOption7(){
//	
//		BC( "dialogbox", "player", -1, "GUID:08130000021")
//			
//		
//	}
	
	//2011???????????,?????NPC???????????
//	function OnOption8(){
//	
//	//??????
//	$count = GetTaskCount( -1 )
//	if $count >= 20
//	   BC( "chat", "player", -1, "GUID:08130000022"
//	   return
//	endif
//	
//	//??????,30?????????????
//  $level = GetPlayerInfo( -1, "level" )
//  if $level <= 29
//     BC( "screen" ,"player", -1, "GUID:08130000023")
//     return
//  endif
//	
//	// $n = RandomNumber( 1988, 1990 )
//	// AcceptTask( -1,$n )
//	
//  $time = GetSystemTime( "yday" )
//	$n = RandomNumber( 1, 3 )
//	if $n == 1
//	   AcceptTask( -1 , 1988 )
//	endif	
//	if $n == 2
//	   AcceptTask( -1, 1989 )
//  endif  
//  if $n == 3
//     AcceptTask( -1, 1990 )
//  endif
//  
//  SetPlayerVar( -1, 4044, $time )
//  
//  }
  
//44143	???
//96 1			????
//100 6390	????
//  function OnOption9(){
////?1??????????
//		$item1 = GetPlayerInfo(-1,"item",44143)
//		if $item1 < 1
//			BC("dialogbox","player",-1,"You didn't bring any Golden Eggs!")
//			return
//		endif
//		
//		$nullitem = GetPlayerInfo(-1,"nullitem",0)
//		if $nullitem < 1
//			BC("dialogbox","player",-1,"Insufficient bag slots!")
//			return
//		endif
//		
//		$result = SubPlayerInfo(-1,"item",44143,1)
//		if $result == 0
//			AddPlayerInfo(-1,"item",1,5)
//		else
//			BC("dialogbox","player",-1,"You didn't bring any Golden Eggs.")
//		endif
//  	
//  }
  
  
//  function OnOption10(){
////?3??????????
//		$item1 = GetPlayerInfo(-1,"item",44143)
//		if $item1 < 3
//			BC("dialogbox","player",-1,"You didn't bring 3 Golden Eggs!")
//			return
//		endif
//		
//		$nullitem = GetPlayerInfo(-1,"nullitem",0)
//		if $nullitem < 1
//			BC("dialogbox","player",-1,"Insufficient bag slots!")
//			return
//		endif
//		
//		$result = SubPlayerInfo(-1,"item",44143,3)
//		if $result == 0
//			AddPlayerInfo(-1,"item",6390,1)
//		else
//			BC("dialogbox","player",-1,"You didn't bring 3 Golden Eggs.")
//		endif
//  	
//  	
//  	
//  }