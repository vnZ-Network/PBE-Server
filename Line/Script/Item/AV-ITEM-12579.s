	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/05/20
	//		Author:???
	//		TaskName:AV-ITEM-12579.s
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
		if $player1 >= 122
			if $player1 <= 135
				if $player2 >= 179
					if $player2 <= 192
						$result = SubPlayerInfo( -1, "item", 12579, 1 )
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
		if $player1 < 122
			if $player1 >= 117
				PlayEffect( -1, "script\radar_level_4.ini" )
				BC( "screen", "player", -1, "Beep!Beep!Beep!Beep!Beep!" )
			endif	
		endif
		if $player1 > 135
			if $player1 <= 140
				PlayEffect( -1, "script\radar_level_4.ini" )
				BC( "screen", "player", -1, "Beep!Beep!Beep!Beep!Beep!" )
			endif	
		endif
		
		if $player2 < 179
			if $player2 >= 174
				PlayEffect( -1, "script\radar_level_4.ini" )
				BC( "screen", "player", -1, "Beep!Beep!Beep!Beep!Beep!" )
			endif	
		endif
		if $player2 > 192
			if $player2 <= 197
				PlayEffect( -1, "script\radar_level_4.ini" )
				BC( "screen", "player", -1, "Beep!Beep!Beep!Beep!Beep!" )
			endif
		endif
		//----------???-------------------
		if $player1 < 117
			if $player1 >= 102
				PlayEffect( -1, "script\radar_level_3.ini" )
				BC( "screen", "player", -1, "Beep~Beep~Beep~Beep~Beep~" )
			endif	
		endif
		if $player1 > 140
			if $player1 <= 155
				PlayEffect( -1, "script\radar_level_3.ini" )
				BC( "screen", "player", -1, "Beep~Beep~Beep~Beep~Beep~" )
			endif	
		endif
		
		if $player2 < 174
			if $player2 >= 159
				PlayEffect( -1, "script\radar_level_3.ini" )
				BC( "screen", "player", -1, "Beep~Beep~Beep~Beep~Beep~" )
			endif	
		endif
		if $player2 > 197
			if $player2 <= 212
				PlayEffect( -1, "script\radar_level_3.ini" )
				BC( "screen", "player", -1, "Beep~Beep~Beep~Beep~Beep~" )
			endif
		endif
		//--------------???---------------
		if $player1 < 102
			if $player1 >= 87
				PlayEffect( -1, "script\radar_level_2.ini" )
				BC( "screen", "player", -1, "Beep~~Beep~~Beep~~" )
			endif	
		endif
		if $player1 > 155
			if $player1 <= 170
				PlayEffect( -1, "script\radar_level_2.ini" )
				BC( "screen", "player", -1, "Beep~~Beep~~Beep~~" )
			endif	
		endif
		
		if $player2 < 159
			if $player2 >= 144
				PlayEffect( -1, "script\radar_level_2.ini" )
				BC( "screen", "player", -1, "Beep~~Beep~~Beep~~" )
			endif	
		endif
		if $player2 > 212
			if $player2 <= 227	
				PlayEffect( -1, "script\radar_level_2.ini" )
				BC( "screen", "player", -1, "Beep~~Beep~~Beep~~" )
			endif
		endif
		//-----------------???------------
		if $player1 < 87
			if $player1 >= 67
				PlayEffect( -1, "script\radar_level_1.ini" )
				BC( "screen", "player", -1, "Beep~~~~Beep~~~" )
			endif	
		endif
		if $player1 > 170
			if $player1 <= 190
				PlayEffect( -1, "script\radar_level_1.ini" )
				BC( "screen", "player", -1, "Beep~~~~Beep~~~" )
			endif	
		endif
		
		if $player2 < 144
			if $player2 >= 124
				PlayEffect( -1, "script\radar_level_1.ini" )
				BC( "screen", "player", -1, "Beep~~~~Beep~~~" )
			endif	
		endif
		if $player2 > 227
			if $player2 <= 247
				PlayEffect( -1, "script\radar_level_1.ini" )
				BC( "screen", "player", -1, "Beep~~~~Beep~~~" )
			endif
		endif
		//------------??-----------
		if $player1 < 67
			if $player1 > 190
				BC( "screen", "player", -1, "No response in probe." )
			endif
		endif
		if $player2 < 124
			if $player2 > 247
				BC( "screen", "player", -1, "No response in probe." )
			endif
		endif
		
	}