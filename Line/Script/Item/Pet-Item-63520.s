	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/28
	//		Author:???
	//		TaskName:Pet-Item-63520.s
	//		TaskID:?????????
	//****************************************
	
	function OnUseItem(){
		
		$result = HasBattlePet( -1 )
		if $result != 0
			BC( "screen", "player", -1, "You don't have a pet for combat." )
			return
		endif
		$nfo = SubPlayerInfo ( -1 , "item" , 63520 , 1 )
		if $nfo != 0
			return
		endif
		SetPetGender( -1 , 0 )
		BC( "screen", "player", -1, "Your pet is male now." )
	}

