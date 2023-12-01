	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/20
	//		Author:???
	//		TaskName:AV-ITEM-12576.s
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
		if $player1 >= 166
			if $player1 <= 179
				if $player2 >= 112
					if $player2 <= 125
						$result = SubPlayerInfo( -1, "item", 12576, 1 )
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
		if $player1 < 166
			if $player1 >= 161
				PlayEffect( -1, "script\radar_level_4.ini" )
				BC( "screen", "player", -1, "Beep!Beep!Beep!Beep!Beep!" )
			endif	
		endif
		if $player1 > 179
			if $player1 <= 184
				PlayEffect( -1, "script\radar_level_4.ini" )
				BC( "screen", "player", -1, "Beep!Beep!Beep!Beep!Beep!" )
			endif	
		endif
		
		if $player2 < 112
			if $player2 >= 107
				PlayEffect( -1, "script\radar_level_4.ini" )
				BC( "screen", "player", -1, "Beep!Beep!Beep!Beep!Beep!" )
			endif	
		endif
		if $player2 > 125
			if $player2 <= 130
				PlayEffect( -1, "script\radar_level_4.ini" )
				BC( "screen", "player", -1, "Beep!Beep!Beep!Beep!Beep!" )
			endif
		endif
		//----------???-------------------
		if $player1 < 161
			if $player1 >= 146
				PlayEffect( -1, "script\radar_level_3.ini" )
				BC( "screen", "player", -1, "Beep~Beep~Beep~Beep~Beep~" )
			endif	
		endif
		if $player1 > 184
			if $player1 <= 199
				PlayEffect( -1, "script\radar_level_3.ini" )
				BC( "screen", "player", -1, "Beep~Beep~Beep~Beep~Beep~" )
			endif	
		endif
		
		if $player2 < 107
			if $player2 >= 92
				PlayEffect( -1, "script\radar_level_3.ini" )
				BC( "screen", "player", -1, "Beep~Beep~Beep~Beep~Beep~" )
			endif	
		endif
		if $player2 > 130
			if $player2 <= 145
				PlayEffect( -1, "script\radar_level_3.ini" )
				BC( "screen", "player", -1, "Beep~Beep~Beep~Beep~Beep~" )
			endif
		endif
		//--------------???---------------
		if $player1 < 146
			if $player1 >= 131
				PlayEffect( -1, "script\radar_level_2.ini" )
				BC( "screen", "player", -1, "Beep~~Beep~~Beep~~" )
			endif	
		endif
		if $player1 > 199
			if $player1 <= 214
				PlayEffect( -1, "script\radar_level_2.ini" )
				BC( "screen", "player", -1, "Beep~~Beep~~Beep~~" )
			endif	
		endif
		
		if $player2 < 92
			if $player2 >= 77
				PlayEffect( -1, "script\radar_level_2.ini" )
				BC( "screen", "player", -1, "Beep~~Beep~~Beep~~" )
			endif	
		endif
		if $player2 > 145
			if $player2 <= 160
				PlayEffect( -1, "script\radar_level_2.ini" )
				BC( "screen", "player", -1, "Beep~~Beep~~Beep~~" )
			endif
		endif
		//-----------------???------------
		if $player1 < 131
			if $player1 >= 111
				PlayEffect( -1, "script\radar_level_1.ini" )
				BC( "screen", "player", -1, "Beep~~~~Beep~~~" )
			endif	
		endif
		if $player1 > 214
			if $player1 <= 234
				PlayEffect( -1, "script\radar_level_1.ini" )
				BC( "screen", "player", -1, "Beep~~~~Beep~~~" )
			endif	
		endif
		
		if $player2 < 77
			if $player2 >= 57
				PlayEffect( -1, "script\radar_level_1.ini" )
				BC( "screen", "player", -1, "Beep~~~~Beep~~~" )
			endif	
		endif
		if $player2 > 160
			if $player2 <= 180
				PlayEffect( -1, "script\radar_level_1.ini" )
				BC( "screen", "player", -1, "Beep~~~~Beep~~~" )
			endif
		endif
		//------------??-----------
		if $player1 < 111
			if $player1 > 234
				BC( "screen", "player", -1, "No response in probe." )
			endif
		endif
		if $player2 < 57
			if $player2 > 180
				BC( "screen", "player", -1, "No response in probe." )
			endif
		endif
		
	}