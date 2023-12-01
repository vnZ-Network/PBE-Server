	function OnDead(){

		$ectID = GetEctypeID( -1 , 233 )
		$lv = GetEctypeVar( $ectID , 110 )
		$Dif = GetEctypeVar( $ectID , 11 )
		$monster_fieldlevel = GetEctypeVar(-1 ,90)

		$playerID = GetPlayerID()
		$team_count = 0
		$Cid = 0
		while $Cid < 6
			$teamplayer_id = GetTeamMemberID($playerID,$Cid)
			if $teamplayer_id > 0
			$lenD = GetPlayerDistance($playerID,$teamplayer_id )
				if $lenD < 9999
					$team_count = $team_count + 1
				endif
			endif
			$Cid = $Cid + 1
		endwhile
		SetEctypeVar($ectID,20,$team_count)

		if $Dif == 1
			$status_mon_a = 50
			$status_mon_tuteng = 51
			$status_mon_boss = 53
			$status_mon_b = 206
			if $lv >= 100
				$status_mon_a = 80
				$status_mon_b = 208
			endif
		endif
		$turnround = GetEctypeVar($ectID,114)
		if $turnround == 1
			$addposx = 68
			$addposy = 67
		endif
		if $turnround == 2
			$addposx = 68
			$addposy = 61
		endif
		if $turnround == 3
			$addposx = 58
			$addposy = 61
		endif
		if $turnround == 4
			$addposx = 58
			$addposy = 67
		endif
		if $turnround == 5
			$addposx = 68
			$addposy = 67
		endif

		if $monster_fieldlevel > 0
			AddLevelFieldMonster(51239,1,$lv,1,$monster_fieldlevel,1,$ectID,$addposx,$addposy,1)
			AddLevelFieldMonster(51240,$status_mon_b,$lv,$status_mon_b,$monster_fieldlevel,$team_count,$ectID,$addposx,$addposy,5)
		else
			AddSingleLevelMonster(51239,1,$lv,$ectID,$addposx,$addposy,1)
			AddSingleLevelMonster(51240,$status_mon_b,$lv,$ectID,$addposx,$addposy,5)
		endif

		SetEctypeVar($ectID,21,$team_count)
		SetEctypeVar($ectID,22,0)
		SetEctypeVar($ectID,24,1)
		BC("screen","map",$ectID,"Abyss Totem monster appears!")
		

	}




