	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11
	//		Author:???(??,??,??)
	//		TaskName:????????
	//		TaskID:51876-Effect1.s
	//
	//****************************************
	
	function OnDead(){
		
		$ectype_id = GetEctypeID(-1, 532)
		$n = GetEctypeVar(-1, 88)
		
		StartEctypeTimer($ectype_id, 4)
		
		$n = $n + 1
		SetEctypeVar(-1, 88, $n)

		if $n < 2			
			BC("screen","map",$ectype_id, "Sealed magic gate is attacked, Durability 1 / 2"
		endif
		
		
		
	}