	function OnCreate(){
		DeleteNPC(1900, -1)
		DeleteNPC(1901, -1)
		DeleteNPC(1904, -1)
		DeleteNPC(1909, -1)
	}

	
	function InitTimer(){
          SetEctypeTimer(0, 2, "EctypeTime1")
          SetEctypeTimer(1, 5, "EctypeTime2")
          SetEctypeTimer(2, 5, "EctypeTime3")
          SetEctypeTimer(3, 5, "EctypeTime4")
          SetEctypeTimer(4, 5, "EctypeTime5")
          SetEctypeTimer(5, 5, "EctypeTime6")
	}
	

	function EctypeTime1(){
          $emon1 = 51441
          $emon2 = 51442
          $hmon1 = 51101
          $hmon2 = 51102
          $nmon1 = 51121
          $nmon2 = 51122
		$Dif = GetEctypeVar(-1 ,0)
		$ectID = GetEctypeID(-1 ,222)

		if $Dif == 0
               AddMonster( $emon1, 3, $ectID, 75, 85 , 3 )
               AddMonster( $emon1, 3, $ectID, 72, 86,  4 )
               AddMonster( $emon1, 4, $ectID, 70, 90,  5 )				
               AddMonster( $emon2, 10,$ectID, 64, 88,  7 )
          endif
          if $Dif == 1
			AddMonster( $hmon1, 3, $ectID, 75, 85 , 3 )
			AddMonster( $hmon1, 3, $ectID, 72, 86,  4 )
			AddMonster( $hmon1, 4, $ectID, 70, 90,  5 )			
			AddMonster( $hmon2, 10,$ectID, 64, 88,  7 )
		endif
          if $Dif == 2
               AddMonster( $nmon1, 3, $ectID, 75, 85 , 3 )
               AddMonster( $nmon1, 3, $ectID, 72, 86,  4 )
               AddMonster( $nmon1, 4, $ectID, 70, 90,  5 )				
               AddMonster( $nmon2, 10,$ectID, 64, 88,  7 )   	
		endif
		BC("screen", "map", $ectID, "Well, well!  Invaders!  Scouts, go and have a look...")	
	}


	function EctypeTime2(){
		$ectID = GetEctypeID(-1 ,222)
		$Dif = GetEctypeVar(-1 ,0)
          $emon1 = 51441
          $emon2 = 51442
          $hmon1 = 51101
          $hmon2 = 51102
          $nmon1 = 51121
          $nmon2 = 51122
		if $Dif == 0
               AddMonster( $emon2,10 ,$ectID, 64, 88,  7 )			
		endif
          if $Dif == 1
               AddMonster( $hmon2,10 ,$ectID, 64, 88,  7 )
          endif
          if $Dif == 2
               AddMonster( $nmon2,10 ,$ectID, 64, 88,  7 )
          endif
		BC("screen", "map", $ectID, "Armond: Go, kill them!")
	}
	
	function EctypeTime3(){
		$ectID = GetEctypeID(-1 ,222)
		$Dif = GetEctypeVar(-1 ,0)
          $emon1 = 51441
          $emon2 = 51442
          $hmon1 = 51101
          $hmon2 = 51102
          $nmon1 = 51121
          $nmon2 = 51122
		if $Dif == 0
               AddMonster( $emon2,10 ,$ectID, 64, 88,  7 )
		endif
          if $Dif == 1
               AddMonster( $hmon2,10 ,$ectID, 64, 88,  7 )
          endif
          if $Dif == 2
               AddMonster( $nmon2,10 ,$ectID, 64, 88,  7 )
          endif
		BC("screen", "map", $ectID, "Armond: Come on! Don't give them a chance to  breathe!")
	}
	

	function EctypeTime4(){
		$ectID = GetEctypeID(-1 ,222)
		$Dif = GetEctypeVar(-1 ,0)
          $emon1 = 51441
          $emon2 = 51442
          $hmon1 = 51101
          $hmon2 = 51102
          $nmon1 = 51121
          $nmon2 = 51122
		if $Dif == 0
               AddMonster( $emon2,10 ,$ectID, 64, 88,  7 )			
		endif
          if $Dif == 1
               AddMonster( $hmon2,10 ,$ectID, 64, 88,  7 )
          endif
          if $Dif == 2
               AddMonster( $nmon2,10 ,$ectID, 64, 88,  7 )
          endif
		BC("screen", "map", $ectID, "Armond: Kill the invaders! Don't stop now!")
	}
	

	function EctypeTime5(){
		$ectID = GetEctypeID(-1 ,222)
		$Dif = GetEctypeVar(-1 ,0)
          $emon1 = 51441
          $emon2 = 51442
          $hmon1 = 51101
          $hmon2 = 51102
          $nmon1 = 51121
          $nmon2 = 51122
		if $Dif == 0
               AddMonster( $emon2,10 ,$ectID, 64, 88,  7 )			
		endif
          if $Dif == 1
               AddMonster( $hmon2,10 ,$ectID, 64, 88,  7 )
          endif
          if $Dif == 2
               AddMonster( $nmon2,10 ,$ectID, 64, 88,  7 )
          endif
		BC("screen", "map", $ectID, "Armond: You wimps! Do I have to do everything myself?!")
	}


	function EctypeTime6(){
		$ectID = GetEctypeID(-1 ,222)
		$Dif = GetEctypeVar(-1 ,0)
          $emon1 = 51441
          $emon2 = 51442
          $hmon1 = 51101
          $hmon2 = 51102
          $nmon1 = 51121
          $nmon2 = 51122
		if $Dif == 0     
                AddMonster( 51451, 1,$ectID, 64, 88,  0 )
		endif
          if $Dif == 1
                AddMonster( 51111, 1, $ectID, 64, 88,  0 )
          endif
          if $Dif == 2              
               AddMonster( 51131, 1,$ectID, 64, 88,  0 )
          endif
		BC("screen", "map", $ectID, "Armond: All right! Here I come!")
	}