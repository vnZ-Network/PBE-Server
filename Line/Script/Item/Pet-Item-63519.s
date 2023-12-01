	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/28
	//		Author:???
	//		TaskName:Pet-Item-63519.s
	//		TaskID:???????
	//****************************************
	
	function OnUseItem(){
	
		$b = GetPlayerVar( -1 , 3234 )
		$b = $b + 1
		if $b > 3
			BC( "screen", "player", -1, "This Pet Slot Extension is expired. It has already been used 3 times." )
			return
		endif
		$a = AddPetExtraGrid( -1 , 1 )
		if $a == 0
			SubPlayerInfo ( -1 , "item" , 63519 , 1 )
			SetPlayerVar( -1 , 3234 , $b )
			BC( "screen", "player", -1, "You have used a Pet Slot Extension. You may now carry more pets." )
			return
		endif
	}

