	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/1/4
	//		Author:??
	//		TaskName:NPC-mofaxueyuan191.s
	//		TaskID:191NPC??
	//
	//****************************************
	
	function OnRequest(){
	
		//??????
		$count = GetPlayerInfo( -1, "item" , 6019)
		if $count != 13
			DisableNpcOption(0)
			return
		endif
		$count = GetPlayerInfo( -1, "item" , 6020)
		if $count != 13
			DisableNpcOption(0)
			return
		endif
		$count = GetPlayerInfo( -1, "item" , 6021)
		if $count != 13
			DisableNpcOption(0)
			return
		endif
	}

	//????.???
	function OnOption0(){
	
		$a1 = GetServerVar(900)
		$a2 = GetServerVar(901)
		$a3 = GetServerVar(902)
		$a4 = GetServerVar(903)
		$a5 = GetServerVar(904)
		$a6 = GetServerVar(905)
		$a7 = GetServerVar(906)
		$a8 = GetServerVar(907)
		$a9 = GetServerVar(908)
		$a10 = GetServerVar(909)
		$a11 = GetServerVar(910)
		$a12 = GetServerVar(911)
		$a13 = GetServerVar(912)
		$a14 = GetServerVar(913)
		$a15 = GetServerVar(914)
		
		BC( "dialogbox", "player", -1, "What you will see is the greatest secret in the universe of Battle of Immortals. All the info shown below is highly confidential:","SL:",$a1," CB1:",$a2," CB2:",$a3," EM:",$a4," SS:",$a5," LM:",$a6," JZ:",$a7," YJ:",$a8," MF:",$a9," XS1:",$a10," XS2:",$a11," XS3:",$a12," YS:",$a13," HA:",$a14, " LS:",$a15 )
		
	}