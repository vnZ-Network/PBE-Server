	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/1/5
	//		Author:??
	//		TaskName:NPC-tansuoshengwang20.s
	//		TaskID:????????NPC20(??)
	//
	//****************************************
	
	function OnRequest(){
	
		
		
	}
	//65201 1?
	function OnOption0(){
			
		//????
		$count = GetPlayerInfo( -1, "item", 65201)
		if $count < 1
			BC( "dialogbox", "player", -1, "Insufficient {#ff206100=Sculpture Chisel#}." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 65201, 1)
		//??????
		if $result == 0
			AddPlayerInfo( -1, "prestige", 2 , 1 )
		endif
	
	}
	
	
	//65201 10?
	function OnOption1(){
			
		//????
		$count = GetPlayerInfo( -1, "item", 65201)
		if $count < 10
			BC( "dialogbox", "player", -1, "Insufficient {#ff206100=Sculpture Chisel#}." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 65201, 10)
		//??????
		if $result == 0
			AddPlayerInfo( -1, "prestige", 2 , 20 )
		endif
	
	}
	
	//65202 1?
	function OnOption2(){
			
		//????
		$count = GetPlayerInfo( -1, "item", 65202)
		if $count < 1
			BC( "dialogbox", "player", -1, "Insufficient {#ff206100=Eye of the Statue#}." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 65202, 1)
		//??????
		if $result == 0
			AddPlayerInfo( -1, "prestige", 2 , 2 )
		endif
	
	}
	

	//65202 10?
	function OnOption3(){
			
		//????
		$count = GetPlayerInfo( -1, "item", 65202)
		if $count < 10
			BC( "dialogbox", "player", -1, "Insufficient {#ff206100=Eye of the Statue#}." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 65202, 10)
		//??????
		if $result == 0
			AddPlayerInfo( -1, "prestige", 2 , 30 )
		endif
	
	}