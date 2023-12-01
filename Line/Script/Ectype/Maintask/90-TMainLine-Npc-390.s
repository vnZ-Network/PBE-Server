
	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/9/19
	//		Author:???
	//		TaskName:90-TMainLine-Npc-390.s
	//		TaskID:  
	//****************************************
	
	function OnRequest(){
	
		$result = IsTaskAccept( -1 , 154 )
		if $result != 0
			DisableNpcOption(0)
		endif
		$result = IsTaskDone( -1 , 154 )
		if $result != 0
			DisableNpcOption(1)
		endif
		
	}
		
	function OnOption0(){	
		$item = GetPlayerInfo( -1 , "item" , 12744 )
		$result = IsTaskAccept( -1 , 154 )
		if $result != 0
			return
		endif
		
		if $item == 0
			BC( "screen", "player", -1, "You need a challenge requisition to challenge Tutak!" ) 
			return
		else
			$del_count = SubPlayerInfo( -1, "item", 12744, 1 )
		endif		
		
		AddMonster( 55063 , 1 , 245 , 46 , 82 , 0  )
		
		
	}

	function OnOption1(){
	
		$result = IsTaskDone( -1 , 154 )
		if $result != 0
			return
		endif
		FlyToMap( -1 , 245 , 43 , 83 )
		
		
	}