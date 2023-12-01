	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/02/16
	//		Author:???
	//		TaskName:NPC-huoqi.s
	//		TaskID:75 ?????
	//
	//****************************************
	
	function OnRequest(){
		DisableNpcOption(0)
		$player0 = GetPlayerInfo( -1, "level" )
		$result1 = HaveTitle( -1, 21 )
		if $player0 < 75
			if $result1 == 1
				DisableNpcOption(0)
			endif	
		endif
	
	}
	
	
	function OnOption0(){
		//------------????--------	
		$player1 = GetPlayerInfo( -1, "level" )
		if $player1 > 74
			//-----------????-------
			$result0 = HaveTitle( -1, 21 )
			if $result0 == 0
				//---------????--------
				$task1 = IsTaskNotActive( -1, 75 )
				if $task1 == 1
					//---------????----------
					$task2 = IsTaskDone( -1, 75 )
					if $task2 == 1
						//-----------????-------
						AcceptTask( -1, 75 )
					else
						BC( "dialogbox", "player", -1, "You have already finished the quest." )
						return
					endif
				else
					BC( "dialogbox", "player", -1, "You have already acquired the quest." )
					return
				endif
			else
				BC( "dialogbox", "player", -1, "You don't have the title 'Demi-god'." )
				return
			endif
		else
			BC( "dialogbox", "player", -1, "You are not LV75 yet." )
			return
		endif
	}