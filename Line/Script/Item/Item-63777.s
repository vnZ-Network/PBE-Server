	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/07/21
	//		Author:???
	//		TaskName:Item-63777.s
	//		TaskID:52PK???????
	//
	//****************************************
	
	
	function OnUseItem(){
	

		$a = GetPlayerVar( -1 ,84 )
		
		if $a == 0
		
		//????
			$info = SubPlayerInfo ( -1 , "item" , 63777 , 1 )
			if  $info != 0
				return
			endif
		
		
		//????
			AddPlayerInfo( -1, "item" , 36594 , 1 )
				BC( "screen", "player", -1, "N/A????52PK????" )
				SetPlayerVar( -1 ,84, 1 )
		else
			BC( "screen", "player", -1, "N/A?????52PK???????" )
		endif
		
		
	}	