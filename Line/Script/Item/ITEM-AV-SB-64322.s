 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/6/15
	//		Author:???
	//		TaskName:ITEM-AV-SB-64322.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
	
		$a = GetPlayerInfo ( -1 , "nullitem" , 0  )
		$nullitem = GetPlayerInfo ( -1 , "nullitem" , 0  )
		if $nullitem < 1
			BC( "screen", "player", -1 , "Your bag is full!")
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 64322 , 1 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1, "item" , 64307, 2 )
	}