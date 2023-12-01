	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/3
	//		Author:???(??,??,??)
	//		TaskName:??SS
	//		TaskID:52308_mon2_2_BOSS_SS.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 540,??????? 1

		$ectype_id = GetEctypeID(-1, 540)
		$dragon = GetEctypeVar(-1, 8)
		
		if $dragon < 1
			SetEctypeVar(-1, 8, 1)
			SetEctypeVar(-1, 9, 1)
		else
			$dragon = $dragon + 1
			SetEctypeVar(-1, 8, $dragon)
		endif
		
//--------------????------------------------------
		$mon2_2 = 52307
		
	  AddMonsterByFloat( $mon2_2 , 1, $ectype_id, 110, 119, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_2 , 1, $ectype_id, 104, 122, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_2 , 1, $ectype_id, 99, 119, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_2 , 1, $ectype_id, 96, 113, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_2 , 1, $ectype_id, 97, 108, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_2 , 1, $ectype_id, 104, 107, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_2 , 1, $ectype_id, 108, 111, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_2 , 1, $ectype_id, 109, 117, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_2 , 1, $ectype_id, 104, 115, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_2 , 1, $ectype_id, 106, 113, 1 ,0 ,0 )	


//--------------????------------------------------		


	
//--------------????------------------------------
		//2-2boss ?? ????? 9216   

		$playerID = GetPlayerID()
		if $playerID < 0
			return
		endif
//------------------------------------------		

		$dropitemD = 90168
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
		BC("screen","map", $ectype_id, "",$teamD_count)
		
		$maskD = 60 / $teamD_count
		$maskD2 = $maskD
		$randbuff = RandomNumber( 0 , 59 )

		$Cid = 0
		while $Cid < 6
		BC("screen","map", $ectype_id, "",$Cid)
			$teamplayer_id = GetTeamMemberID($playerID,$Cid)
			if $teamplayer_id > 0
				$lenD = GetPlayerDistance($playerID,$teamplayer_id )
				if $lenD < 15
  				if $randbuff < $maskD2
 						#name = GetPlayerInfo( $teamplayer_id, "name" )
 						BC("screen", "map", -1, "The hero ",#name,"when searching the dragon's body for treasure, happened upon a Golden Compass!" )	
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