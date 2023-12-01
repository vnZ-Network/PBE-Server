	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/5/18
	//		Author:???
	//		TaskName:ITEM-title-33.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnUseItem(){
	
		$info = SubPlayerInfo ( -1 , "item" , 12550 , 1 )
		if  $info != 0
			return
		endif
		AddTitle( -1 ,33 )
		BC( "screen", "player", -1, "You have acquired the title 'Nile River Warrior.'" )
	}
	