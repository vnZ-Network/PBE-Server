	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11
	//		Author:???(??,??,??)
	//		TaskName:????
	//		TaskID:51862-BOSS1.s
	//
	//****************************************
	
	function OnDead(){

		$ectype_id = GetEctypeID(-1, 532)
		$is_start = GetEctypeVar(-1, 5)
		$monster1 = 51863
		$monsterL = 51872
		$monsterR = 51873
		$monster31 = 51857
		$monster32 = 51858
		
		
		$is_start = $is_start + 1
		SetEctypeVar(-1, 5, $is_start)
		
		if $is_start > 1
			return
		else
			
//			StartEctypeTimer($ectype_id, 2)
			
			AddMonsterByFloat($monster1, 1, $ectype_id, 145, 238, 1)
			AddMonsterByFloat($monster1, 1, $ectype_id, 140, 234, 1)

			AddMonsterByFloat($monster1, 1, $ectype_id, 187, 238, 1)
			AddMonsterByFloat($monster1, 1, $ectype_id, 191, 234, 1)	
			
			AddMonsterByFloat($monsterL, 1, $ectype_id, 130, 225, 1)
			AddMonsterByFloat($monsterR, 1, $ectype_id, 202, 225, 1)
			
			AddMonsterByFloat($monster31, 1, $ectype_id, 152, 250, 1)
			AddMonsterByFloat($monster31, 1, $ectype_id, 155, 247, 1)
			AddMonsterByFloat($monster31, 1, $ectype_id, 159, 243, 1)
			AddMonsterByFloat($monster31, 1, $ectype_id, 162, 243, 1)
			AddMonsterByFloat($monster31, 1, $ectype_id, 152, 254, 1)
			
			AddMonsterByFloat($monster32, 1, $ectype_id, 172, 244, 1)
			AddMonsterByFloat($monster32, 1, $ectype_id, 175, 246, 1)
			AddMonsterByFloat($monster32, 1, $ectype_id, 177, 250, 1)
			AddMonsterByFloat($monster32, 1, $ectype_id, 179, 252, 1)
			AddMonsterByFloat($monster32, 1, $ectype_id, 179, 254, 1)

			PlayEffect(-1,"common\xiwadeshouhu\fire\tx_xiwadeshouhu_fire.ini")
			
		endif
		
//--------------????------------------------------
		//???boss?? ????? 90157   ????? 90158

		$playerID = GetPlayerID()
		if $playerID < 0
			return
		endif
//------------------------------------------
		$dropitemD = 90157
		$dropitemDbase = 90158
		//$droped = 0
		//$droped2 = 0
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
//  					#name = GetPlayerInfo( $teamplayer_id, "name" )
// 						BC( "screen", "server", -1, "GUID:04369000000",#name,"GUID:04369000001" )	
  					DropMonsterItems($teamplayer_id,$dropitemD)
  					$maskD2 = -999
  					//$droped1 = $Cid
  				else
  					DropMonsterItems($teamplayer_id,$dropitemDbase)
  					$maskD2 = $maskD2 + $maskD
  				endif
				endif
			endif
			$Cid = $Cid + 1
		endwhile		
//----------------------????--------------------			
		
	}