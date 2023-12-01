 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/8/6
	//		Author:???|???
	//		TaskName:Monster-44007.s
	//		TaskID:????????
	//****************************************
	
	function OnDead(){
	
		DropMonsterItems( -1 , 60084 )
		
		$nullitem = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $nullitem < 1
			BC( "screen", "player", -1, "Your bag's full, you can't collect Achinoth's Soulshard!")
			BC( "messagebox", "player", -1, "Your bag's full, you can't collect Achinoth's Soulshard!")
			return
		endif
		
		AddPlayerInfo( -1 , "item" , 54078 , 1 )
		
	}