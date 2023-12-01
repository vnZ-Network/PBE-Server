	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11
	//		Author:???(??,??,??)
	//		TaskName:??????
	//		TaskID:51861-Boss2.s
	//
	//****************************************
	
	function OnDead(){	

		//??? 753  ????? 51874   ?????? 51869  ????? 51883  51895 51896 51897 51898

		$ectype_id = GetEctypeID(-1, 532)
		
		$npcid = 753

		$monster = 51874
		$monster5 = 51869
		$monster42 = 51871
		$five1 = 51883
		$five2 = 51895
		$five3 = 51896
		$five4 = 51897
		$five5 = 51898
		
		$is_summon = GetEctypeVar(-1, 14)
		
		
		if $is_summon >= 1
			return
		else
		
			AddNPC($npcid,$ectype_id)

			PlayEffect(-1,"common\xiwadeshouhu\fire\tx_xiwadeshouhu_fire.ini")
		
			AddMonsterByFloat($monster42, 1, $ectype_id, 166, 135, 1)
			AddMonsterByFloat($monster42, 1, $ectype_id, 160, 132, 1)
			AddMonsterByFloat($monster42, 1, $ectype_id, 160, 126, 1)
			AddMonsterByFloat($monster42, 1, $ectype_id, 171, 131, 1)
			AddMonsterByFloat($monster42, 1, $ectype_id, 172, 125, 1)
			AddMonsterByFloat($monster42, 1, $ectype_id, 166, 122, 1)
			AddMonsterByFloat($monster42, 1, $ectype_id, 166, 129, 1)
			AddMonsterByFloat($monster42, 1, $ectype_id, 166, 128, 1)			
			
			AddMonsterByFloat($monster42, 1, $ectype_id, 162, 140, 1)
			AddMonsterByFloat($monster42, 1, $ectype_id, 155, 135, 1)
			AddMonsterByFloat($monster42, 1, $ectype_id, 153, 126, 1)
			AddMonsterByFloat($monster42, 1, $ectype_id, 158, 119, 1)
			AddMonsterByFloat($monster42, 1, $ectype_id, 165, 116, 1)
			AddMonsterByFloat($monster42, 1, $ectype_id, 174, 119, 1)
			AddMonsterByFloat($monster42, 1, $ectype_id, 178, 126, 1)
			AddMonsterByFloat($monster42, 1, $ectype_id, 177, 135, 1)				
			AddMonsterByFloat($monster42, 1, $ectype_id, 170, 140, 1)	
				
			AddMonsterByFloat($monster, 1, $ectype_id, 164, 89, 1)
			AddMonsterByFloat($monster, 1, $ectype_id, 168, 85, 1)
			AddMonsterByFloat($monster, 1, $ectype_id, 163, 81, 1)
			AddMonsterByFloat($monster, 1, $ectype_id, 168, 75, 1)
			AddMonsterByFloat($monster, 1, $ectype_id, 164, 69, 1)
			AddMonsterByFloat($monster, 1, $ectype_id, 169, 72, 1)
			
			AddMonsterByFloat($monster5, 1, $ectype_id, 232, 46, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 232, 42, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 232, 38, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 232, 34, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 225, 36, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 225, 45, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 217, 36, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 217, 45, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 208, 36, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 208, 45, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 197, 36, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 197, 45, 1)

			//????			
			AddMonsterByFloat($monster5, 1, $ectype_id, 235, 46, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 235, 42, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 235, 38, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 235, 34, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 228, 36, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 228, 45, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 222, 36, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 222, 45, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 212, 36, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 212, 45, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 200, 36, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 200, 45, 1)	
			
			AddMonsterByFloat($monster5, 1, $ectype_id, 171, 49, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 174, 55, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 161, 49, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 158, 56, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 156, 41, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 149, 41, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 161, 33, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 158, 26, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 170, 32, 1)
			AddMonsterByFloat($monster5, 1, $ectype_id, 175, 25, 1)									
						
			AddMonsterByFloat($five1, 1, $ectype_id, 254, 40, 1)
			AddMonsterByFloat($five2, 1, $ectype_id, 260, 29, 1)
			AddMonsterByFloat($five3, 1, $ectype_id, 260, 53, 1)
			AddMonsterByFloat($five4, 1, $ectype_id, 247, 31, 1)
			AddMonsterByFloat($five5, 1, $ectype_id, 247, 50, 1)
			
			SetEctypeVar(-1, 14,1)	
			BC("screen","map",$ectype_id,"Deity of Darkness has been defeated. Spirit of the God of Light appears.")		
		endif

//--------------????------------------------------
		//???boss???? ????? 90156   ????? 90158

		$playerID = GetPlayerID()
		if $playerID < 0
			return
		endif
//------------------------------------------
		$dropitemD = 90156
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
//						#name = GetPlayerInfo( $teamplayer_id, "name" )
// 						BC( "screen", "server", -1, "GUID:04368000001",#name,"GUID:04368000002" )	
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