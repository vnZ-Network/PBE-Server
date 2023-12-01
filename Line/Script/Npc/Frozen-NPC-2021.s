	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/7/20
	//		Author:???
	//		TaskName:Frozen-NPC-2021.s
	//		TaskID: ??????
	//
	//****************************************
	
	function OnRequest(){
	
		$line = GetServerLineID()
		if $line != 4
			DisableNpcOption(0)
		endif
		
	}
	
	function OnOption0(){
	
		$line = GetServerLineID()
		if $line != 4
			return
		endif
		$no_bag = GetPlayerInfo( -1 , "nullitem" , 0 )
		if $no_bag < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		$info = GetPlayerInfo( -1 , "item" , 63522 )
		if $info < 25
			BC( "dialogbox", "player", -1, "You need 25 Glory Medals for Glacier Logistics." )
			return
		endif
		$info = SubPlayerInfo( -1 , "item" , 63522 , 25 )
		if $info != 0
			return
		endif
		AddPlayerInfo( -1 , "item" , 63475 , 1 )
	}
	
	
