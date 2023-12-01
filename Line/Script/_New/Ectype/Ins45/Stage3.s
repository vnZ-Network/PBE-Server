//───────────────────────────────────────
//Phụ Bản:《"Stage 3 > Stage 4"》
//───────────────────────────────────────
	function OnDead(){
          $mob1 = 61004
          $mob2 = 61014
          $mob3 = 61024
          #mobVN = "Vệ Binh Long Đế"
          #mobEN = "Terracotta Protectors"
          $lang = GetPlayerVar(-1, 3301)
		$ectID = GetEctypeID( -1, 226 )
		$Count = GetEctypeVar( -1, 111 )
		$Count = $Count + 1
		SetEctypeVar( -1, 111, $Count )
		$Count = GetEctypeVar( -1, 111 )
		if $Count < 70
			$Count = 70 - $Count		
               if $lang == 1
                    BC( "chat" , "player" , -1 , "[color=FF22E974]", #mobVN, "[color=FF22E974] còn: [color=ffB54ECA]", $Count )
               endif
               if $lang == 2
                    BC( "chat" , "player" , -1 , "[color=FF22E974]", #mobEN, "[color=FF22E974] left: [color=ffB54ECA]", $Count )
               endif
		endif
		if $Count == 70
               $Dif = GetEctypeVar( -1, 7 )
               if $Dif == 0
                    AddMonster( $mob1, 1, $ectID, 63, 55 , 0 )
                    PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
                    if $lang == 1
                         BC( "chat" , "player" , -1 , "[color=FF22E974]Long Đế xuất hiện tại giữa mộ địa" )
                    endif
                    if $lang == 2
                         BC( "chat" , "player" , -1 , "[color=FF22E974]Dragon Emperor has appear" )
                    endif
               endif
               if $Dif == 1
                    AddMonster( $mob2, 1, $ectID, 63, 55 , 0 )
                    PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
                    if $lang == 1
                         BC( "chat" , "player" , -1 , "[color=FF22E974]Long Đế xuất hiện tại giữa mộ địa" )
                    endif
                    if $lang == 2
                         BC( "chat" , "player" , -1 , "[color=FF22E974]Dragon Emperor has appear" )
                    endif
               endif
               if $Dif == 2
                    AddMonster( $mob3, 1, $ectID, 63, 55 , 0 )
                    PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
                    if $lang == 1
                         BC( "chat" , "player" , -1 , "[color=FF22E974]Long Đế xuất hiện tại giữa mộ địa" )
                    endif
                    if $lang == 2
                         BC( "chat" , "player" , -1 , "[color=FF22E974]Dragon Emperor has appear" )
                    endif
               endif
		endif

	}