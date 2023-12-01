	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/28
	//		Author:???
	//		TaskName:Pet-Item-63555.s
	//		TaskID:???????
	//****************************************
	
	function OnUseItem(){
	
		$b = GetPlayerVar( -1 , 3234 )
		$b = $b + 1
		if $b > 3
			BC( "screen", "player", -1, "This Pet Stash Extension is expired. It has been used 3 times already." )
			return
		endif
		$a = AddPetExtraGrid( -1 , 1 )
		if $a == 0
			SubPlayerInfo ( -1 , "item" , 63555 , 1 )
			SetPlayerVar( -1 , 3234 , $b )
			BC( "screen", "player", -1, "You have used a Pet Stash Extension. You may now carry more pets." )
			return
		endif
	}

