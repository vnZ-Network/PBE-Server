	function OnDead(){
		#mobVN = "Sĩ Binh Hoàng Gia"
          #mobEN = "Royal Squire"
		$mob1 = 51444
          $mob2 = 51104
          $mob3 = 51124
          $boss1 = 51454
          $boss2 = 51114
          $boss3 = 51134
		$Count = GetEctypeVar(-1 ,112)
          $Count = $Count + 1
		SetEctypeVar(-1 ,112,$Count)		
		$ectID = GetEctypeID(-1 ,222)		
		$Dif = GetEctypeVar(-1 ,0)
          $lang = GetPlayerVar(-1, 3301)
		
		if $Count <= 30
               if $lang == 1
                    BC( "chat" , "player" , -1 , "[color=FF22E974]Đã diệt ", #mobVN, ":[color=ffB54ECA]", $Count, "/30[color=ffB54ECA]" )
               endif
               if $lang == 2
                    BC( "chat" , "player" , -1 , "[color=FF22E974]Defeat ", #mobEN, ":[color=ffB54ECA]", $Count, "/30[color=ffB54ECA]")
               endif
		endif
		if $Count == 30
			if $Dif == 0
				AddMonster( $boss1, 1, $ectID, 72, 57,  0 )
				AddMonster( $mob1, 10, $ectID, 72, 57,  5 )
			endif
			if $Dif == 1
				AddMonster( $boss2, 1, $ectID, 72, 57,  0 )
				AddMonster( $mob2, 10, $ectID, 72, 57,  5 )
			endif
               if $Dif == 2
				AddMonster( $boss3, 1, $ectID, 72, 57,  0 )
				AddMonster( $mob3, 10, $ectID, 72, 57,  5 )
			endif
		endif
		
	}