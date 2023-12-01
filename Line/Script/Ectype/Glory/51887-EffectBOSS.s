	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/11
	//		Author:???(??,??,??)
	//		TaskName:????boss
	//		TaskID:51887-EffectBOSS.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 532,???  18
		//boss 51860
		
		$ectype_id = GetEctypeID(-1, 532)
		$count = GetEctypeVar(-1, 18)
		
		$count = $count + 1
		SetEctypeVar(-1, 18, $count)
//		BC("screen","map", $ectype_id, "GUID:04379000000",$count)
		
	}