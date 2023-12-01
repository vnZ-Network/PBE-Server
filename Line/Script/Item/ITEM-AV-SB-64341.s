 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/6/25
	//		Author:???
	//		TaskName:ITEM-AV-SB-64341.s
	//		TaskID:???????
	//****************************************
	
	function OnUseItem(){
		
		$nullitem = GetPlayerInfo ( -1 , "nullitem" , 0  )
		if $nullitem < 1
			BC( "screen", "player", -1 , "Your bag is full!")
			return
		endif
		
		$info = SubPlayerInfo ( -1 , "item" , 64341 , 1 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1, "item" , 60014 , 30 )
	}