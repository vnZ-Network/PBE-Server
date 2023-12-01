     function OnDead(){
		$ectype_ID = GetEctypeID(-1 ,223)
		AddMonster( 51191, 1,$ectype_ID, 34, 35, 0 )
		BC("screen", "map", $ectype_ID, "The Engraved Fingerband clatters to the ground.")
		BC("screen", "map", $ectype_ID, "Razill: Well, this is an unexpected turn of events...")
		
		$random = RandomNumber(0,100)
		if $random < 20
		
				$playerID = GetPlayerID()
					if $playerID < 0
						return
					endif
				$teamD_count = 0
				$n = 0
				while $n < 6
					$teamplayer_id = GetTeamMemberID($playerID,$n)
					if $teamplayer_id > 0
					$lenD = GetPlayerDistance($playerID,$teamplayer_id )
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
					$teamplayer_id = GetTeamMemberID($playerID,$n)
					if $teamplayer_id > 0
						$lenD = GetPlayerDistance($playerID,$teamplayer_id )
						if $lenD < 9999
		  				if $randbuff < $maskD2
		  					DropMonsterItems($teamplayer_id,$dropitemD)
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
		