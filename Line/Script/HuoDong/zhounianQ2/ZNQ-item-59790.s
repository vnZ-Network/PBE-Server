	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/07
	//		Author:???
	//		TaskName:????????
	//		TaskID:
	//
	//****************************************
	//59790	????????
	//59791	??????
	//59792	????
	//59793	????
	//59794	????
	
	function OnUseItem(){
		
		$Now_week =  GetSystemTime( "week" )
		$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
		
		if $nullitem < 2
			BC( "screen", "player", -1, "You do not have enough space in your bag.")
		else
			$result = SubPlayerInfo( -1, "item", 59790 ,1)
			if $result == 0
				BC( "screen" , "player" , -1 , "You open the mysterious chest of Milla." )
				AddPlayerInfo( -1, "item", 59791 ,1)
				if $Now_week == 6
					AddPlayerInfo( -1, "item", 59794 ,1)
				else
					AddPlayerInfo( -1, "item", 59792 ,1)
				endif
				$rand = RandomNumber( 0, 999 )
				if $rand < 20
					AddPlayerInfo( -1, "item", 59793 ,1)
				endif
			endif
		endif
	}