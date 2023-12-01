  //****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/08/10
	//		Author：刘晓璐
	//		TaskName：Ectype-Titan-Monster-RenMaBoss.s
	//		TaskID：BOSS涅索斯
	//****************************************
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID( -1, 303 )
		OpenMapMask( 3 )
		
//----------掉落开始----------------------在场队员中随机给一个人一件
		$playerD_idsafe = GetPlayerID()
		if $playerD_idsafe < 0
			return
		endif
//------------------------------------------
		$dropitemD = 90133
		$dropitemDbase = 90137
		$droped = 0
		$teamD_count = 0
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )
		
		if $teamplayer1_id > 0
			$lenD = GetPlayerDistance( -1 , $teamplayer1_id )
			if $lenD < 15
				$teamD_count = $teamD_count + 1
			endif
		endif
		if $teamplayer2_id > 0
			$lenD = GetPlayerDistance( -1 , $teamplayer2_id )
			if $lenD < 15
				$teamD_count = $teamD_count + 1
			endif
		endif
		if $teamplayer3_id > 0
			$lenD = GetPlayerDistance( -1 , $teamplayer3_id )
			if $lenD < 15
				$teamD_count = $teamD_count + 1
			endif
		endif
		if $teamplayer4_id > 0
			$lenD = GetPlayerDistance( -1 , $teamplayer4_id )
			if $lenD < 15
				$teamD_count = $teamD_count + 1
			endif
		endif
		if $teamplayer5_id > 0
			$lenD = GetPlayerDistance( -1 , $teamplayer5_id )
			if $lenD < 15
				$teamD_count = $teamD_count + 1
			endif
		endif
		if $teamplayer6_id > 0
			$lenD = GetPlayerDistance( -1 , $teamplayer6_id )
			if $lenD < 15
				$teamD_count = $teamD_count + 1
			endif
		endif
		
		$maskD = 60 / $teamD_count
		$maskD2 = $maskD
		
		$randbuff = RandomNumber( 0 , 59 )
		
				if $randbuff < $maskD2
//-----------------------------------------------------------第1人
					if $teamplayer1_id > 0
						DropMonsterItems($teamplayer1_id, $dropitemD )
						$maskD2 = -9991
						$droped = 1
					else
						$maskD2 = $maskD2 - $maskD
					endif
//-----------------------------------------------------------第1人end
				else
					$maskD2 = $maskD2 + $maskD
					if $randbuff < $maskD2
//-----------------------------------------------------------第2人
						if $teamplayer2_id > 0
							DropMonsterItems($teamplayer2_id , $dropitemD )
							$maskD2 = -9992
							$droped = 2
						else
							$maskD2 = $maskD2 - $maskD
						endif
//-----------------------------------------------------------第2人end
					else
						$maskD2 = $maskD2 + $maskD
						if $randbuff < $maskD2
//-----------------------------------------------------------第3人
							if $teamplayer3_id > 0
								DropMonsterItems($teamplayer3_id , $dropitemD )
								$maskD2 = -9993
								$droped = 3
							else
								$maskD2 = $maskD2 - $maskD
							endif
//-----------------------------------------------------------第3人end
						else
							$maskD2 = $maskD2 + $maskD
							if $randbuff < $maskD2
//-----------------------------------------------------------第4人
								if $teamplayer4_id > 0
									DropMonsterItems($teamplayer4_id , $dropitemD )
									$maskD2 = -9994
									$droped = 4
								else
									$maskD2 = $maskD2 - $maskD
								endif
//-----------------------------------------------------------第4人end
							else
								$maskD2 = $maskD2 + $maskD
								if $randbuff < $maskD2
//-----------------------------------------------------------第5人
									if $teamplayer5_id > 0
										DropMonsterItems($teamplayer5_id , $dropitemD )
										$maskD2 = -9995
										$droped = 5
									else
										$maskD2 = $maskD2 - $maskD
									endif
//-----------------------------------------------------------第5人end
								else						
//-----------------------------------------------------------第6人
									if $teamplayer6_id > 0
										DropMonsterItems($teamplayer6_id , $dropitemD )
										$maskD2 = -9996
										$droped = 6
									else
										$maskD2 = $maskD2 - $maskD
									endif
//-----------------------------------------------------------第6人end
								endif
							endif
						endif
					endif
				endif
				
				if $droped != 1
					if $teamplayer1_id > 0
						DropMonsterItems($teamplayer1_id , $dropitemDbase )
					endif
				endif
				if $droped != 2
					if $teamplayer2_id > 0
						DropMonsterItems($teamplayer2_id , $dropitemDbase )
					endif
				endif
				if $droped != 3
					if $teamplayer3_id > 0
						DropMonsterItems($teamplayer3_id , $dropitemDbase )
					endif
				endif
				if $droped != 4
					if $teamplayer4_id > 0
						DropMonsterItems($teamplayer4_id , $dropitemDbase )
					endif
				endif
				if $droped != 5
					if $teamplayer5_id > 0
						DropMonsterItems($teamplayer5_id , $dropitemDbase )
					endif
				endif
				if $droped != 6
					if $teamplayer6_id > 0
						DropMonsterItems($teamplayer6_id , $dropitemDbase )
					endif
				endif
				
//----------掉落结束-----------------------------------------
		
	}