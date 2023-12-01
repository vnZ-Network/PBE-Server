//───────────────────────────────────────
//Phụ Bản:《"Stage 1 > Stage 2"》
//───────────────────────────────────────
	function OnDead(){
          $lang = GetPlayerVar(-1, 3301)
		$ectID = GetEctypeID( -1, 226 )

		$Count = GetEctypeVar( -1, 110 )
		$Count = $Count + 1
		SetEctypeVar( -1, 110, $Count )
		

		$Count = GetEctypeVar( -1, 110 )

          #mobVN = "Hộ Vệ Long Đế"
          #mobEN = "Dragon Squires"
          $mob1 = 61003
          $mob2 = 61013
          $mob3 = 61023

		if $Count < 40
			$Count = 40 - $Count
               if $lang == 1
                    BC( "chat" , "player" , -1 , "[color=FF22E974]", #mobVN, "[color=FF22E974] còn: [color=ffB54ECA]", $Count )
               endif
               if $lang == 2
                    BC( "chat" , "player" , -1 , "[color=FF22E974]", #mobEN, "[color=FF22E974] left: [color=ffB54ECA]", $Count )
               endif
		endif
		if $Count == 40
			$Dif = GetEctypeVar( -1, 7 )
			if $Dif == 0
				AddMonster( $mob1, 1, $ectID, 60, 58 , 0 )
				AddMonster( $mob1, 1, $ectID, 60, 52 , 0 )
				AddMonster( $mob1, 1, $ectID, 68, 58 , 0 )
				AddMonster( $mob1, 1, $ectID, 68, 52 , 0 )
                    if $lang == 1
                         BC( "chat" , "player" , -1 , "[color=FF22E974]Long Đế Chiến Tướng xuất hiện tại giữa mộ địa" )
                    endif
                    if $lang == 2
                         BC( "chat" , "player" , -1 , "[color=FF22E974]Dragon Captain has appear" )
                    endif
			endif
               if $Dif == 1
				AddMonster( $mob2, 1, $ectID, 60, 58 , 0 )
				AddMonster( $mob2, 1, $ectID, 60, 52 , 0 )
				AddMonster( $mob2, 1, $ectID, 68, 58 , 0 )
				AddMonster( $mob2, 1, $ectID, 68, 52 , 0 )
                    if $lang == 1
                         BC( "chat" , "player" , -1 , "[color=FF22E974]Long Đế Chiến Tướng xuất hiện tại giữa mộ địa" )
                    endif
                    if $lang == 2
                         BC( "chat" , "player" , -1 , "[color=FF22E974]Dragon Captain has appear" )
                    endif
			endif
               if $Dif == 2
				AddMonster( $mob3, 1, $ectID, 60, 58 , 0 )
				AddMonster( $mob3, 1, $ectID, 60, 52 , 0 )
				AddMonster( $mob3, 1, $ectID, 68, 58 , 0 )
				AddMonster( $mob3, 1, $ectID, 68, 52 , 0 )
                    if $lang == 1
                         BC( "chat" , "player" , -1 , "[color=FF22E974]Long Đế Chiến Tướng xuất hiện tại giữa mộ địa" )
                    endif
                    if $lang == 2
                         BC( "chat" , "player" , -1 , "[color=FF22E974]Dragon Captain has appear" )
                    endif
			endif
		endif
		
	}