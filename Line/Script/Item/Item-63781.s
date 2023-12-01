	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/07/21
	//		Author:???
	//		TaskName:Item-63781.s
	//		TaskID:52PK????(??)???
	//
	//****************************************
	
	
	function OnUseItem(){
	

		$a = GetPlayerVar( -1 ,88 )
		
		if $a == 0
		
		//????
			$info = SubPlayerInfo ( -1 , "item" , 63781 , 1 )
			if  $info != 0
				return
			endif
		
		
		//????
			AddPlayerInfo( -1, "item" , 36598 , 1 )
				BC( "screen", "player", -1, "N/A????52PK????(??)" )
				SetPlayerVar( -1 ,88, 1 )
		else
			BC( "screen", "player", -1, "N/A?????52PK????(??)???" )
		endif
		
		
	}	