	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11
	//		Author:???(??,??,??)
	//		TaskName:?4-1??
	//		TaskID:51870-Monster41.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 532,??????? 9

		//monster 51871
		$ectype_id = GetEctypeID(-1, 532)
		
		$count = GetEctypeVar(-1, 9)
		$is_summon = GetEctypeVar(-1, 10)
		$is_summon2 = GetEctypeVar(-1, 12)		
		$monster = 51870
		$monster42 = 51871
		$door = 5
				
		$count = $count + 1
		SetEctypeVar(-1, 9, $count)

		//??????boss,??22?,
		if $is_summon2 >= 2
			return
		else
			if $count >= 20			
				OpenMask( $door, $ectype_id)

				AddMonsterByFloat($monster42, 1, $ectype_id,162,149, 1)
				AddMonsterByFloat($monster42, 1, $ectype_id,158,144, 1)
				AddMonsterByFloat($monster42, 1, $ectype_id,163,141, 1)
				AddMonsterByFloat($monster42, 1, $ectype_id,170,141, 1)
//				AddMonsterByFloat($monster42, 1, $ectype_id,176,144, 1)
//				AddMonsterByFloat($monster42, 1, $ectype_id,151,140, 1)
//				AddMonsterByFloat($monster42, 1, $ectype_id,155,137, 1)
//				AddMonsterByFloat($monster42, 1, $ectype_id,154,131, 1)
				AddMonsterByFloat($monster42, 1, $ectype_id,166,138, 1)
				AddMonsterByFloat($monster42, 1, $ectype_id,172,136, 1)
//				AddMonsterByFloat($monster42, 1, $ectype_id,179,138, 1)
//				AddMonsterByFloat($monster42, 1, $ectype_id,182,139, 1)

				BC("screen","map",$ectype_id,"Radiant Temple's protection has weakened, and the door of destiny has opened.")
				SetEctypeVar(-1, 12, 2)
			else
				if $is_summon2 >= 1
					return
				else
					if $count >= 14
						AddMonsterByFloat($monster, 1, $ectype_id, 163, 170, 1)
		 				AddMonsterByFloat($monster, 1, $ectype_id, 168, 170, 1)
						AddMonsterByFloat($monster, 1, $ectype_id, 158, 172, 1)
						AddMonsterByFloat($monster, 1, $ectype_id, 174, 172, 1)
						AddMonsterByFloat($monster, 1, $ectype_id, 166, 187, 1)
						AddMonsterByFloat($monster, 1, $ectype_id, 165, 178, 1)
		
						SetEctypeVar(-1, 12, 1)
					endif	
				endif
			endif
		endif

//		//?????????,?18,16??		
//		if $is_summon >= 1
//			return
//		else
//			if $count >= 16
//
//				AddMonsterByFloat($monster, 1, $ectype_id, 163, 170, 1)
// 				AddMonsterByFloat($monster, 1, $ectype_id, 168, 170, 1)
//				AddMonsterByFloat($monster, 1, $ectype_id, 158, 172, 1)
//				AddMonsterByFloat($monster, 1, $ectype_id, 174, 172, 1)
//				AddMonsterByFloat($monster, 1, $ectype_id, 166, 187, 1)
//				AddMonsterByFloat($monster, 1, $ectype_id, 165, 178, 1)
//
//				AddMonsterByFloat($monster, 1, $ectype_id, 151, 178, 1)
//				AddMonsterByFloat($monster, 1, $ectype_id, 149, 185, 1)
//				AddMonsterByFloat($monster, 1, $ectype_id, 162, 188, 1)
//				AddMonsterByFloat($monster, 1, $ectype_id, 160, 183, 1)		
//				AddMonsterByFloat($monster, 1, $ectype_id, 157, 176, 1)
//				AddMonsterByFloat($monster, 1, $ectype_id, 168, 187, 1)
//				AddMonsterByFloat($monster, 1, $ectype_id, 171, 181, 1)
//				AddMonsterByFloat($monster, 1, $ectype_id, 174, 176, 1)
//				AddMonsterByFloat($monster, 1, $ectype_id, 180, 178, 1)
//				AddMonsterByFloat($monster, 1, $ectype_id, 183, 185, 1)			
//				SetEctypeVar(-1, 10, 1)
//			endif
//		endif	
	
		
		
		
	}