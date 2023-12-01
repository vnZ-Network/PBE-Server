	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/23
	//		Author:???
	//		TaskName:ITEM-59125.s
	//		TaskID:????
	//
	//****************************************
	
	
	function OnUseItem(){
		
		$time =  GetSystemTime( "yday" )
		$lasttime = GetPlayerVar( -1 ,3744 )
		
		
		//????
		$level = GetPlayerInfo( -1, "level" )
		if $level < 80
			BC( "screen", "player", -1, "You have to be above LV80 to use it." )
			return
		endif
		
		
		//???????
		if $time == $lasttime
			BC( "screen", "player", -1, "You have already used a Savvy Fruit today." )
			return
		else
		//????
			$del = SubPlayerInfo ( -1 , "item" , 59125 , 1 )
			if  $del != 0
				return
			endif
		
		//????	
			$result = AddPlayerInfo( -1 , "exp" , 1000000 )
			SetPlayerVar( -1 ,3744 ,$time  )
			BC( "screen" , "player" , -1 , "You have acquired 100,000 EXP." )
		endif
		
								
	}