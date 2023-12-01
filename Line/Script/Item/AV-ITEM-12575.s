	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/20
	//		Author:???
	//		TaskName:AV-ITEM-12575.s
	//		TaskID:?????????
	//
	//****************************************
	
	function OnUseItem(){		
		$player0 = GetPlayerInfo( -1, mapid )
		$player1 = GetPlayerInfo( -1, mapposx )
		$player2 = GetPlayerInfo( -1, mapposy )
		if $player0 != 160
			BC( "screen", "player", -1, "It must be used in Darkflame Temple." )
			return
		endif
		//----------------????------------------
		if $player1 >= 204
			if $player1 <= 218
				if $player2 >= 89
					if $player2 <= 103
						$result = SubPlayerInfo( -1, "item", 12575, 1 )
						if $result != 0
							return
						endif
						AddPlayerInfo( -1, "item", 12485, 1 )
						return
					endif
				endif
			endif
		endif
		//----------------????------------------
		if $player1 < 204
			if $player1 >= 199
				PlayEffect( -1, "script\radar_level_4.ini" )
				BC( "screen", "player", -1, "Beep!Beep!Beep!Beep!Beep!" )
			endif	
		endif
		if $player1 > 218
			if $player1 <= 223
				PlayEffect( -1, "script\radar_level_4.ini" )
				BC( "screen", "player", -1, "Beep!Beep!Beep!Beep!Beep!" )
			endif	
		endif
		
		if $player2 < 89
			if $player2 >= 84
				PlayEffect( -1, "script\radar_level_4.ini" )
				BC( "screen", "player", -1, "Beep!Beep!Beep!Beep!Beep!" )
			endif	
		endif
		if $player2 > 103
			if $player2 <= 108
				PlayEffect( -1, "script\radar_level_4.ini" )
				BC( "screen", "player", -1, "Beep!Beep!Beep!Beep!Beep!" )
			endif
		endif
		//----------???-------------------
		if $player1 < 199
			if $player1 >= 184
				PlayEffect( -1, "script\radar_level_3.ini" )
				BC( "screen", "player", -1, "Beep~Beep~Beep~Beep~Beep~" )
			endif	
		endif
		if $player1 > 223
			if $player1 <= 238
				PlayEffect( -1, "script\radar_level_3.ini" )
				BC( "screen", "player", -1, "Beep~Beep~Beep~Beep~Beep~" )
			endif	
		endif
		
		if $player2 < 84
			if $player2 >= 69
				PlayEffect( -1, "script\radar_level_3.ini" )
				BC( "screen", "player", -1, "Beep~Beep~Beep~Beep~Beep~" )
			endif	
		endif
		if $player2 > 108
			if $player2 <= 123
				PlayEffect( -1, "script\radar_level_3.ini" )
				BC( "screen", "player", -1, "Beep~Beep~Beep~Beep~Beep~" )
			endif
		endif
		//--------------???---------------
		if $player1 < 184
			if $player1 >= 169
				PlayEffect( -1, "script\radar_level_2.ini" )
				BC( "screen", "player", -1, "Beep~~Beep~~Beep~~" )
			endif	
		endif
		if $player1 > 238
			if $player1 <= 253
				PlayEffect( -1, "script\radar_level_2.ini" )
				BC( "screen", "player", -1, "Beep~~Beep~~Beep~~" )
			endif	
		endif
		
		if $player2 < 69
			if $player2 >= 54
				PlayEffect( -1, "script\radar_level_2.ini" )
				BC( "screen", "player", -1, "Beep~~Beep~~Beep~~" )
			endif	
		endif
		if $player2 > 123
			if $player2 <= 138
				PlayEffect( -1, "script\radar_level_2.ini" )
				BC( "screen", "player", -1, "Beep~~Beep~~Beep~~" )
			endif
		endif
		//-----------------???------------
		if $player1 < 169
			if $player1 >= 149
				PlayEffect( -1, "script\radar_level_1.ini" )
				BC( "screen", "player", -1, "Beep~~~~Beep~~~" )
			endif	
		endif
		if $player1 > 253
			if $player1 <= 273
				PlayEffect( -1, "script\radar_level_1.ini" )
				BC( "screen", "player", -1, "Beep~~~~Beep~~~" )
			endif	
		endif
		
		if $player2 < 54
			if $player2 >= 34
				PlayEffect( -1, "script\radar_level_1.ini" )
				BC( "screen", "player", -1, "Beep~~~~Beep~~~" )
			endif	
		endif
		if $player2 > 138
			if $player2 <= 158
				PlayEffect( -1, "script\radar_level_1.ini" )
				BC( "screen", "player", -1, "Beep~~~~Beep~~~" )
			endif
		endif
		//------------??-----------
		if $player1 < 149
			if $player1 > 273
				BC( "screen", "player", -1, "No response in probe." )
			endif
		endif
		if $player2 < 34
			if $player2 > 158
				BC( "screen", "player", -1, "No response in probe." )
			endif
		endif
			
	}