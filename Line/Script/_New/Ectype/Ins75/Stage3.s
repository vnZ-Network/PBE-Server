	function OnRequest(){
		$ectID = GetEctypeID( -1 ,232 )
		
		$Count = GetEctypeVar( -1, 115 )
		if $Count >= 20
			DisableNpcOption(0)
		endif
		
	}
	
	
	function OnOption0(){
		$ectID = GetEctypeID( -1 ,232 )
		
		$Count = GetEctypeVar( -1, 115 )
		if $Count >= 20
			BC( "dialogbox", "player", -1, "has succeeded to summon the Arch Priestess." )
			return
		endif
		
		$Item = GetPlayerInfo( -1, "item", 50037 )
		if $Item < 1
			BC( "dialogbox", "player", -1, "More food is needed to complete the ritual. Kill Little Boar and gather Pork Chops." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 50037, 1 )
		if $SubItem != 0
			return
		endif
		
		$Count = GetEctypeVar( -1, 115 )
		$Count = $Count + 1
		SetEctypeVar( -1, 115, $Count )
		
		$Count = GetEctypeVar( -1, 115 )
		$Count = 20 - $Count
		if $Count > 0
               if $lang == 1
                    BC( "chat" , "player" , -1 , "[color=FF22E974]Cần cống nạp thêm [color=ffB54ECA]", $Count, "[color=FF22E974]để triệu hồi Tu Sĩ Arch")
               endif
               if $lang == 2
                    BC( "chat" , "player" , -1 , "[color=FF22E974]You must offer [color=ffB54ECA]", $Count, "[color=FF22E974]more Pork Chops to awaken the statue")
               endif
 		endif
		
		$Count = GetEctypeVar( -1, 115 )
		if $Count >= 20
			$playerX = GetPlayerInfo( -1, "mapx" )
			$playerY = GetPlayerInfo( -1, "mapy" )
			$Dif = GetEctypeVar( -1, 4 )
               $boss1 = 51225
               $boss2 = 61035
               $boss3 = 61055
			if $Dif == 0
				AddMonster( $boss1, 1, $ectID, $playerX, $playerY , 1 )
			endif
               if $Dif == 1
				AddMonster( $boss1, 1, $ectID, $playerX, $playerY , 1 )
			endif
               if $Dif == 2
				AddMonster( $boss1, 1, $ectID, $playerX, $playerY , 1 )
			endif
			PlayEffect( 0, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			return
		endif
		
	}