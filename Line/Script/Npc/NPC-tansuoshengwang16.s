	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/1/5
	//		Author:??
	//		TaskName:NPC-tansuoshengwang16.s
	//		TaskID:????????NPC16(??)
	//
	//****************************************
	
	function OnRequest(){
	
		
		
	}
	//65231 1?
	function OnOption0(){
			
		//????
		$count = GetPlayerInfo( -1, "item", 65231)
		if $count < 1
			BC( "dialogbox", "player", -1, "Insufficient {#ff206100=Broken Bharata Scroll#}." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 65231, 1)
		//??????
		if $result == 0
			AddPlayerInfo( -1, "prestige", 4 , 1 )
		endif
	
	}
	
	
	//65231 10?
	function OnOption1(){
			
		//????
		$count = GetPlayerInfo( -1, "item", 65231)
		if $count < 10
			BC( "dialogbox", "player", -1, "Insufficient {#ff206100=Broken Bharata Scroll#}." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 65231, 10)
		//??????
		if $result == 0
			AddPlayerInfo( -1, "prestige", 4 , 20 )
		endif
	
	}
	
	//65232 1?
	function OnOption2(){
			
		//????
		$count = GetPlayerInfo( -1, "item", 65232)
		if $count < 1
			BC( "dialogbox", "player", -1, "Insufficient {#ff206100=Broken Veda Scroll#}." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 65232, 1)
		//??????
		if $result == 0
			AddPlayerInfo( -1, "prestige", 4 , 2 )
		endif
	
	}
	

	//65232 10?
	function OnOption3(){
			
		//????
		$count = GetPlayerInfo( -1, "item", 65232)
		if $count < 10
			BC( "dialogbox", "player", -1, "Insufficient {#ff206100=Broken Veda Scroll#}." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 65232, 10)
		//??????
		if $result == 0
			AddPlayerInfo( -1, "prestige", 4 , 30 )
		endif
	
	}