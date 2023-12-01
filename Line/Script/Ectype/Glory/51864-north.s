	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11
	//		Author:???(??,??,??)
	//		TaskName:?
	//		TaskID:51864-north.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 532,??????? 1   ?? 0 +1   ?? 1 +1
		//???????51866 2

		$ectype_id = GetEctypeID(-1, 532)		
		$is_north = GetEctypeVar(-1, 0)
		$is_south = GetEctypeVar(-1, 1)
		
		$is_north = $is_north + 1
		if $is_north > 1
		//???+1 ???+1 ????0 ?????????0??????????
			BC("screen","map",$ectype_id,"Problem with the Northern Baltic Pillars.")
			return
		else
			SetEctypeVar(-1, 0, $is_north)
			BC("screen","map",$ectype_id,"If you do not destroy all the guardian pillars in time, they will be restored.")
			if $is_south > 0
				return
			else
				StartEctypeTimer($ectype_id, 1)
//				BC("screen","map",$ectype_id,"GUID:04370000002")
			endif
		endif
				
		
	}