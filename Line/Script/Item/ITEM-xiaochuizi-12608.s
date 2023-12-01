 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/1
	//		Author:???
	//		TaskName:ITEM-xiaochuizi-12608.s
	//		TaskID:???
	//****************************************
	
	function OnUseItem(){
	
		$mapid = GetPlayerInfo ( -1 , "mapid" )
		$x = GetPlayerInfo ( -1 , "mapposx" )
		$y = GetPlayerInfo ( -1 , "mapposy" )
		$n =  RandomNumber( 0 , 99 )
		$task = IsTaskAccept( -1 , 1586 )
		$Info = GetPlayerInfo ( -1 , "item" , 12609 )
		
		if $mapid != 21
			BC( "screen", "player", -1, "Unable to acquire Ice Stone outside the assigned location.")
			return
		endif
		
		if $task != 0
			BC( "screen", "player", -1, "You haven't acquired the excavation quest yet.")
			return
		endif
		
		if $Info > 5
			return
		endif
		
		if $x < 100
			BC( "screen", "player", -1, "Unable to acquire Ice Stone outside the assigned location.")
			return
		endif
				
		if $x > 104
			BC( "screen", "player", -1, "Unable to acquire Ice Stone outside the assigned location.")
			return
		endif
					
		if $y < 217
			BC( "screen", "player", -1, "Unable to acquire Ice Stone outside the assigned location.")
			return
		endif
					
		if $y > 225
			BC( "screen", "player", -1, "Unable to acquire Ice Stone outside the assigned location.")
			return
		endif
						
		if $n < 30				
			AddPlayerInfo ( -1 ,"item", 12609 , 1 )
			BC( "screen", "player", -1, "You have acquired Ice Stone")
			PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )	
		else
			BC( "screen", "player", -1, "You have found nothing.")		 
		endif
		
	}
							