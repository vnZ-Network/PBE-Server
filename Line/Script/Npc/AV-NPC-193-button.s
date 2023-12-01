	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/15
	//		Author:???
	//		TaskName:AV-NPC-193-button.s
	//		TaskID:????
	//
	//****************************************
	
	function OnRequest(){
		$PlayerVar = GetPlayerVar( -1, 3702 )
		if $PlayerVar == 0
			DisableNpcOption(0)
		endif
	}
	
	
	function OnOption0(){
		$PlayerVar = GetPlayerVar( -1, 3702 )
		if $PlayerVar == 23
			SetPlayerVar( -1, 3702, 3 )
			BC( "screen", "player", -1, "You pushed down the button. Click." )
			return
		else
			if $PlayerVar == 213
				SetPlayerVar( -1, 3702, 13 )
				BC( "screen", "player", -1, "You pushed down the button. Click." )
				return
			else
				if $PlayerVar == 21
					SetPlayerVar( -1, 3702, 1 )
					BC( "screen", "player", -1, "You pushed down the button. Click." )
					return
				else
					BC( "screen", "player", -1, "You pushed the wrong button and triggered the thunder." )
					UseSkill( -1, 8672, 1 )
					SetPlayerVar( -1, 3702, 0 )
					return
				endif
			endif
		endif
	}