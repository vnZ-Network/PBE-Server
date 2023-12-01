	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/1/5
	//		Author:??
	//		TaskName:NPC-tansuoshengwang18.s
	//		TaskID:????????NPC18(??)
	//
	//****************************************
	
	function OnRequest(){
	
		
		
	}
	//65251 1?
	function OnOption0(){
			
		//????
		$count = GetPlayerInfo( -1, "item", 65251)
		if $count < 1
			BC( "dialogbox", "player", -1, "Insufficient {#ff206100=Gold Apple#}." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 65251, 1)
		//??????
		if $result == 0
			AddPlayerInfo( -1, "prestige", 6 , 1 )
		endif
	
	}
	
	
	//65251 10?
	function OnOption1(){
			
		//????
		$count = GetPlayerInfo( -1, "item", 65251)
		if $count < 10
			BC( "dialogbox", "player", -1, "Insufficient {#ff206100=Gold Apple#}." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 65251, 10)
		//??????
		if $result == 0
			AddPlayerInfo( -1, "prestige", 6 , 20 )
		endif
	
	}
	
	//65252 1?
	function OnOption2(){
			
		//????
		$count = GetPlayerInfo( -1, "item", 65252)
		if $count < 1
			BC( "dialogbox", "player", -1, "Insufficient {#ff206100=Medusa's Eye#}." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 65252, 1)
		//??????
		if $result == 0
			AddPlayerInfo( -1, "prestige", 6 , 2 )
		endif
	
	}
	

	//65252 10?
	function OnOption3(){
			
		//????
		$count = GetPlayerInfo( -1, "item", 65252)
		if $count < 10
			BC( "dialogbox", "player", -1, "Insufficient {#ff206100=Medusa's Eye#}." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 65252, 10)
		//??????
		if $result == 0
			AddPlayerInfo( -1, "prestige", 6 , 30 )
		endif
	
	}