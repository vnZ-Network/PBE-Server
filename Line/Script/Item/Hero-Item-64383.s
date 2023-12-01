	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/8/28
	//		Author:???
	//		TaskName:Hero-Item-64383.s
	//		TaskID:????
	//****************************************
	
	function OnUseItem(){
		
		$a = GetPlayerVar( -1 , 25 )
		if $a == 1
			BC( "screen", "player", -1, "You have already used Fruit of Potential. You cannot use it again." )
			return
		endif
		$nfo = SubPlayerInfo ( -1 , "item" , 64383 , 1 )
		if $nfo != 0
			return
		endif
		AddPotential( -1  , 10 )
		SetPlayerVar( -1 , 25 , 1 )
		BC( "screen", "player", -1, "You gained 10 Potential points!" )
	}

