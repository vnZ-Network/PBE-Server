//Diff = 0 [Địa Ngục]
//Diff = 1 [Khó]
//Diff = 2 [Thường]
	function OnCreate(){
		DeleteNPC(1921, -1)
		DeleteNPC(1922, -1)
		DeleteNPC(1923, -1)
		DeleteNPC(1924, -1)
		DeleteNPC(1925, -1)

	}
	
	
	function InitTimer(){
	    SetEctypeTimer(0, 2, "EctypeTime1")
	    SetEctypeTimer(1, 3, "EctypeTime2")
	    SetEctypeTimer(2, 60, "EctypeTime3")
	    SetEctypeTimer(3, 10, "EctypeTime4")
	    SetEctypeTimer(4, 300, "EctypeTime5")
	    SetEctypeTimer(5, 3, "EctypeTime6")
  
	}
	
	function EctypeTime1(){
		$Dif = GetEctypeVar( -1, 0)
		$ectID = GetEctypeID( -1, 223)
          $mon1 = 51465
          $mon2 = 51155
          $mon3 = 51175
          if $Dif == 2
               DeleteNPC(1932, -1)
               AddMonster( $mon1, 10, $ectID, 80, 80 , 15 )
          endif
          if $Dif == 0
               DeleteNPC(1932, -1)
               AddMonster( 51155, 10, $ectID, 80, 80 , 15 )
          endif
          if $Dif == 1
               AddMonster( 51175, 10, $ectID, 80, 80 , 15 )
          endif			

		
	}
	

	function EctypeTime2(){

		AddNPC(1920, -1)
	}
	

	function EctypeTime3(){
          $lang = GetPlayerVar(-1, 3301)
		$whiteB = GetEctypeVar( -1, 1)
		$blackB = GetEctypeVar( -1, 2)
		$min = GetEctypeVar( -1, 110)
		$ectID = GetEctypeID( -1, 223)
		
		if $whiteB == 1
			if $blackB == 0
				if $min > 1
                         if $lang == 1
                              BC( "chat" , "player" , -1 , "[color=FF22E974]Iceoper sẽ trốn thoát với Kho Báu sau [color=ffB54ECA]", $min, " phút")
                         endif
                         if $lang == 2
                              BC( "chat" , "player" , -1 , "[color=FF22E974]Iceoper will escape with the treasure in [color=ffB54ECA]", $min, " min")
                         endif
				endif
			endif
		else
			if $blackB == 1
				if $min > 1
                         if $lang == 1
                              BC( "chat" , "player" , -1 , "[color=FF22E974]Oroine sẽ trốn thoát với Kho Báu sau [color=ffB54ECA]", $min, " phút")
                         endif
                         if $lang == 2
                              BC( "chat" , "player" , -1 , "[color=FF22E974]Oroine will escape with the treasure in [color=ffB54ECA]", $min, " min")
                         endif
				endif
			endif
		endif
		if $min > 0
			$min = $min - 1
			SetEctypeVar( -1, 110 ,$min )
			StartEctypeTimer( -1, 2)
		endif

	}

	function EctypeTime4(){
          $lang = GetPlayerVar(-1, 3301)		
		$whiteB = GetEctypeVar( -1, 1)
		$blackB = GetEctypeVar( -1, 2)
		$min = GetEctypeVar( -1, 110)
		$sec = GetEctypeVar( -1, 111)
		$ectID = GetEctypeID( -1, 223)
		if $min == 0
			if $whiteB == 1
				if $blackB == 0
					if $sec > 0
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Iceoper sẽ trốn thoát với Kho Báu sau [color=ffB54ECA]", $sec, "0 giây")
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Iceoper will escape with the treasure in [color=ffB54ECA]", $sec, "0 sec")
                              endif
					endif
				endif
			else
				if $blackB == 1
					if $min > 0
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Oroine sẽ trốn thoát với Kho Báu sau [color=ffB54ECA]", $sec, "0 giây")
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Oroine will escape with the treasure in [color=ffB54ECA]", $sec, "0 sec")
                              endif
					endif
				endif
			endif			
		endif
		if $sec > 0
			$sec = $sec - 1
			SetEctypeVar( -1, 111 ,$sec )
			StartEctypeTimer( -1, 3)
		endif
	}
	
	function EctypeTime5(){
		$lang = GetPlayerVar(-1, 3301)
		$whiteB = GetEctypeVar( -1, 1)
		$blackB = GetEctypeVar( -1, 2)		
		$ectID = GetEctypeID( -1, 223)
          $t1mon1 = 51463
          $t1mon2 = 51464
          $t1mon3 = 51472
          $t2mon1 = 51153
          $t2mon2 = 51154
          $t2mon3 = 51162
          $t3mon1 = 51173
          $t3mon2 = 51174
          $t3mon3 = 51182
		if $whiteB == 1
			if $blackB == 0
				$blackB_ID = GetEctypeVar( -1, 113)
				RemoveMonster($blackB_ID)
                    if $lang == 1
                         BC( "chat" , "player" , -1 , "[color=FF22E974]Iceoper đã trốn thoát cùng với Kho Báu Razill [color=ffB54ECA]Cổng đến Vương Toạ để mở")
                    endif
                    if $lang == 2
                         BC( "chat" , "player" , -1 , "[color=FF22E974]Iceoper has escaped with Razill's Treasure [color=ffB54ECA]The portal to the King's Throne has appeared")
                    endif		
                    AddNPC(1923, -1)
				AddNPC(1924, -1)
				$Dif = GetEctypeVar( -1, 0)
				if $Dif == 2
                         AddMonster( $t1mon1, 30,$ectID, 50, 52, 20 )
                         AddMonster( $t1mon2, 10,$ectID, 39, 37, 15 )
                         AddMonster( $t1mon3, 1,$ectID, 34, 35, 0 )
                    endif
                    if $Dif == 0
					AddMonster( $t2mon1, 30,$ectID, 50, 52, 20 )
					AddMonster( $t2mon2, 10,$ectID, 39, 37, 15 )
					AddMonster( $t2mon3, 1,$ectID, 34, 35, 0 )				
                    endif
                    if $Dif == 1
                         AddMonster( $t3mon1, 30,$ectID, 50, 52, 20 )
                         AddMonster( $t3mon2, 10,$ectID, 39, 37, 15 )
                         AddMonster( $t3mon3, 1,$ectID, 34, 35, 0 )
				endif
			endif
		else
			if $blackB == 1
				$whiteB_ID = GetEctypeVar( -1, 112)
				RemoveMonster($whiteB_ID)
                    if $lang == 1
                         BC( "chat" , "player" , -1 , "[color=FF22E974]Oroine đã trốn thoát cùng với Kho Báu Razill [color=ffB54ECA]Cổng đến Vương Toạ để mở")
                    endif
                    if $lang == 2
                         BC( "chat" , "player" , -1 , "[color=FF22E974]Oroine has escaped with Razill's Treasure [color=ffB54ECA]The portal to the King's Throne has appeared")
                    endif                    				
				AddNPC(1923, -1)
				AddNPC(1924, -1)
				$Dif = GetEctypeVar( -1, 0)
				if $Dif == 2
                         AddMonster( $t1mon1, 30,$ectID, 50, 52, 20 )
                         AddMonster( $t1mon2, 10,$ectID, 39, 37, 15 )
                         AddMonster( $t1mon3, 1,$ectID, 34, 35, 0 )
                    endif
                    if $Dif == 0
					AddMonster( $t2mon1, 30,$ectID, 50, 52, 20 )
					AddMonster( $t2mon2, 10,$ectID, 39, 37, 15 )
					AddMonster( $t2mon3, 1,$ectID, 34, 35, 0 )				
                    endif
                    if $Dif == 1
                         AddMonster( $t3mon1, 30,$ectID, 50, 52, 20 )
                         AddMonster( $t3mon2, 10,$ectID, 39, 37, 15 )
                         AddMonster( $t3mon3, 1,$ectID, 34, 35, 0 )
				endif
			endif
		endif
	
	}
	
	function EctypeTime6(){
		$lang = GetPlayerVar(-1, 3301)
		$ectID = GetEctypeID( -1, 223)
		SetEctypeVar( -1, 110,4)
		SetEctypeVar( -1, 111,29)
		
		$whiteB = GetEctypeVar( -1, 1)
		$blackB = GetEctypeVar( -1, 2)
		
		if $whiteB == 1
			if $blackB == 0
				StartEctypeTimer( -1, 2)
				StartEctypeTimer( -1, 3)
				StartEctypeTimer( -1, 4)
                    if $lang == 1
                         BC( "chat" , "player" , -1 , "[color=FF22E974]Iceoper sẽ thoát cùng với Kho Báu Razill [color=ffB54ECA]sau 5 phút")
                    endif
                    if $lang == 2
                         BC( "chat" , "player" , -1 , "[color=FF22E974]Iceoper will escaped with Razill's Treasure [color=ffB54ECA]in 5 minutes")
                    endif
			endif
		else
			if $blackB == 1
				StartEctypeTimer( -1, 2)
				StartEctypeTimer( -1, 3)
				StartEctypeTimer( -1, 4)
                    if $lang == 1
                         BC( "chat" , "player" , -1 , "[color=FF22E974]Oroine sẽ thoát cùng với Kho Báu Razill [color=ffB54ECA]sau 5 phút")
                    endif
                    if $lang == 2
                         BC( "chat" , "player" , -1 , "[color=FF22E974]Oroine will escaped with Razill's Treasure [color=ffB54ECA]in 5 minutes")
                    endif
			endif
		endif

	}
