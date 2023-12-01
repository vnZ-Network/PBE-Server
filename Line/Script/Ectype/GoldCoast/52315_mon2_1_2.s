	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/3
	//		Author:???(??,??,??)
	//		TaskName:??ss??
	//		TaskID:52313_mon2_1_2ss.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 540,??????? 1

		$ectype_id = GetEctypeID(-1, 540)
		$is_conquer = GetEctypeVar(-1, 19)
		
		SetEctypeVar(-1, 19, 1)
		SetEctypeVar(-1, 21, 1)
		SetEctypeVar(-1, 18, 1)


	
////--------------????------------------------------
//		//???boss?? ????? 90157   ????? 90158
//
//		$playerID = GetPlayerID()
//		if $playerID < 0
//			return
//		endif
////------------------------------------------		
//
////?????????
//		$time = GetEctypeVar(-1, 
//
//		$dropitemD = 90157 + $time
////		$dropitemDbase = 90158
//		//$droped = 0
//		//$droped2 = 0
//		$teamD_count = 0
//		$Cid = 0
//		while $Cid < 6
//			$teamplayer_id = GetTeamMemberID($playerID,$Cid)
//			if $teamplayer_id > 0
//			$lenD = GetPlayerDistance($playerID,$teamplayer_id )
//				if $lenD < 15
//					$teamD_count = $teamD_count + 1
//				endif
//			endif
//			$Cid = $Cid + 1
//		endwhile
////		BC("screen","map", $ectype_id, "",$teamD_count)
//		
//		$maskD = 60 / $teamD_count
//		$maskD2 = $maskD
//		$randbuff = RandomNumber( 0 , 59 )
//
//		$Cid = 0
//		while $Cid < 6
//			$teamplayer_id = GetTeamMemberID($playerID,$Cid)
//			if $teamplayer_id > 0
//				$lenD = GetPlayerDistance($playerID,$teamplayer_id )
//				if $lenD < 15
//  				if $randbuff < $maskD2
////  					#name = GetPlayerInfo( $teamplayer_id, "name" )
//// 						BC( "screen", "server", -1, "GUID:04392000000",#name,"GUID:04392000001" )	
//  					DropMonsterItems($teamplayer_id,$dropitemD)
//  					$maskD2 = -999
//  					//$droped1 = $Cid
//  				else
////  					DropMonsterItems($teamplayer_id,$dropitemDbase)
//  					$maskD2 = $maskD2 + $maskD
//  				endif
//				endif
//			endif
//			$Cid = $Cid + 1
//		endwhile		
////----------------------????--------------------		
		
		
	}