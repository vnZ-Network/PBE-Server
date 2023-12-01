	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/16
	//		Author:???
	//		TaskName:ITEM-59323.s
	//		TaskID:????
	//
	//****************************************
	
	
	function OnUseItem(){
		
		$time = GetPlayerVar( -1 , 4000 )
		
		$nowtime = GetSystemTime( "yday")
		$nowtime = $nowtime + 1
		
		$round = GetPlayerVar( -1 , 4001)
		
		if $time == $nowtime
		
			if $round < 1000
			
				//????
				$del = SubPlayerInfo( -1, "item", 59323, 1 )
				if $del != 0
					return
				endif
				
				//????
				AddPlayerInfo( -1, "money", 100000 )
			
			
			$round = $round + 1
				
				SetPlayerVar(-1 , 4001	, $round)
				BC( "screen", "player", -1, "Every day you can use Gold Coin Packs. You have used ",$round," Gold Coin Packs today." )
			
			else
			
				BC( "screen", "player", -1, "You have already used your 1000 Gold Coin Pack today, and can not use it anymore." )
				return
			endif

		else
		
			$del = SubPlayerInfo ( -1 , "item" , 59323 , 1 )
			if  $del != 0
				return
			endif

			AddPlayerInfo( -1, "money", 100000 )
	
			BC( "screen", "player", -1, "Every day you can use the 1000 Gold Coin Pack. Now you have used the first one." )
			SetPlayerVar( -1 ,4000, $nowtime )
			SetPlayerVar( -1 ,4001, 1 )
		endif
			
						
	}