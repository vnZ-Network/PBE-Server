//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/06/21
	//		Author:???
	//		TaskName:ITEM-44267.s
	//		TaskID:?????????
	//****************************************
	
	// 131 ???????????
	// 132 ???????????
	// 133 ???????????
	// 134 ??????????ID
	// 135 ??????????ID
	// 136 ??????????ID
	
	function OnUseItem(){
		
		$Now_Minute =  GetSystemTime( "minute")
		$Now_Hour =  GetSystemTime( "hour" )
		$Now_Week =  GetSystemTime( "week" )

		//????????
		$daoju1 = GetGlobalVar(131)
		$daoju2 = GetGlobalVar(132)
		$daoju3 = GetGlobalVar(133)
		$guai1 = GetGlobalVar(134)
		$guai2 = GetGlobalVar(135)
		$guai3 = GetGlobalVar(136)
		
		//???????????ID
		if $guai1 == 1
			$showguai1 = 10411
		endif
		if $guai1 == 2
			$showguai1 = 10413
		endif
		if $guai1 == 3
			$showguai1 = 10412
		endif
		if $guai1 == 4
			$showguai1 = 10028
		endif
		if $guai1 == 5
			$showguai1 = 10027
		endif
		
		//???????????ID
		if $guai2 == 1
			$showguai2 = 10029
		endif
		if $guai2 == 2
			$showguai2 = 10042
		endif
		if $guai2 == 3
			$showguai2 = 10043
		endif
		if $guai2 == 4
			$showguai2 = 10047
		endif
		if $guai2 == 5
			$showguai2 = 10092
		endif
		
		//???????????ID
		if $guai3 == 1
			$showguai3 = 10094
		endif
		if $guai3 == 2
			$showguai3 = 10097
		endif
		if $guai3 == 3
			$showguai3 = 10075
		endif
		if $guai3 == 4
			$showguai3 = 10076
		endif
		if $guai3 == 5
			$showguai3 = 10077
		endif
		
		#itemname1 = "BOI Radio Repeater"
		#itemname2 = "Dorry's Cushion"
		#itemname3 = "Tata's Pajama"
		
		BC ("chat", "player", -1, "Monster Code: ", $showguai1, " Item: ", #itemname1, ",", " Quantity required: ", $daoju1 )
		BC ("chat", "player", -1, "Monster Code: ", $showguai2, " Item: ", #itemname2, ",", " Quantity required: ", $daoju2 )
		BC ("chat", "player", -1, "Monster Code: ", $showguai3, " Item: ", #itemname3, ",", " Quantity required: ", $daoju3 )
		
	}
	
		