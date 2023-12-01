	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/07
	//		Author:???
	//		TaskName:HD-Pyramid-NPC-1807.s
	//		TaskID:????
	//
	//****************************************
	
	function OnRequest(){
		$ServerVarJ = GetServerVar( 80 )
		$PlayerVarInto = GetPlayerVar( -1, 3658 )
		$GameStart = GetServerVar( 75 )
		
		if $ServerVarJ != $PlayerVarInto
			DisableNpcOption(0)
		endif
		
		if $GameStart != 1
			DisableNpcOption(0)
		endif
	}
	
	
	function OnOption0(){
		$ServerVarJ = GetServerVar( 80 )
		$PlayerVarInto = GetPlayerVar( -1, 3658 )
		$GameStart = GetServerVar( 75 )
		$PlayerVarMap = GetPlayerVar( -1, 3659 )
		
		if $ServerVarJ != $PlayerVarInto
			BC( "dialogbox", "player", -1, "You haven't entered Pyramid illusion yet." )
			return
		endif
		
		if $GameStart != 1
			BC( "dialogbox", "player", -1, "Pyramid illusion is not shown yet." )
			return
		endif
		
		if $PlayerVarMap == 199
			FlyToMap( -1, 199, 94, 29 )
			return
		endif
		if $PlayerVarMap == 200
			FlyToMap( -1, 200, 30, 29 )
			return
		endif
		if $PlayerVarMap == 201
			FlyToMap( -1, 201, 31, 28 )
			return
		endif
		if $PlayerVarMap == 202
			FlyToMap( -1, 202, 35, 93 )
			return
		endif
		
	}
	
	function OnOption1(){
		$FlyX = 71
		$FlyY = 38
		FlyToMap( -1, 475, $FlyX, $FlyY )
	}