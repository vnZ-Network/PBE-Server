 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/6/23
	//		Author:???
	//		TaskName:NPC-127.s
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
		
		if $a == 2
			AddMonster( 40213 , 1 , 9 , 63 , 69 ,0 )
			PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			BC( "screen", "player", -1, "A rumbling sound has been heard from Angkor Temple Level 1. Something has happened there!" )
			SetTaskDone( -1 , 1642 )
			AddPlayerInfo( -1 , "exp", 114701 )
			AddPlayerInfo( -1 , "money", 5031 )
			SetPlayerVar( -1 , 3689 , 3 )
		else
			BC( "dialogbox", "player", -1, "Follow the order of 'red, blue, then the passage control' to activate the switch!" )
		endif
	}
	