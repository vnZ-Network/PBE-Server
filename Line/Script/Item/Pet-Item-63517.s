	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/28
	//		Author:???
	//		TaskName:Pet-Item-63517.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
	
		$result = HasBattlePet( -1 )
		if $result != 0
			BC( "screen", "player", -1, "You don't have a pet for combat." )
			return
		endif
		$nfo = SubPlayerInfo ( -1 , "item" , 63517 , 1 )
		if $nfo != 0
			return
		endif
		$n = RandomNumber ( 0 , 9 )
		SetPetEssence( -1 , $n )
		
	}

