  	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-3
	//		Author: ???
	//		TaskName:Ectype-shiliandongku-Monster-51242.s
	//		TaskID:   ????????
	//****************************************

	function OnDead(){
//		51239	????
//		51240	??????
//		AddLevelFieldMonster($monsterID,$monsterstatusID,$level,$monsterfieldID,$Fieldlevel,$monsterCount,$mapID,$mapX,$mapY,$mapR)

		$ectype_id = GetEctypeID( -1 , 233 )
		$lv = GetEctypeVar( $ectype_id , 110 )
		$type = GetEctypeVar( $ectype_id , 11 )
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
		SetEctypeVar($ectype_id,20,$team_count)
//BC("screen","map",$ectype_id,"team_count = ",$team_count)
//BC("chat","map",$ectype_id,"team_count = ",$team_count)
//type=0?????
//6	??	50	??(??)
//12	????	51	????(??)
//14	??BOSS	53	??BOSS(??)
//79	??100+	80	??100+(??)
//205	??????
//207	??????(100+)
//206	????????
//208	????????(100+)
//-------------
		if $type == 0
			$status_mon_a = 6
			$status_mon_tuteng = 12
			$status_mon_boss = 14
			$status_mon_b = 205
			if $lv >= 100
				$status_mon_a = 79
				$status_mon_b = 207
			endif
		else
			$status_mon_a = 50
			$status_mon_tuteng = 51
			$status_mon_boss = 53
			$status_mon_b = 206
			if $lv >= 100
				$status_mon_a = 80
				$status_mon_b = 208
			endif
		endif
		$turnround = GetEctypeVar($ectype_id,114)
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
//-----------------------------------------------------------
//??????(????????ID?1),????(???b)
		if $monster_fieldlevel > 0
			AddLevelFieldMonster(51239,1,$lv,1,$monster_fieldlevel,1,$ectype_id,$addposx,$addposy,1)
			AddLevelFieldMonster(51240,$status_mon_b,$lv,$status_mon_b,$monster_fieldlevel,$team_count,$ectype_id,$addposx,$addposy,5)
		else
			AddSingleLevelMonster(51239,1,$lv,$ectype_id,$addposx,$addposy,1)
			AddSingleLevelMonster(51240,$status_mon_b,$lv,$ectype_id,$addposx,$addposy,5)
		endif
//21	?????????
//22	?????????????
//23	?????????
//24	???????
		SetEctypeVar($ectype_id,21,$team_count)
		SetEctypeVar($ectype_id,22,0)
		SetEctypeVar($ectype_id,24,1)
		BC("screen","map",$ectype_id,"Abyss Totem monster appears!")
		

	}




