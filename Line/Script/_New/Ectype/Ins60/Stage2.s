
	function OnRequest(){
		$is_kill = GetEctypeVar(-1 ,2)
		$is_add = GetEctypeVar(-1 ,5)
		if $is_add == 1
			DisableNpcOption(1)
		endif
		if $is_kill == 0
			DisableNpcOption(0)
		endif
		

	}

	function OnOption0(){
		
		$ectID = GetEctypeID(-1 ,222)
		FlyToMap( -1, $ectID, 65, 71 )

	}

	function OnOption1(){
          $lang = GetPlayerVar(-1, 3301)
		$ectID = GetEctypeID(-1 ,222)
		$Dif = GetEctypeVar(-1 ,0)
          $mob1 = 51452
          $mob2 = 51112
          $mob3 = 51132
          if $lang == 1
               BC( "chat" , "player" , -1 , "[color=ffB54ECA]Marcell[color=FF22E974]: Hãy cho ta thấy sức mạnh của ngươi" )
          endif
          if $lang == 2
               BC( "chat" , "player" , -1 , "[color=ffB54ECA]Marcell[color=FF22E974]: We see how strong you really are, now!" )
          endif
		if $Dif == 0
			SetEctypeVar(-1 ,5 , 1)
			AddMonster( $mob1, 1, $ectID, 65, 87,  0 )
		endif
          if $Dif == 1
               SetEctypeVar(-1 ,5 , 1)
               AddMonster( $mob2, 1, $ectID, 65, 87, 0 )
          endif

          if $Dif == 2
               SetEctypeVar(-1 ,5 , 1)
               AddMonster( $mob3, 1, $ectID, 65, 87, 0 )
		endif

	}
