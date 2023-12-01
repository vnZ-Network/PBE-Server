	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/7
	//		Author:???(??,??,??)
	//		TaskName:???????
	//		TaskID:Mon11_52395_52396count.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 541 ,??????? 1

		$ectype_id = GetEctypeID(-1, 541)
		
		//????????
		$total = GetEctypeVar(-1, 1)
		$total = $total + 1
		SetEctypeVar(-1, 1, $total)
//		BC( "screen", "player", -1, "GUID:04270000000"$total)

		if $total == 19
			StartEctypeTimer($ectype_id,0)
			BC( "chat", "player", -1, "The Enchanted Fae Portal is going to open.")
		endif
	
		
		
	}