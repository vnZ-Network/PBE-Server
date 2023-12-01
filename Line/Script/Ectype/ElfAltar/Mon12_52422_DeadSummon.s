	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/8
	//		Author:???(??,??,??)
	//		TaskName:???????
	//		TaskID:Mon12_52422_DeadSummon.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 541 ,??????? 1

		$ectype_id = GetEctypeID(-1, 541)
		
		$switch = GetEctypeVar(-1, 0)
		
		$mon_dead = 52423
		
		$mapX = GetEctypeVar(-1,10)
		$mapY = GetEctypeVar(-1,11)
		
		if $switch < 2
//			BC("screen","map",$ectype_id,"GUID:04272000000")
			AddMonsterByFloat($mon_dead,1,$ectype_id,$mapX,$mapY,1,0,0)
		endif
		
	}