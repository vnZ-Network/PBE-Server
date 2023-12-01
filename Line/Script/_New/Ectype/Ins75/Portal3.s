	function OnRequest(){
		$ectID = GetEctypeID( -1 ,232 )
		
		$stage0 = GetEctypeVar( -1, 3 )
		if $stage0 == 1
			DisableNpcOption(0)
		endif
		
		$stage = GetEctypeVar( -1, 0 )
		if $stage != 1
			$stage = GetEctypeVar( -1, 119 )
			if $stage != 1
				DisableNpcOption(0)
			endif
		endif
		
	}

	function OnOption0(){
          $lang = GetPlayerVar(-1, 3301)
		$ectID = GetEctypeID( -1 ,232 )
		
		$stage0 = GetEctypeVar( -1, 3 )
		if $stage0 == 1
			BC( "dialogbox", "player", -1, "Portal has been shut down." )
			return
		endif
		
		$stage = GetEctypeVar( -1, 0 )
		if $stage == 1
			FlyToMap( -1, $ectID, 51, 61 )
			BC( "screen", "player", -1, "Once through this portal, you cannot return! Portals only operate one way." )
			return
		endif
		
		$stage = GetEctypeVar( -1, 119 )
		if $stage != 1
			BC( "dialogbox", "player", -1, "BOSS in the room has not been killed. Unable to pass." )
			return
		endif
		
		$leaderID = GetTeamHeaderID( -1 )
		$playerID = GetPlayerID()

		if $playerID != $leaderID
			if $lang == 1
				BC( "messagebox", "player", -1, "{#FFF23805=Bạn không phải đội trưởng#}" )
			endif
			if $lang == 2
				BC( "messagebox", "player", -1, "{#FFF23805=You're not party Leader#}" )
			endif
		     return
		endif
	
		$size = GetTeamAreaSize( -1 )
		if $size > 10
			if $lang == 1
				BC( "messagebox", "player", -1, "{#FFF23805=Đồng đội đứng quá xa#}" )
			endif
			if $lang == 2
				BC( "messagebox", "player", -1, "{#FFF23805=Your party member is too far#}" )
			endif
		     return
		endif

		$mem1ID =  GetTeamMemberID( -1, 0 )
		$mem2ID =  GetTeamMemberID( -1, 1 )
		$mem3ID =  GetTeamMemberID( -1, 2 )
		$mem4ID =  GetTeamMemberID( -1, 3 )
		$mem5ID =  GetTeamMemberID( -1, 4 )
		$mem6ID =  GetTeamMemberID( -1, 5 )
		
		FlyToMap( $mem1ID, $ectID, 51, 61 )
		FlyToMap( $mem2ID, $ectID, 51, 61 )
		FlyToMap( $mem3ID, $ectID, 51, 61 )
		FlyToMap( $mem4ID, $ectID, 51, 61 )
		FlyToMap( $mem5ID, $ectID, 51, 61 )
		FlyToMap( $mem6ID, $ectID, 51, 61 )
		SetEctypeVar( -1, 0, 1 )
		BC( "screen", "map", $ectID, "Once through this portal, you cannot return! Portals only operate one way." )
		
		$Dif = GetEctypeVar( -1, 4 )
		$stage = GetEctypeVar( -1, 110 )
		if $stage == 1
			$Rad = RandomNumber( 1, 3 )
			if $Rad == 1
				SetEctypeVar( -1, 111, 2 )
                    call Stage2()
			endif
			if $Rad == 2
				SetEctypeVar( -1, 111, 3 )
				call Stage3()
			endif
			if $Rad == 3
				SetEctypeVar( -1, 111, 4 )
				call Stage4()
			endif
		endif
		if $stage == 2
			$Rad = RandomNumber( 1, 3 )
			if $Rad == 1
				SetEctypeVar( -1, 111, 1 )
				call Stage1()
			endif
			if $Rad == 2
				SetEctypeVar( -1, 111, 3 )
				call Stage3()
			endif
			if $Rad == 3
				SetEctypeVar( -1, 111, 4 )
				call Stage4()
			endif
		endif
		if $stage == 3
			$Rad = RandomNumber( 1, 3 )
			if $Rad == 1
				SetEctypeVar( -1, 111, 1 )
				call Stage1()
			endif
			if $Rad == 2
				SetEctypeVar( -1, 111, 2 )
				call Stage2()
			endif
			if $Rad == 3
				SetEctypeVar( -1, 111, 4 )
				call Stage4()
			endif
		endif
		if $stage == 4
			$Rad = RandomNumber( 1, 3 )
			if $Rad == 1
				SetEctypeVar( -1, 111, 1 )
				call Stage1()
			endif
			if $Rad == 2
				SetEctypeVar( -1, 111, 2 )
				call Stage2()
			endif
			if $Rad == 3
				SetEctypeVar( -1, 111, 3 )
				call Stage3()
			endif
		endif
	}

     function Stage1(){
          AddNPC( 1994, $ectID )
		AddNPC( 1995, $ectID )
		AddNPC( 1996, $ectID )
		AddNPC( 1997, $ectID )
     }

     function Stage2(){
          $s1mon1 = 51228
          $s1mon2 = 51231
          $s2mon1 = 61038
          $s2mon2 = 61041
          $s3mon1 = 61058
          $s3mon2 = 61061
          $ectID = GetEctypeID( -1 ,232 )
          $Dif = GetEctypeVar( -1, 4 ) 
          if $Dif == 0
               AddMonster( $s1mon1, 20, $ectID, 56, 47 , 10 )
               AddMonster( $s1mon1, 20, $ectID, 47, 56 , 10 )
               AddMonster( $s1mon1, 10, $ectID, 55, 55 , 6 )
               $Rand = RandomNumber( 1, 5 )
               if $Rand == 1
                    AddMonster( $s1mon2, 1, $ectID, 56, 45 , 0 )
               endif
               if $Rand == 2
                    AddMonster( $s1mon2, 1, $ectID, 56, 51 , 0 )
               endif
               if $Rand == 3
                    AddMonster( $s1mon2, 1, $ectID, 51, 51 , 0 )
               endif
               if $Rand == 4
                    AddMonster( $s1mon2, 1, $ectID, 47, 53 , 0 )
               endif
               if $Rand == 5
                    AddMonster( $s1mon2, 1, $ectID, 47, 56 , 0 )
               endif
          endif
          if $Dif == 1
               AddMonster( $s2mon1, 20, $ectID, 56, 47 , 10 )
               AddMonster( $s2mon1, 20, $ectID, 47, 56 , 10 )
               AddMonster( $s2mon1, 10, $ectID, 55, 55 , 6 )
               $Rand = RandomNumber( 1, 5 )
               if $Rand == 1
                    AddMonster( $s2mon2, 1, $ectID, 56, 45 , 0 )
               endif
               if $Rand == 2
                    AddMonster( $s2mon2, 1, $ectID, 56, 51 , 0 )
               endif
               if $Rand == 3
                    AddMonster( $s2mon2, 1, $ectID, 51, 51 , 0 )
               endif
               if $Rand == 4
                    AddMonster( $s2mon2, 1, $ectID, 47, 53 , 0 )
               endif
               if $Rand == 5
                    AddMonster( $s2mon2, 1, $ectID, 47, 56 , 0 )
               endif
          endif
          if $Dif == 2
               AddMonster( $s3mon1, 20, $ectID, 56, 47 , 10 )
               AddMonster( $s3mon1, 20, $ectID, 47, 56 , 10 )
               AddMonster( $s3mon1, 10, $ectID, 55, 55 , 6 )
               $Rand = RandomNumber( 1, 5 )
               if $Rand == 1
                    AddMonster( $s3mon2, 1, $ectID, 56, 45 , 0 )
               endif
               if $Rand == 2
                    AddMonster( $s3mon2, 1, $ectID, 56, 51 , 0 )
               endif
               if $Rand == 3
                    AddMonster( $s3mon2, 1, $ectID, 51, 51 , 0 )
               endif
               if $Rand == 4
                    AddMonster( $s3mon2, 1, $ectID, 47, 53 , 0 )
               endif
               if $Rand == 5
                    AddMonster( $s3mon2, 1, $ectID, 47, 56 , 0 )
               endif
          endif          
     }


     function Stage3(){
          $ectID = GetEctypeID( -1 ,232 )
          $Dif = GetEctypeVar( -1, 4 )
          $mon1 = 51229
          $mon2 = 61039
          $mon3 = 61059
          if $Dif == 0
               AddMonster( $mon1, 20, $ectID, 56, 47 , 9 )
               AddMonster( $mon1, 20, $ectID, 47, 56 , 9 )
               AddMonster( $mon1, 10, $ectID, 55, 55 , 6 )
          endif
          if $Dif == 1
               AddMonster( $mon2, 20, $ectID, 56, 47 , 9 )
               AddMonster( $mon2, 20, $ectID, 47, 56 , 9 )
               AddMonster( $mon2, 10, $ectID, 55, 55 , 6 )
          endif
          if $Dif == 2
               AddMonster( $mon3, 20, $ectID, 56, 47 , 9 )
               AddMonster( $mon3, 20, $ectID, 47, 56 , 9 )
               AddMonster( $mon3, 10, $ectID, 55, 55 , 6 )
          endif   
     }

     function Stage4(){
          $ectID = GetEctypeID( -1 ,232 )
          $Dif = GetEctypeVar( -1, 4 )     
          $mon1 = 51225
          $mon2 = 61035
          $mon3 = 61055
          if $Dif == 0
               AddMonster( $mon1, 1, $ectID, 56, 47 , 0 )
          endif
          if $Dif == 1
               AddMonster( $mon2, 1, $ectID, 56, 47 , 0 )
          endif
          if $Dif == 2
               AddMonster( $mon3, 1, $ectID, 56, 47 , 0 )
          endif 
     }     