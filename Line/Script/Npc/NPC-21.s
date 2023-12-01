 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/5/19
	//		Author:???
	//		TaskName:NPC-21.s
	//		TaskID:??????
	//****************************************
	
	function OnRequest(){
	
	$task = IsTaskAccept( -1,1489 )
	if $task != 0
		DisableNpcOption(0)
		DisableNpcOption(1)
	endif	
	
	$info1 = GetPlayerInfo( -1 , "item",12007)
	$info2 = GetPlayerInfo( -1 , "item",12008)
	if $info1 < 1
		if $info2 < 1
			DisableNpcOption(0)
		else
			DisableNpcOption(0)
		endif
	else
		if $info2 < 1
			DisableNpcOption(0)
		else
			DisableNpcOption(1)
		endif
	endif 
	
	}
	
	function OnOption0(){
		$info1 = GetPlayerInfo( -1 , "item",12007)
		$info2 = GetPlayerInfo( -1 , "item",12008)
		if $info1 < 1
			BC( "dialogbox", "player", -1, "You don't have the broadsword Tyresius now!" )
			return
		endif
		if $info2 < 1
			BC( "dialogbox", "player", -1, "You don't have Heart of the Statue now!" )
			return
		endif
		$del1 = SubPlayerInfo( -1 , "item",12007,1)
		if $del1 != 0
			return
		endif
		$del2 = SubPlayerInfo( -1 , "item",12008,1)
		if $del2 != 0
			return
		endif
		AddPlayerInfo( -1 , "item",12533,1)
		BC( "dialogbox", "player", -1, "You have acquired Matlock's Heart." )

	}
	
	function OnOption1(){
		BC( "dialogbox", "player", -1, "You need the broadsword Tyresius and the Heart of the Statue to trade for Matlock's Heart." )
	}