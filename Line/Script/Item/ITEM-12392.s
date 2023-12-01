	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/27
	//		Author:???
	//		TaskName:ITEM-12392.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
		$Quest = 599
		//??ID
		
		$Titem01 = 12393
		//??ID
		
		$Number01 = 1
		//????
		
		$mapid01 = 90
		//??ID
		
		#mapname = "Nile River West"
		//????
		
		$mapx0 = 205
		//X????
		
		$mapx1 = 208
		//X????
		
		$mapy0 = 233
		//Y????
		
		$mapy1 = 237
		//Y????
		
		$item01 = 12392
		//????ID
		
		$Numb1 = 1
		//??????
		
		$task0 = IsTaskAccept( -1, $Quest )
		if $task0 != 0
			return
		endif
		
		$player0 = GetPlayerInfo( -1, mapid )
		$player1 = GetPlayerInfo( -1, mapposx )
		$player2 = GetPlayerInfo( -1, mapposy )
		
		if $player0 != $mapid01
			BC( "screen", "player", -1, "Available only in ",#mapname,"!" )
			return
		endif
		
		if $player1 < $mapx0
			BC( "screen", "player", -1, "Location does not match. Nothing happened!" )
			return
		endif
		if $player1 > $mapx1
			BC( "screen", "player", -1, "Location does not match. Nothing happened!" )
			return
		endif
		
		if $player2 < $mapy0
			BC( "screen", "player", -1, "Location does not match. Nothing happened!" )
			return
		endif
		if $player2 > $mapy1
			BC( "screen", "player", -1, "Location does not match. Nothing happened!" )
			return
		endif
		
		$Sub = SubPlayerInfo( -1, "item", $item01, $Numb1 )
		if $Sub != 0
			return
		endif
		
		PlayEffect( -1, "Skill\Monster\boss\molifengbao\fire\tx_molifengbao_fire.ini" )
		BC( "screen", "player", -1, "Love and hatred... both gone with the wind. Only a fleeting memory remains." )
		AddPlayerInfo( -1, "item", $Titem01, $Number01 )
		
	}