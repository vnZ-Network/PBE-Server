	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/3
	//		Author:???(??,??,??)
	//		TaskName:???? ???????
	//		TaskID:52325_mon_h_2.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 540,??????? 1

		$ectype_id = GetEctypeID(-1, 540)
		$BOSS_H = 52327
		$south_x = 217
		$south_y = 147
		$is_summon = GetEctypeVar(-1,27)
		
		//????????
		$total = GetEctypeVar(-1, 98)
		$total = $total + 1
		SetEctypeVar(-1, 98, $total)
//		BC( "screen", "map", $ectype_id, "GUID:04398000000"$total)
		
		//??8?????????BOSS
		$count = GetEctypeVar(-1,26)
		$count = $count + 1
		SetEctypeVar(-1,26,$count)
		
		if $is_summon > 0
			return
		else
			if $count == 8
				AddMonsterByFloat($BOSS_H,1,$ectype_id,$south_x,$south_y,1)
				BC( "screen", "map", $ectype_id, "The ultimate hidden boss appears.")
				SetEctypeVar(-1, 27, 1)
			endif
		endif
		
		
		
		
	}