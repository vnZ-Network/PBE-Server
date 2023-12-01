 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/6/25
	//		Author:???
	//		TaskName:ITEM-AV-SB-64343.s
	//		TaskID:????
	//****************************************
	
	
	function OnUseItem(){
		
		$result = HaveTitle( -1 , 45 )
		if $result == 0
			BC( "screen", "player", -1, "You are not LV60 yet!" )
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 64343 , 1 )
		if  $info != 0
			return
		endif
		AddTitle( -1 , 45 )
	}