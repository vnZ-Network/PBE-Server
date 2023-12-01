	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/1/5
	//		Author:??
	//		TaskName:NPC-tansuoshengwang17.s
	//		TaskID:????????NPC17(??)
	//
	//****************************************
	
	function OnRequest(){
	
		
		
	}
	//65221 1?
	function OnOption0(){
			
		//????
		$count = GetPlayerInfo( -1, "item", 65221)
		if $count < 1
			BC( "dialogbox", "player", -1, "Insufficient {#ff206100=Movement of Anthem#}." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 65221, 1)
		//??????
		if $result == 0
			AddPlayerInfo( -1, "prestige", 3 , 1 )
		endif
	
	}
	
	
	//65221 10?
	function OnOption1(){
			
		//????
		$count = GetPlayerInfo( -1, "item", 65221)
		if $count < 10
			BC( "dialogbox", "player", -1, "Insufficient {#ff206100=Movement of Anthem#}." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 65221, 10)
		//??????
		if $result == 0
			AddPlayerInfo( -1, "prestige", 3 , 20 )
		endif
	
	}
	
	//65222 1?
	function OnOption2(){
			
		//????
		$count = GetPlayerInfo( -1, "item", 65222)
		if $count < 1
			BC( "dialogbox", "player", -1, "Insufficient {#ff206100=Silver Goblet#}." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 65222, 1)
		//??????
		if $result == 0
			AddPlayerInfo( -1, "prestige", 3 , 2 )
		endif
	
	}
	

	//65222 10?
	function OnOption3(){
			
		//????
		$count = GetPlayerInfo( -1, "item", 65222)
		if $count < 10
			BC( "dialogbox", "player", -1, "Insufficient {#ff206100=Silver Goblet#}." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 65222, 10)
		//??????
		if $result == 0
			AddPlayerInfo( -1, "prestige", 3 , 30 )
		endif
	
	}