	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/30
	//		Author:???
	//		TaskName:ITEM-59081.s
	//		TaskID:???????
	//
	//****************************************
	
	
	function OnUseItem(){
		
		$level = GetPlayerInfo( -1, "level" )
		
		//????????
		if $level < 45
			BC( "screen", "player", -1, "You level is lower than 45." )
			return	
		endif
		
		//????
		$del = SubPlayerInfo( -1 , "item" , 59081 , 1 )
		if $del != 0
			return
		endif
		
		//???
		$lv = GetPlayerInfo( -1 , "level" )
		$addexp1 = $lv * $lv
		$addexp2 = $addexp1 * 3
		$addexp3 = $lv * 4
		$addexp4 = $addexp3 - 76
		$addexp5 = $addexp4 / 100
		$addexp = $addexp2 * $addexp5
		
		AddPlayerInfo( -1 , "exp" , $addexp )
		
					
	}