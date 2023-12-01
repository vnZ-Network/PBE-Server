	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/20
	//		Author:???
	//		TaskName:AV-ITEM-12486.s
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
		if $player1 >= 171
			if $player1 <= 184
				if $player2 >= 76
					if $player2 <= 90
						$result = SubPlayerInfo( -1, "item", 12486, 1 )
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
		if $player1 < 171
			if $player1 >= 166
				PlayEffect( -1, "script\radar_level_4.ini" )
				BC( "screen", "player", -1, "Beep!Beep!Beep!Beep!Beep!" )
			endif	
		endif
		if $player1 > 184
			if $player1 <= 189
				PlayEffect( -1, "script\radar_level_4.ini" )
				BC( "screen", "player", -1, "Beep!Beep!Beep!Beep!Beep!" )
			endif	
		endif
		
		if $player2 < 76
			if $player2 >= 71
				PlayEffect( -1, "script\radar_level_4.ini" )
				BC( "screen", "player", -1, "Beep!Beep!Beep!Beep!Beep!" )
			endif	
		endif
		if $player2 > 90
			if $player2 <= 95
				PlayEffect( -1, "script\radar_level_4.ini" )
				BC( "screen", "player", -1, "Beep!Beep!Beep!Beep!Beep!" )
			endif
		endif
		//----------???-------------------
		if $player1 < 166
			if $player1 >= 151
				PlayEffect( -1, "script\radar_level_3.ini" )
				BC( "screen", "player", -1, "Beep~Beep~Beep~Beep~Beep~" )
			endif	
		endif
		if $player1 > 189
			if $player1 <= 204
				PlayEffect( -1, "script\radar_level_3.ini" )
				BC( "screen", "player", -1, "Beep~Beep~Beep~Beep~Beep~" )
			endif	
		endif
		
		if $player2 < 71
			if $player2 >= 56
				PlayEffect( -1, "script\radar_level_3.ini" )
				BC( "screen", "player", -1, "Beep~Beep~Beep~Beep~Beep~" )
			endif	
		endif
		if $player2 > 95
			if $player2 <= 110
				PlayEffect( -1, "script\radar_level_3.ini" )
				BC( "screen", "player", -1, "Beep~Beep~Beep~Beep~Beep~" )
			endif
		endif
		//--------------???---------------
		if $player1 < 151
			if $player1 >= 136
				PlayEffect( -1, "script\radar_level_2.ini" )
				BC( "screen", "player", -1, "Beep~~Beep~~Beep~~" )
			endif	
		endif
		if $player1 > 204
			if $player1 <= 219
				PlayEffect( -1, "script\radar_level_2.ini" )
				BC( "screen", "player", -1, "Beep~~Beep~~Beep~~" )
			endif	
		endif
		
		if $player2 < 56
			if $player2 >= 41
				PlayEffect( -1, "script\radar_level_2.ini" )
				BC( "screen", "player", -1, "Beep~~Beep~~Beep~~" )
			endif	
		endif
		if $player2 > 110
			if $player2 <= 125
				PlayEffect( -1, "script\radar_level_2.ini" )
				BC( "screen", "player", -1, "Beep~~Beep~~Beep~~" )
			endif
		endif
		//-----------------???------------
		if $player1 < 136
			if $player1 >= 116
				PlayEffect( -1, "script\radar_level_1.ini" )
				BC( "screen", "player", -1, "Beep~~~~Beep~~~" )
			endif	
		endif
		if $player1 > 219
			if $player1 <= 239
				PlayEffect( -1, "script\radar_level_1.ini" )
				BC( "screen", "player", -1, "Beep~~~~Beep~~~" )
			endif	
		endif
		
		if $player2 < 41
			if $player2 >= 21
				PlayEffect( -1, "script\radar_level_1.ini" )
				BC( "screen", "player", -1, "Beep~~~~Beep~~~" )
			endif	
		endif
		if $player2 > 125
			if $player2 <= 145
				PlayEffect( -1, "script\radar_level_1.ini" )
				BC( "screen", "player", -1, "Beep~~~~Beep~~~" )
			endif
		endif
		//------------??-----------
		if $player1 < 116
			if $player1 > 239
				BC( "screen", "player", -1, "No response in probe." )
			endif
		endif
		if $player2 < 21
			if $player2 > 145
				BC( "screen", "player", -1, "No response in probe." )
			endif
		endif
		
	}