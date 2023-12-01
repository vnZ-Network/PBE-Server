	function OnDead(){
		
		$mob1 = 51445
          $mob2 = 51105
          $mob3 = 51125
		$ectID = GetEctypeID(-1 ,222)
		SetEctypeVar(-1 ,4 , 1)
		$iskill = GetEctypeVar(-1 ,3 )
		$Dif = GetEctypeVar(-1 ,0)
		
		if $iskill == 1
			AddMonster( 51142, 1,$ectID, 55, 35,  0 )
			if $Dif == 0
				AddMonster( $mob1, 5,$ectID, 68, 50, 10 )
				AddMonster( $mob1, 5,$ectID, 63, 49, 10 )
               endif
               if $Dif == 1
				AddMonster( $mob2, 5,$ectID, 68, 50, 10 )
				AddMonster( $mob2, 5,$ectID, 63, 49, 10 )
               endif
               if $Dif == 2
				AddMonster( $mob3, 5,$ectID, 68, 50, 10 )
				AddMonster( $mob3, 5,$ectID, 63, 49, 10 )
               endif
		else
			BC("screen", "map", $ectID, "Chivera: Jocart... you avenge me... yes...?")
		endif
	}
		
