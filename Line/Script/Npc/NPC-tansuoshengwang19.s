	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/1/5
	//		Author:??
	//		TaskName:NPC-tansuoshengwang19.s
	//		TaskID:????????NPC19(??)
	//
	//****************************************
	
	function OnRequest(){
	
		
		
	}
	//65241 1?
	function OnOption0(){
			
		//????
		$count = GetPlayerInfo( -1, "item", 65241)
		if $count < 1
			BC( "dialogbox", "player", -1, "Insufficient {#ff206100=Embossed Sphinx Slate#}." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 65241, 1)
		//??????
		if $result == 0
			AddPlayerInfo( -1, "prestige", 5 , 1 )
		endif
	
	}
	
	
	//65241 10?
	function OnOption1(){
			
		//????
		$count = GetPlayerInfo( -1, "item", 65241)
		if $count < 10
			BC( "dialogbox", "player", -1, "Insufficient {#ff206100=Embossed Sphinx Slate#}." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 65241, 10)
		//??????
		if $result == 0
			AddPlayerInfo( -1, "prestige", 5 , 20 )
		endif
	
	}
	
	//65242 1?
	function OnOption2(){
			
		//????
		$count = GetPlayerInfo( -1, "item", 65242)
		if $count < 1
			BC( "dialogbox", "player", -1, "Insufficient {#ff206100=Solar Bird Feather#}." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 65242, 1)
		//??????
		if $result == 0
			AddPlayerInfo( -1, "prestige", 5 , 2 )
		endif
	
	}
	

	//65242 10?
	function OnOption3(){
			
		//????
		$count = GetPlayerInfo( -1, "item", 65242)
		if $count < 10
			BC( "dialogbox", "player", -1, "Insufficient {#ff206100=Solar Bird Feather#}." )
			return
		endif
		
		$result = SubPlayerInfo( -1, "item", 65242, 10)
		//??????
		if $result == 0
			AddPlayerInfo( -1, "prestige", 5 , 30 )
		endif
	
	}