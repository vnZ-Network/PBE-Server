	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/27
	//		Author:???
	//		TaskName:Ectype-elinggubao-Item-63722.s
	//		TaskID:????????
	//
	//****************************************
	
	
	function OnUseItem(){
				
		$prestige = GetPlayerInfo( -1, "prestige", 9 )
		if $prestige >= 30000
			BC( "screen", "player", -1, "You already have as much Reputation as you can, adventurer!" )
			return
		endif

		$info = SubPlayerInfo ( -1 , "item" , 63722 , 1 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1 , "prestige" , 9 , 5 )
		
		
	}	