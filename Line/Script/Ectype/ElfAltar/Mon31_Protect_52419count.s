	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/7
	//		Author:???(??,??,??)
	//		TaskName:???????
	//		TaskID:Mon31_52419count.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 541 ,??????? 1

		$ectype_id = GetEctypeID(-1, 541)
		
		//????????
		$total = GetEctypeVar(-1, 2)
		$total = $total + 1
		SetEctypeVar(-1, 2, $total)
//		BC( "screen", "player", -1, "GUID:04274000000"$total)

		if $total == 2
			StartEctypeTimer($ectype_id,2)
			SetEctypeVar(-1, 2, 0)
//			BC( "chat", "player", -1, "GUID:04274000001")
		endif
		
	}