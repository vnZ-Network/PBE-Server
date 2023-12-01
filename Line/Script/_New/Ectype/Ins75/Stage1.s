	function OnDead(){		
		$ectID = GetEctypeID( -1, 232 )			
		$Count = GetEctypeVar( -1, 114 )
		$Count = $Count + 1
		SetEctypeVar( -1, 114, $Count )
          $lang = GetPlayerVar(-1, 3301)
          #mobVN = "Vũ Công"
          #mobEN = "Witches"


		if $Count < 50
               if $lang == 1
                    BC( "chat" , "player" , -1 , "[color=FF22E974]Đã diệt ", #mobVN, ":[color=ffB54ECA]", $Count, "/50[color=ffB54ECA]" )
               endif
               if $lang == 2
                    BC( "chat" , "player" , -1 , "[color=FF22E974]Defeat ", #mobEN, ":[color=ffB54ECA]", $Count, "/50[color=ffB54ECA]")
               endif
		endif
				
		$Dif = GetEctypeVar( -1, 4 )
		$Count = GetEctypeVar( -1, 114 )
		if $Count >= 50
			PlayEffect( 0, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			$playerX = GetPlayerInfo( -1, "mapx" )
			$playerY = GetPlayerInfo( -1, "mapy" )
               $boss1 = 51224
               $boss2 = 61034
               $boss3 = 61054
          
			if $Dif == 0
				AddMonster( $boss1, 1, $ectID, $playerX, $playerY , 1 )
			endif
               if $Dif == 1
                    AddMonster( $boss2, 1, $ectID, $playerX, $playerY , 1 )
               endif
               if $Dif == 2
                    AddMonster( $boss3, 1, $ectID, $playerX, $playerY , 1 )
               endif
			return
		endif	
		
	}