	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/3
	//		Author:???(??,??,??)
	//		TaskName:Captain????
	//		TaskID:52324_mon2_0.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 540,??????? 1

		$ectype_id = GetEctypeID(-1, 540)
		$total = GetEctypeVar(-1, 98)
		
		$total = $total + 1
		SetEctypeVar(-1, 98, $total)
//		BC( "screen", "player", -1, "GUID:04397000000"$total)
		


	

		
		
	}