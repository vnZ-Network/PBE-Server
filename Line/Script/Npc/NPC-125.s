 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/6/23
	//		Author:???
	//		TaskName:NPC-125.s
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
		
		if $a == 0
			NPCAction( -1 , 125 , dead , 1 )
			UseSkill( -1 , 8670 , 1 )
			SetPlayerVar( -1 , 3689 , 1 )
		else
			BC( "dialogbox", "player", -1, "Follow the order of 'red, blue, then the passage control' to activate the switch!" )
		endif
	}
	