	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/28
	//		Author:???
	//		TaskName:Hero2-Item-64410.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
		
		$a = GetPlayerVar( -1 , 26 )
		if $a == 1
			BC( "screen", "player", -1, "You have already used Fruit of Potential. You cannot use it again." )
			return
		endif
		$nfo = SubPlayerInfo ( -1 , "item" , 64410 , 1 )
		if $nfo != 0
			return
		endif
		AddPotential( -1  , 10 )
		SetPlayerVar( -1 , 26 , 1 )
		BC( "screen", "player", -1, "You gained 10 Potential points!" )
	}

