	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/28
	//		Author:???
	//		TaskName:Pet-Item-63527.s
	//		TaskID:
	//****************************************
	
	function OnUseItem(){
		
		$result = HasBattlePet( -1 )
		if $result != 0
			BC( "screen", "player", -1, "You don't have a pet for combat." )
			return
		endif
		
		$a = InitPetPoint( -1 )
		if $a == 0
			SubPlayerInfo ( -1 , "item" , 63527 , 1 )
			BC( "screen", "player", -1, "Pet's attributes have been reset." )
			return
		endif
		
	}

