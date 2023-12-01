	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/07/21
	//		Author:???
	//		TaskName:Item-63774.s
	//		TaskID:173???????
	//
	//****************************************
	
	
	function OnUseItem(){
	

		$a = GetPlayerVar( -1 ,81 )
		
		if $a == 0
		
		//????
			$info = SubPlayerInfo ( -1 , "item" , 63774 , 1 )
			if  $info != 0
				return
			endif
		
		
		//????
			AddPlayerInfo( -1, "item" , 36591 , 1 )
				BC( "screen", "player", -1, "N/A????173????" )
				SetPlayerVar( -1 ,81, 1 )
		else
			BC( "screen", "player", -1, "N/A?????173???????" )
		endif
		
		
	}	