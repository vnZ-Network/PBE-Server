	function OnDead(){
          $emob1 = 51443
          $emob2 = 51444
          $hmob1 = 51103
          $hmob2 = 51104
          $nmob1 = 51123
          $nmob2 = 51124
		$lang = GetPlayerVar(-1, 3301)		
		$ectID = GetEctypeID(-1 ,222)
		SetEctypeVar(-1 ,2 , 1)
		AddNPC(1900, $ectID)

		$Dif = GetEctypeVar(-1 ,0)
          if $lang == 1
               BC( "chat" , "player" , -1 , "[color=ffB54ECA]Marcell[color=FF22E974]: Hãy tiến sâu vào Đảo, ta sẽ đưa ngươi qua cổng" )
          endif
          if $lang == 2
               BC( "chat" , "player" , -1 , "[color=ffB54ECA]Marcell[color=FF22E974]: You very strong!  Armond and me help you!" )
          endif
		if $Dif == 0
			AddMonster( $emob1, 30, $ectID, 58, 59,  10 )
			AddMonster( $emob2, 30, $ectID, 72, 57,  10 )
		endif
		if $Dif == 1
			AddMonster( $hmob1, 30, $ectID, 58, 59,  10 )
			AddMonster( $hmob2, 30, $ectID, 72, 57,  10 )
		endif
		if $Dif == 2
			AddMonster( $nmob1, 30, $ectID, 58, 59,  10 )
			AddMonster( $nmob2, 30, $ectID, 72, 57,  10 )
		endif

	}
		
