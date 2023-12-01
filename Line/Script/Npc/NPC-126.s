 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/6/23
	//		Author:???
	//		TaskName:NPC-126.s
	//		TaskID:????
	//
	//****************************************
	
	function OnRequest(){
		
		
		$task = IsTaskAccept( -1,1642 )
		if $task != 0
			DisableNpcOption(0)
		endif	
		
	}
	
	function OnOption0(){
		
		$a = GetPlayerVar( -1 , 3689 )
		
		$task = IsTaskAccept( -1 , 1642 )
		if $task != 0
			return
		endif	
		
		if $a == 1
			NPCAction( -1 , 126 , dead , 1 )
			UseSkill( -1 , 8671 , 1 )
			SetPlayerVar( -1 , 3689 , 2 )
		else
			BC( "dialogbox", "player", -1, "Follow the order of 'red, blue, then the passage control' to activate the switch!" )
		endif
	}
	