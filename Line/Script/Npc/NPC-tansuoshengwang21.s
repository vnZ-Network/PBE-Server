	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/1/5
	//		Author:??
	//		TaskName:NPC-tansuoshengwang21.s
	//		TaskID:????????NPC21(??)
	//
	//****************************************
	
	function OnRequest(){
	
		
		
	}
	//65211 1?
	function OnOption0(){
			
		//????
		$count = GetPlayerInfo( -1, "item", 65211)
		if $count < 1
			BC( "dialogbox", "player", -1, "Insufficient {#ff206100=Zio Sand#}." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 65211, 1)
		//??????
		if $result == 0
			AddPlayerInfo( -1, "prestige", 1 , 1 )
		endif
	
	}
	
	
	//65211 10?
	function OnOption1(){
			
		//????
		$count = GetPlayerInfo( -1, "item", 65211)
		if $count < 10
			BC( "dialogbox", "player", -1, "Insufficient {#ff206100=Zio Sand#}." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 65211, 10)
		//??????
		if $result == 0
			AddPlayerInfo( -1, "prestige", 1 , 20 )
		endif
	
	}
	
	//65212 1?
	function OnOption2(){
			
		//????
		$count = GetPlayerInfo( -1, "item", 65212)
		if $count < 1
			BC( "dialogbox", "player", -1, "Insufficient {#ff206100=Gamera's Fur#}." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 65212, 1)
		//??????
		if $result == 0
			AddPlayerInfo( -1, "prestige", 1 , 2 )
		endif
	
	}
	

	//65212 10?
	function OnOption3(){
			
		//????
		$count = GetPlayerInfo( -1, "item", 65212)
		if $count < 10
			BC( "dialogbox", "player", -1, "Insufficient {#ff206100=Gamera's Fur#}." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 65212, 10)
		//??????
		if $result == 0
			AddPlayerInfo( -1, "prestige", 1 , 30 )
		endif
	
	}