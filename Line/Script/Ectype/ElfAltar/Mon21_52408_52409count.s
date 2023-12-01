	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/7
	//		Author:???(??,??,??)
	//		TaskName:??BOSS????2????????
	//		TaskID:Mon21_52408_52409count.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 541 ,??????? 1

		$ectype_id = GetEctypeID(-1, 541)
		
		//????????
		$total = GetEctypeVar(-1, 4)
		$total = $total + 1
		SetEctypeVar(-1, 4, $total)
//		BC( "screen", "player", -1, "GUID:04273000000"$total)

		if $total == 20
			StartEctypeTimer($ectype_id,0)
			BC( "chat", "map", $ectype_id, "The Enchanted Fae Portal is going to open.")
		endif
		
	}