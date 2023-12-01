	function OnDead(){
		$lang = GetPlayerVar(-1, 3301)
		$ectID = GetEctypeID( -1, 232 )	
		
		$stage = GetEctypeVar( -1, 119 )
		$stage = $stage + 1
		SetEctypeVar( -1, 119, $stage )
		
		$random = RandomNumber(0,100)
		if $random < 2		
               $playerID = GetPlayerID()
                    if $playerID < 0
                         return
                    endif
               $teamC = 0
               $n = 0
               while $n < 6
                    $TeamID = GetTeamMemberID($playerID,$n)
                    if $TeamID > 0
                    $lenD = GetPlayerDistance($playerID,$TeamID )
                         if $lenD < 9999
                              $teamC = $teamC + 1
                         endif
                    endif
                    $n = $n + 1
               endwhile
               
               
               $playerID = GetPlayerID()
               $dropitemD = 90161
               $maskD = 60 / $teamC
               $maskD2 = $maskD
               $randbuff = RandomNumber( 0 , 59 )
               $n = 0
               while $n < 6
                    $TeamID = GetTeamMemberID($playerID,$n)
                    if $TeamID > 0
                         $lenD = GetPlayerDistance($playerID,$TeamID )
                         if $lenD < 9999
                         if $randbuff < $maskD2
                              DropMonsterItems($TeamID,$dropitemD)
                              $maskD2 = -999
                         else
                              $maskD2 = $maskD2 + $maskD
                         endif
                    endif
                    endif
                    $n = $n + 1
               endwhile
		endif
		
		$stage = GetEctypeVar( -1, 119 )
		if $stage < 4
               if $lang == 1
                    BC( "chat" , "player" , -1 , "[color=FF22E974]Cổng này đã hoàn thành, hãy tiến vào Cổng khác" )
               endif
               if $lang == 2
                    BC( "chat" , "player" , -1 , "[color=FF22E974]Please move to the next room!" )
               endif
			return
		else
               if $lang == 1
                    BC( "chat" , "player" , -1 , "[color=ffB54ECA]Kim Tự Tháp [color=FF22E974]đã kết thúc vui lòng thoát Phụ Bản")
               endif
               if $lang == 2
                    BC( "chat" , "player" , -1 , "[color=ffB54ECA]Giza Pyramid [color=FF22E974]has end please exit the Instance")
               endif               
			return
		endif
		
		
		
	}