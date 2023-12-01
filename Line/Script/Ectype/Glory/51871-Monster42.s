	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11
	//		Author:???(??,??,??)
	//		TaskName:?4-2??
	//		TaskID:51871-Monster42.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 532,??????? 11
		//????

		$ectype_id = GetEctypeID(-1, 532)
		
		$count = GetEctypeVar(-1, 11)
		$is_summon = GetEctypeVar(-1, 13)
		
		$boss2 = 51861
		$monster42 = 51871
		
		$count = $count + 1
		SetEctypeVar(-1, 11, $count)
		
		
		if $is_summon >= 2
			return
		else
			if $count >= 8
			
				AddMonsterByFloat($boss2, 1, $ectype_id, 168, 128, 1)
				BC("screen","map",$ectype_id,"Deity of Darkness appears.")
				SetEctypeVar(-1, 13, 2)
			else
				if $is_summon >= 1
					return
				else
					if $count >= 4
						AddMonsterByFloat($monster42, 1, $ectype_id, 166, 135, 1)
		 				AddMonsterByFloat($monster42, 1, $ectype_id, 160, 132, 1)
						AddMonsterByFloat($monster42, 1, $ectype_id, 160, 126, 1)
						AddMonsterByFloat($monster42, 1, $ectype_id, 171, 131, 1)
						AddMonsterByFloat($monster42, 1, $ectype_id, 172, 125, 1)
						AddMonsterByFloat($monster42, 1, $ectype_id, 166, 122, 1)
						AddMonsterByFloat($monster42, 1, $ectype_id, 166, 129, 1)
						AddMonsterByFloat($monster42, 1, $ectype_id, 166, 128, 1)
						
						SetEctypeVar(-1, 13, 1)
					endif	
				endif
			endif
		endif
			 
	
		
		
		
	}