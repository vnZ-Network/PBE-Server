	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11
	//		Author:???(??,??,??)
	//		TaskName:?
	//		TaskID:51865-south.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 532,??????? 1   ?? 0   ?? 1
		//???????BOSS 4
		//boss 51862
		$ectype_id = GetEctypeID(-1, 532)		
		$is_north = GetEctypeVar(-1, 0)
		$is_south = GetEctypeVar(-1, 1)
		
		$is_south = $is_south + 1
		if $is_south > 1
		//???+1 ????0 ???????south??0??????????
			BC("screen","map",$ectype_id,"Problem with the Southern Baltic Pillars.")
			return
		else
			SetEctypeVar(-1, 1, $is_south)
			BC("screen","map",$ectype_id,"If you do not destroy all the guardian pillars in time, they will be restored.")
			if $is_north > 0
				return
			else
				StartEctypeTimer($ectype_id, 1)			
//				BC("screen","map",$ectype_id,"GUID:04371000002")	
			endif
		endif
				
		
	}