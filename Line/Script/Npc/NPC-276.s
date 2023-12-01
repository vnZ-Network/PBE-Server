	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/06/23
	//		Author:???
	//		TaskName:NPC-276.s
	//		TaskID:????
	//
	//****************************************
	
	function OnRequest(){	
		
		$TaskAc = IsTaskAccept( -1 , 1638 )
		if $TaskAc != 0
			DisableNpcOption(0)
		endif
		$TaskAc1 = IsTaskDone( -1 , 1639 )
		if $TaskAc1 != 0
			DisableNpcOption(0)
		endif
		$info = GetPlayerInfo( -1 , "item" , 12600 )
		if $info > 0
			DisableNpcOption(0)
		endif
		
	}
	function OnOption0(){
		
		$TaskAc = IsTaskAccept( -1 , 1638 )
		if $TaskAc != 0
			return
		endif
		
		$info = GetPlayerInfo( -1 , "item" , 12600 )
		if $info > 0
			BC( "dialogbox", "player", -1, "You have already acquired Angkor Warrior clothing. You cannot acquire it again." )
		else
			AddPlayerInfo ( -1 ,"item",12600, 1 )
		endif
	}
	
	
	