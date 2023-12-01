	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/20
	//		Author:???
	//		TaskName:AV-ITEM-12581.s
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
		if $player1 >= 74
			if $player1 <= 87
				if $player2 >= 215
					if $player2 <= 228
						$result = SubPlayerInfo( -1, "item", 12581, 1 )
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
		if $player1 < 74
			if $player1 >= 69
				PlayEffect( -1, "script\radar_level_4.ini" )
				BC( "screen", "player", -1, "Beep!Beep!Beep!Beep!Beep!" )
			endif	
		endif
		if $player1 > 87
			if $player1 <= 92
				PlayEffect( -1, "script\radar_level_4.ini" )
				BC( "screen", "player", -1, "Beep!Beep!Beep!Beep!Beep!" )
			endif	
		endif
		
		if $player2 < 215
			if $player2 >= 210
				PlayEffect( -1, "script\radar_level_4.ini" )
				BC( "screen", "player", -1, "Beep!Beep!Beep!Beep!Beep!" )
			endif	
		endif
		if $player2 > 228
			if $player2 <= 233
				PlayEffect( -1, "script\radar_level_4.ini" )
				BC( "screen", "player", -1, "Beep!Beep!Beep!Beep!Beep!" )
			endif
		endif
		//----------???-------------------
		if $player1 < 69
			if $player1 >= 54
				PlayEffect( -1, "script\radar_level_3.ini" )
				BC( "screen", "player", -1, "Beep~Beep~Beep~Beep~Beep~" )
			endif	
		endif
		if $player1 > 92
			if $player1 <= 107
				PlayEffect( -1, "script\radar_level_3.ini" )
				BC( "screen", "player", -1, "Beep~Beep~Beep~Beep~Beep~" )
			endif	
		endif
		
		if $player2 < 210
			if $player2 >= 195
				PlayEffect( -1, "script\radar_level_3.ini" )
				BC( "screen", "player", -1, "Beep~Beep~Beep~Beep~Beep~" )
			endif	
		endif
		if $player2 > 233
			if $player2 <= 248
				PlayEffect( -1, "script\radar_level_3.ini" )
				BC( "screen", "player", -1, "Beep~Beep~Beep~Beep~Beep~" )
			endif
		endif
		//--------------???---------------
		if $player1 < 54
			if $player1 >= 39
				PlayEffect( -1, "script\radar_level_2.ini" )
				BC( "screen", "player", -1, "Beep~~Beep~~Beep~~" )
			endif	
		endif
		if $player1 > 107
			if $player1 <= 122
				PlayEffect( -1, "script\radar_level_2.ini" )
				BC( "screen", "player", -1, "Beep~~Beep~~Beep~~" )
			endif	
		endif
		
		if $player2 < 195
			if $player2 >= 180
				PlayEffect( -1, "script\radar_level_2.ini" )
				BC( "screen", "player", -1, "Beep~~Beep~~Beep~~" )
			endif	
		endif
		if $player2 > 248
			if $player2 <= 263
				PlayEffect( -1, "script\radar_level_2.ini" )
				BC( "screen", "player", -1, "Beep~~Beep~~Beep~~" )
			endif
		endif
		//-----------------???------------
		if $player1 < 39
			if $player1 >= 19
				PlayEffect( -1, "script\radar_level_1.ini" )
				BC( "screen", "player", -1, "Beep~~~~Beep~~~" )
			endif	
		endif
		if $player1 > 122
			if $player1 <= 142
				PlayEffect( -1, "script\radar_level_1.ini" )
				BC( "screen", "player", -1, "Beep~~~~Beep~~~" )
			endif	
		endif
		
		if $player2 < 180
			if $player2 >= 160
				PlayEffect( -1, "script\radar_level_1.ini" )
				BC( "screen", "player", -1, "Beep~~~~Beep~~~" )
			endif	
		endif
		if $player2 > 263
			if $player2 <= 283
				PlayEffect( -1, "script\radar_level_1.ini" )
				BC( "screen", "player", -1, "Beep~~~~Beep~~~" )
			endif
		endif
		//------------??-----------
		if $player1 < 19
			if $player1 > 142
				BC( "screen", "player", -1, "No response in probe." )
			endif
		endif
		if $player2 < 160
			if $player2 > 283
				BC( "screen", "player", -1, "No response in probe." )
			endif
		endif
		
	}