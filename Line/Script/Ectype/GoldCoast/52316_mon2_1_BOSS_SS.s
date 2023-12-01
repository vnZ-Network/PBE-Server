	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/3
	//		Author:???(??,??,??)
	//		TaskName:??SS
	//		TaskID:52316_mon2_1_BOSS_SS.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 540,??????? 1

		$ectype_id = GetEctypeID(-1, 540)

		AddNPC(792,-1)
		
		$n_1st = GetEctypeVar(-1, 8)
		$s_1st = GetEctypeVar(-1, 9)
		
		if $s_1st >= 1
			$s_1st = $s_1st + 1
			SetEctypeVar(-1, 9, $s_1st)
		else
			SetEctypeVar(-1, 8, 1)
			SetEctypeVar(-1, 9, 1)
		endif
		


	
//--------------????------------------------------
		//2-2boss ?? ????? 9216   

		$playerID = GetPlayerID()
		if $playerID < 0
			return
		endif
//------------------------------------------		

		$dropitemD = 90169
		$teamD_count = 0
		$Cid = 0
		while $Cid < 6
			$teamplayer_id = GetTeamMemberID($playerID,$Cid)
			if $teamplayer_id > 0
			$lenD = GetPlayerDistance($playerID,$teamplayer_id )
				if $lenD < 15
					$teamD_count = $teamD_count + 1
				endif
			endif
			$Cid = $Cid + 1
		endwhile
//		BC("screen","map", $ectype_id, "",$teamD_count)
		
		$maskD = 60 / $teamD_count
		$maskD2 = $maskD
		$randbuff = RandomNumber( 0 , 59 )

		$Cid = 0
		while $Cid < 6
			$teamplayer_id = GetTeamMemberID($playerID,$Cid)
			if $teamplayer_id > 0
				$lenD = GetPlayerDistance($playerID,$teamplayer_id )
				if $lenD < 15
  				if $randbuff < $maskD2
  					#name = GetPlayerInfo( $teamplayer_id, "name" )
 						BC( "screen", "server", -1, "The hero ",#name,"when opening the queen's gold pouch, happened upon a Silver Trumpet!" )	
  					DropMonsterItems($teamplayer_id,$dropitemD)
  					$maskD2 = -999
  					//$droped1 = $Cid
  				else
//  					DropMonsterItems($teamplayer_id,$dropitemDbase)
  					$maskD2 = $maskD2 + $maskD
  				endif
				endif
			endif
			$Cid = $Cid + 1
		endwhile		
//----------------------????--------------------		
		
		
		
	}