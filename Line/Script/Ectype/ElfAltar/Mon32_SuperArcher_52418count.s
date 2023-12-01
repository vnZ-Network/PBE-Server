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

		//???? ??id 541 ,??????? 2 , ??????????? 3

		$ectype_id = GetEctypeID(-1, 541)
		$is_kill = GetEctypeVar(-1, 3)
		if $is_kill >= 8
			BC( "chat", "player", -1, "Powerful Archer has been defeated")
			return
		endif
		
		//????????
		$total = GetEctypeVar(-1, 3)
		$total = $total + 1
		SetEctypeVar(-1, 3, $total)
//		BC( "screen", "player", -1, "GUID:04275000001"$total)

		if $total == 8
			StartEctypeTimer($ectype_id,0)
//			BC( "chat", "player", -1, "GUID:04275000002")
		endif
		
	}