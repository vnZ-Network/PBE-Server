
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/2/3
	//		Author:???
	//		TaskName:Swb-Mjmy-Npc-522.s
	//		TaskID:  ??
	//****************************************
	

	function OnRequest(){
		
		$Accept = IsTaskAccept( -1 , 217 )
		if $Accept != 0
			DisableNpcOption(0)
		endif
	
	}
	
	function OnOption0(){
		
		$Accept = IsTaskAccept( -1 , 217 )
		if $Accept != 0
			return
		endif
		$info = GetPlayerInfo( -1 , "item", 12779 )
		if $info > 0
				BC( "dialogbox", "player", -1, "You have got Mjollnir, Thor's Hammer" )
			return
		endif
		$no_bag = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $no_bag < 1
			BC( "dialogbox", "player", -1, "Your bag is full." )
			return
		endif
		
		AddPlayerInfo( -1 , "item", 12779 , 1 )
	}
