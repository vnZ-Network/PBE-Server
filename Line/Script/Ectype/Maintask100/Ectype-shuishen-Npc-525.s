	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/05
	//		Author:???
	//		TaskName:Ectype-shuishen-Npc-525.s
	//		TaskID:??????
	//
	//****************************************
	//
	function OnRequest(){
		
		//?????????????
		
		$ectype_ID = GetEctypeID( -1, 265 )
		if $ectype_ID > 0
			DisableNpcOption(0)
		else
			DisableNpcOption(1)
		endif
		
		$Task = IsTaskAccept( -1, 241 )
		if $Task != 0
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		
	}
	
	function OnOption0(){
		
		$temp_level = GetPlayerInfo( -1, "level" )
		if $temp_level < 100
			BC( "dialogbox", "player", -1, "How dare you came to challenge me under level 100?" )
			return
		endif
		
		$Task = IsTaskAccept( -1, 241 )
		if $Task != 0
			BC( "dialogbox", "player", -1, "Why are you here? Do you want to die?" )
			return
		endif
		
		$is_succeed = FlyToEctype( -1, 265, 63, 81 )
		
		if $is_succeed > 0
			SetPlayerVar( -1, 3816, $is_succeed )
			BC( "screen", "player", -1, "Hypnos brought you to a place that resembles Hades' Temple, but it is an illusion." )
			//????ID
			$ectype_ID = GetEctypeID( -1, 265 )
			StartEctypeTimer( -1, 265, 0 )
		else
			BC( "dialogbox", "player", -1, "Instance is currently full. Please try again later or switch realms." )
			return
		endif
		
	}
	
	function OnOption1(){
		
		$ectype_ID = GetEctypeID( -1, 265 )
		//????ID
		$ectype_UID = GetEctypeUniqueID( -1, 265 )
		$player_number = GetMapPlayerCount( $ectype_ID )
		if $player_number >= 1
			BC( "dialogbox", "player", -1, "Instance is full." )
			return
		endif
		
		$temp_level = GetPlayerInfo( -1, "level" )
		if $temp_level < 100
			BC( "dialogbox", "player", -1, "How dare you came to challenge me under level 100?" )
			return
		endif
		
		//-----------------------------------------------------------------------------------
		if $ectype_ID == 0
			BC( "dialogbox", "player", -1, "No instance to return to." )
			return
		endif
		
		$Player_UID = GetPlayerVar( -1, 3816 )
		if $Player_UID != $ectype_UID
			BC( "dialogbox", "player", -1, "I have to admit that you're strong." )
			return
		endif
				
		//-----------------------------------------------------------------------------------
		$is_succeed = FlyToEctype( -1, 265, 63, 81 )
		if $is_succeed > 0
			//??????
				$Player_UID = GetPlayerVar( -1, 3816 )
				//??????????????
				if $Player_UID == $ectype_UID
					//?????,?????
					BC( "screen", "player", -1, "You went back to Temple of Osiris' Vacuity." )
					return
				endif
		else
			BC( "dialogbox", "player", -1, "Instance is full. Failed to enter." )
			//???????
		endif
		
	}
	