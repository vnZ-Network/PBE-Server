	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/07/21
	//		Author:???
	//		TaskName:Item-63780.s
	//		TaskID:??????(??)???
	//
	//****************************************
	
	
	function OnUseItem(){
	

		$a = GetPlayerVar( -1 ,87 )
		
		if $a == 0
		
		//????
			$info = SubPlayerInfo ( -1 , "item" , 63780 , 1 )
			if  $info != 0
				return
			endif
		
		
		//????
			AddPlayerInfo( -1, "item" , 36597 , 1 )
				BC( "screen", "player", -1, "N/A??????????(??)" )
				SetPlayerVar( -1 ,87, 1 )
		else
			BC( "screen", "player", -1, "N/A???????????(??)???" )
		endif
		
		
	}	