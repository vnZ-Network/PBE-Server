	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/05
	//		Author:???
	//		TaskName:Ectype-shuishen-Npc-524.s
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
		
		$item = GetPlayerInfo( -1, "item", 59269 )
		if $item > 0
			DisableNpcOption(2)
		endif
		
		$Done = IsTaskDone( -1, 241 )
		if $Done != 0
			DisableNpcOption(2)
		endif
		
		$temp_level = GetPlayerInfo( -1, "level" )
		if $temp_level < 100
			DisableNpcOption(2)
		endif
		
		$God_level = GetGodLevel( -1 )
		if $God_level < 10
			DisableNpcOption(2)
		endif
		
		if $God_level > 10
			DisableNpcOption(2)
		endif
		
	}
	
	function OnOption0(){
		
		$temp_level = GetPlayerInfo( -1, "level" )
		if $temp_level < 100
			BC( "dialogbox", "player", -1, "How dare you came to challenge me under level 100?" )
			return
		endif
		
		$in_team = IsPlayerInTeam(-1)
		if $in_team == 0
			BC( "dialogbox", "player", -1, "Are you afraid to fight me alone, so you brought friends?" )
			return
		endif
		
		$Team = GetTeamMemberCount( -1 )
		if $Team > 1
			BC( "dialogbox", "player", -1, "Are you afraid to fight me alone, so you brought friends?" )
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
			$player_Var1 = GetPlayerVar( -1, 3246 )
			$player_id = GetPlayerID()
			SetEctypeVar( $ectype_ID, 119, $player_id )
			SetEctypeVar( -1, 0, $player_Var1 )
		else
			BC( "dialogbox", "player", -1, "Error, please try later or switch realm!" )
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
				$player_id = GetPlayerID()
				SetEctypeVar( $ectype_ID, 119, $player_id )
				//??????????????
				if $Player_UID == $ectype_UID
					//?????,?????
					BC( "screen", "player", -1, "You went back to Temple of Osiris' Vacuity." )
					return
				endif
		else
			BC( "dialogbox", "player", -1, "Error, please try later or switch realm!" )
			//???????
		endif
		
	}
	
	function OnOption2(){
		//???????
		$ectype_ID = GetEctypeID( -1, 265 )
				
		$temp_level = GetPlayerInfo( -1, "level" )
		if $temp_level < 100
			BC( "dialogbox", "player", -1, "Can't receive under level 100" )
			return
		endif
		
		//?????????59629???
		$item = GetPlayerInfo( -1, "item", 59269 )
		if $item > 0
			BC( "dialogbox", "player", -1, "You have received Hypnos' Will!" )
			return
		endif
		
		$Done = IsTaskDone( -1, 241 )
		if $Done != 0
			BC( "dialogbox", "player", -1, "Can't receive Hypnos' Will without passing the test!" )
			return
		endif
		
		$temp_level = GetPlayerInfo( -1, "level" )
		if $temp_level < 100
			BC( "dialogbox", "player", -1, "Can't receive Hypnos' Will under level 100!" )
			return
		endif
		
		$God_level = GetGodLevel( -1 )
		if $God_level < 10
			BC( "dialogbox","player",-1,"Your Status is too low to receive Hypnos' Will!")
			return
		endif
		
		if $God_level > 10
			BC( "dialogbox","player",-1,"You're a Meso Demigod but can't receive Hypnos' Will!")
			return
		endif
				
		$Bag_count = GetPlayerInfo(-1,"nullitem",0)
		if $Bag_count < 1 
			BC( "dialogbox","player",-1,"Insufficient space in your bag.")
			return
		endif
				
		AddPlayerInfo( -1, "item", 59269, 1 )
		
	}
	