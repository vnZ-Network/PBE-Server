 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/6/12
	//		Author:???
	//		TaskName:NPC-180.s
	//		TaskID:????
	//****************************************
	
	
	function OnRequest(){
		
		$Done = IsTaskDone( -1, 109 )
		$Accept = IsTaskAccept( -1, 110 )
		$Info = GetPlayerInfo( -1, "item", 64262)
		if $Accept == 0
			DisableNpcOption(0)
		endif
		if $Done != 0
			DisableNpcOption(0)
		else
			if $Info > 0
				DisableNpcOption(0)
			endif
		endif
//				//??????
//
//	$Now_Mday =  GetSystemTime( "mday" )
//	//??
//	$Now_Month =  GetSystemTime( "month" )
//	//???.2008????
//	$Now_Year =  GetSystemTime( "year" )
//	//???.0-6
//	$Now_Week =  GetSystemTime( "week" )
//	//??????.0-365
//	$Now_Yday =  GetSystemTime( "yday" )
//	if $Now_Year != 2013 
//	  DisableNpcOption(1)
//     
//  endif
//  	if $Now_Month != 2 
//	   DisableNpcOption(1)
//     
//  endif
//  if $Now_Mday < 10
//	   DisableNpcOption(1)
//     
//  endif
//   if $Now_Mday > 26
//	   DisableNpcOption(1)
//     
//  endif
//  	//????
//    $playervar = GetPlayerVar(-1,3451)  
//    if $playervar > 6
//	   DisableNpcOption(1)
//     
//  endif
//   	//??????
//		$Info = GetPlayerInfo( -1, "item", 44641)	
//			if $Info < 1
//				DisableNpcOption(1)
//				
//			endif
		
		
	}
	
	
	function OnOption0(){
	
		$Done = IsTaskDone( -1, 109 )
		$Accept = IsTaskAccept( -1, 110 )
		$Info = GetPlayerInfo( -1, "item", 64262)
		if $Accept == 0
			return
		endif
		if $Done != 0
			return
		else
			if $Info > 0
				return
			endif
		endif
		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
		if $nullitem < 1
			BC( "messagebox", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		AddPlayerInfo( -1, "item", 64262, 1 )
		
	}
	
	
//	function OnOption1(){
//	  	//????
//    $playervar = GetPlayerVar(-1,3451)  
//    if $playervar > 6
//     return
//  endif
//   	//??????
//		$Info = GetPlayerInfo( -1, "item", 44641)	
//			if $Info < 1
//				return
//			endif
//
//		$nullitem = GetPlayerInfo( -1 ,"nullitem",0 )
//		if $nullitem < 1
//			BC( "dialogbox", "player", -1, "You need at least 1 open Bag slot." )
//			return
//		endif
//		 //???????
//     $del_count = SubPlayerInfo( -1, "item", 44641, 1 )
//     //??????????,????????
//  if $del_count != 0
//     return
//  endif
//		AddPlayerInfo( -1, "item", 44642, 1 )
//		AddPlayerInfo( -1, "item", 59557, 1 )
//		$playervar = $playervar + 1
//		SetPlayerVar(-1, 3451, $playervar )
//		BC( "dialogbox", "player", -1, "GUID:08117000002" )
//		
//	}
	