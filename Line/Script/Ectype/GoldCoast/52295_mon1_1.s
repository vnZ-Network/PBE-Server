	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/3
	//		Author:???(??,??,??)
	//		TaskName:????
	//		TaskID:52295_mon1_1.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 540,??????? 1

		$ectype_id = GetEctypeID(-1, 540)
		
		$total = GetEctypeVar(-1, 98)
		$count = GetEctypeVar(-1, 1)
		$is_finish = GetEctypeVar(-1, 2)
		
		$mon1_3 = 52297
		$captain = 52292
		
		$count = $count + 1
		SetEctypeVar(-1, 1, $count)
		
		$total = $total + 1
		SetEctypeVar(-1, 98, $total)
//		BC( "screen", "player", -1, "GUID:04385000000"$total)
		
		if $count == 11
			AddMonsterByFloat($mon1_3, 1, $ectype_id, 161, 254, 1)
		endif	
		
		if $count == 21
			AddMonsterByFloat($captain, 1, $ectype_id, 152, 213, 1)
//			AddNPC(784,-1)
		endif

	}