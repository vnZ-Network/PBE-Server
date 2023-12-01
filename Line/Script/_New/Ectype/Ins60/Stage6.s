	function OnDead(){		
		#mobVN = "Vệ Binh Hoàng Gia"
          #mobEN = "Royal Guards"
          $emob1 = 51453
          $emob2 = 51443
          $hmob1 = 51113
          $hmob2 = 51103
          $nmob1 = 51133
          $nmob2 = 51123
          $Count = GetEctypeVar(-1 ,111)
          $Count = $Count + 1
		SetEctypeVar(-1 ,111,$Count)		
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
				AddMonster( $emob1, 1, $ectID, 58, 59,  0 )
				AddMonster( $emob2, 10, $ectID, 58, 59,  5 )
			endif
               if $Dif == 1
                    AddMonster( $hmob1, 1, $ectID, 58, 59,  0 )
				AddMonster( $hmob2, 10, $ectID, 58, 59,  5 )
               endif
               if $Dif == 2
                    AddMonster( $nmob1, 1, $ectID, 58, 59,  0 )
				AddMonster( $nmob2, 10, $ectID, 58, 59,  5 )
               endif
		endif
		
	}
		
