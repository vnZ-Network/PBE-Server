	function OnDead(){
		

		$ectID = GetEctypeID(-1 ,223)
		
		if $ectID > 0
			AddNPC(1921, $ectID)
			AddNPC(1922, $ectID)
			$Dif = GetEctypeVar(-1 ,0)
			if $Dif == 0
				AddMonster( 51151, 30,$ectID, 42, 85, 20 )
				AddMonster( 51152, 30,$ectID, 85, 47, 20 )
				$white_id = AddSingleMonster( 51163,$ectID, 31, 92, 1 )
				$black_id = AddSingleMonster( 51164, $ectID, 91, 36, 1 )
			else
				if $Dif == 2					
					AddMonster( 51461, 30,$ectID, 42, 85, 20 )
					AddMonster( 51462, 30,$ectID, 85, 47, 20 )
					$white_id = AddSingleMonster( 51473, $ectID, 31, 92, 1 )
					$black_id = AddSingleMonster( 51474, $ectID, 91, 36, 1 )				
				else				
					AddMonster( 51171, 30,$ectID, 42, 85, 20 )
					AddMonster( 51172, 30,$ectID, 85, 47, 20 )
					$white_id = AddSingleMonster( 51183, $ectID, 31, 92, 1 )
					$black_id = AddSingleMonster( 51184, $ectID, 91, 36, 1 )
					
				endif
			endif
			SetEctypeVar(-1 ,112 , $white_id)
			SetEctypeVar(-1 ,113 , $black_id)
		endif
		
		$random = RandomNumber(0,100)
		if $random < 20
               $playerID = GetPlayerID()
                    if $playerID < 0
                         return
                    endif
               
               $teamD_count = 0
               $n = 0
               while $n < 6
                    $mem_id = GetTeamMemberID($playerID,$n)
                    if $mem_id > 0
                    $lenD = GetPlayerDistance($playerID,$mem_id )
                         if $lenD < 9999
                              $teamD_count = $teamD_count + 1
                         endif
                    endif
                    $n = $n + 1
               endwhile
               
               $playerID = GetPlayerID()
               $dropitemD = 90162
               $maskD = 60 / $teamD_count
               $maskD2 = $maskD
               $randbuff = RandomNumber( 0 , 59 )
               $n = 0
               while $n < 6
                    $mem_id = GetTeamMemberID($playerID,$n)
                    if $mem_id > 0
                         $lenD = GetPlayerDistance($playerID,$mem_id )
                         if $lenD < 9999
                         if $randbuff < $maskD2
                              DropMonsterItems($mem_id,$dropitemD)
                              $maskD2 = -999
                         else
                              $maskD2 = $maskD2 + $maskD
                         endif
                    endif
                    endif
                    $n = $n + 1
               endwhile
		endif
	}
		

