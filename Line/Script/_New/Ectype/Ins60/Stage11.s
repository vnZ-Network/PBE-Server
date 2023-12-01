	function OnDead(){
		$ectID = GetEctypeID(-1 ,222)
		$Dif = GetEctypeVar(-1 ,0)
		$HP = GetPlayerInfo(-1 ,"hp")
		$sub_HP = $HP / 10
		SubPlayerInfo(-1 ,"hp" , $sub_HP)
		#name = GetPlayerInfo(-1 ,"name")
          $mob1 = 51455
          $mob2 = 51115
          $mob3 = 51135
		if $Dif == 0
			AddMonster( $mob1, 1,$ectID, 54, 36,  0 )
		endif
          if $Dif == 1
               AddMonster( $mob2, 1,$ectID, 54, 36,  0 )
          endif
          if $Dif == 2
               AddMonster( $mob3, 1,$ectID, 54, 36,  0 )
          endif

		
	}