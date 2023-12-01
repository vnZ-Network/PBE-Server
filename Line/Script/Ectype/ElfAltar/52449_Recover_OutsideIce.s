	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/7
	//		Author:???(??,??,??)
	//		TaskName:???OutsideIce???
	//		TaskID:52449_Recover_OutsideIce.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 541 ,??????? 1

		$ectype_id = GetEctypeID(-1, 541)
		
		//????????
		$total = GetEctypeVar(-1, 65)
		$total = $total + 1
		SetEctypeVar(-1, 65, $total)
//		BC( "screen", "player", -1, "GUID:04258000000"$total)

		
	}