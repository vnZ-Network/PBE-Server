	function OnRequest(){
		$ectID = GetEctypeID( -1 ,232 )
		
		$stage = GetEctypeVar( -1, 119 )
		if $stage == 2
               $stage1 = GetEctypeVar( -1, 2 )
               if $stage1 == 1
                    DisableNpcOption(0)
               endif
		else
               if $stage == 3
               else
                    DisableNpcOption(0)
               endif
		endif
	}
	
	function OnOption0(){
          $s2mon11 = 51228
          $s2mon12 = 51231
          $s2mon21 = 61038
          $s2mon22 = 61041
          $s2mon31 = 61058
          $s2mon32 = 61061

          $s3mon1 = 51229
          $s3mon2 = 61039
          $s3mon3 = 61059

          $s4mon1 = 51225
          $s4mon2 = 61035
          $s4mon3 = 61055
          $lang = GetPlayerVar(-1, 3301)
		$ectID = GetEctypeID( -1 ,232 )		
		$stage = GetEctypeVar( -1, 1 )
		if $stage == 1
			$stage0 = GetEctypeVar( -1, 117 )
			if $stage0 == 1
				FlyToMap( -1, $ectID, 75, 66 )
				BC( "screen", "player", -1, "Once through this portal, you cannot return! Portals only operate one way." )
				return
			endif
			if $stage0 == 2
				FlyToMap( -1, $ectID, 76, 61 )
				BC( "screen", "player", -1, "Once through this portal, you cannot return! Portals only operate one way." )
				return
			endif
		endif
		
		$stage = GetEctypeVar( -1, 119 )
		if $stage == 2
               $stage1 = GetEctypeVar( -1, 2 )
               if $stage1 == 1
                    BC( "dialogbox", "player", -1, "BOSS in the room has not been killed. Unable to pass." )
                    return
               endif
		else
			if $stage == 3
			else
				BC( "dialogbox", "player", -1, "BOSS in the room has not been killed. Unable to pass." )
				return
			endif
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
		
		$mem1_id =  GetTeamMemberID( -1, 0 )
		$mem2_id =  GetTeamMemberID( -1, 1 )
		$mem3_id =  GetTeamMemberID( -1, 2 )
		$mem4_id =  GetTeamMemberID( -1, 3 )
		$mem5_id =  GetTeamMemberID( -1, 4 )
		$mem6_id =  GetTeamMemberID( -1, 5 )
		
		$stage0 = GetEctypeVar( -1, 2 )
		if $stage0 == 1
			FlyToMap( $mem1_id, $ectID, 75, 66 )
			FlyToMap( $mem2_id, $ectID, 75, 66 )
			FlyToMap( $mem3_id, $ectID, 75, 66 )
			FlyToMap( $mem4_id, $ectID, 75, 66 )
			FlyToMap( $mem5_id, $ectID, 75, 66 )
			FlyToMap( $mem6_id, $ectID, 75, 66 )
			SetEctypeVar( -1, 117, 1 )
			BC( "screen", "map", $ectID, "Once through this portal, you cannot return! Portals only operate one way." )
		else
			FlyToMap( $mem1_id, $ectID, 76, 61 )
			FlyToMap( $mem2_id, $ectID, 76, 61 )
			FlyToMap( $mem3_id, $ectID, 76, 61 )
			FlyToMap( $mem4_id, $ectID, 76, 61 )
			FlyToMap( $mem5_id, $ectID, 76, 61 )
			FlyToMap( $mem6_id, $ectID, 76, 61 )
			SetEctypeVar( -1, 117, 2 )
			BC( "screen", "map", $ectID, "Once through this portal, you cannot return! Portals only operate one way." )
		endif
		SetEctypeVar( -1, 1, 1 )
	
	$Dif = GetEctypeVar( -1, 4 )
	$stage0 = GetEctypeVar( -1, 2 )
	if $stage0 != 1	
		$stage1 = GetEctypeVar( -1, 110 )
		$stage2 = GetEctypeVar( -1, 111 )
		if $stage1 == 1
			if $stage2 == 2
				$Rad = RandomNumber( 1, 2 )
				if $Rad == 1
					SetEctypeVar( -1, 112, 3 )
					if $Dif == 0
                              AddMonster( $s3mon1, 20, $ectID, 80, 56 , 9 )
                              AddMonster( $s3mon1, 20, $ectID, 71, 48 , 9 )
                              AddMonster( $s3mon1, 10, $ectID, 71, 56 , 6 )
                         endif
                         if $Dif == 1
                              AddMonster( $s3mon2, 20, $ectID, 80, 56 , 9 )
                              AddMonster( $s3mon2, 20, $ectID, 71, 48 , 9 )
                              AddMonster( $s3mon2, 10, $ectID, 71, 56 , 6 )
                         endif
                         if $Dif == 2
                              AddMonster( $s3mon3, 20, $ectID, 80, 56 , 9 )
                              AddMonster( $s3mon3, 20, $ectID, 71, 48 , 9 )
                              AddMonster( $s3mon3, 10, $ectID, 71, 56 , 6 )
                         endif
				endif
				if $Rad == 2
					SetEctypeVar( -1, 112, 4 )
                         if $Dif == 0
                              AddMonster( $s4mon1, 1, $ectID, 80, 56 , 0 )
                         endif
                         if $Dif == 1
                              AddMonster( $s4mon2, 1, $ectID, 80, 56 , 0 )
                         endif
                         if $Dif == 2
                              AddMonster( $s4mon3, 1, $ectID, 80, 56 , 0 )
                         endif
				endif
			endif
		endif
		if $stage1 == 1
			if $stage2 == 3
				$Rad = RandomNumber( 1, 2 )
				if $Rad == 1
					SetEctypeVar( -1, 112, 2 )
                         if $Dif == 0
                              AddMonster( $s2mon11, 20, $ectID, 80, 56 , 10 )
                              AddMonster( $s2mon11, 20, $ectID, 71, 48 , 10 )
                              AddMonster( $s2mon11, 10, $ectID, 71, 56 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon12, 1, $ectID, 73, 47 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon12, 1, $ectID, 73, 53 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon12, 1, $ectID, 77, 52 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon12, 1, $ectID, 82, 54 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon12, 1, $ectID, 72, 55 , 0 )
                              endif
                         endif
                         if $Dif == 1
                              AddMonster( $s2mon21, 20, $ectID, 80, 56 , 10 )
                              AddMonster( $s2mon21, 20, $ectID, 71, 48 , 10 )
                              AddMonster( $s2mon21, 10, $ectID, 71, 56 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon22, 1, $ectID, 73, 47 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon22, 1, $ectID, 73, 53 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon22, 1, $ectID, 77, 52 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon22, 1, $ectID, 82, 54 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon22, 1, $ectID, 72, 55 , 0 )
                              endif
                         endif
                         if $Dif == 2
                              AddMonster( $s2mon31, 20, $ectID, 80, 56 , 10 )
                              AddMonster( $s2mon31, 20, $ectID, 71, 48 , 10 )
                              AddMonster( $s2mon31, 10, $ectID, 71, 56 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon32, 1, $ectID, 73, 47 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon32, 1, $ectID, 73, 53 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon32, 1, $ectID, 77, 52 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon32, 1, $ectID, 82, 54 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon32, 1, $ectID, 72, 55 , 0 )
                              endif
                         endif
				endif
				if $Rad == 2
					SetEctypeVar( -1, 112, 4 )
                         if $Dif == 0
                              AddMonster( $s4mon1, 1, $ectID, 80, 56 , 0 )
                         endif
                         if $Dif == 1
                              AddMonster( $s4mon2, 1, $ectID, 80, 56 , 0 )
                         endif
                         if $Dif == 2
                              AddMonster( $s4mon3, 1, $ectID, 80, 56 , 0 )
                         endif
				endif
			endif
		endif
		if $stage1 == 1
			if $stage2 == 4
				$Rad = RandomNumber( 1, 2 )
				if $Rad == 1
					SetEctypeVar( -1, 112, 3 )
					if $Dif == 0
                              AddMonster( $s3mon1, 20, $ectID, 80, 56 , 9 )
                              AddMonster( $s3mon1, 20, $ectID, 71, 48 , 9 )
                              AddMonster( $s3mon1, 10, $ectID, 71, 56 , 6 )
                         endif
                         if $Dif == 1
                              AddMonster( $s3mon2, 20, $ectID, 80, 56 , 9 )
                              AddMonster( $s3mon2, 20, $ectID, 71, 48 , 9 )
                              AddMonster( $s3mon2, 10, $ectID, 71, 56 , 6 )
                         endif
                         if $Dif == 2
                              AddMonster( $s3mon3, 20, $ectID, 80, 56 , 9 )
                              AddMonster( $s3mon3, 20, $ectID, 71, 48 , 9 )
                              AddMonster( $s3mon3, 10, $ectID, 71, 56 , 6 )
                         endif
				endif
				if $Rad == 2
					SetEctypeVar( -1, 112, 2 )
                         if $Dif == 0
                              AddMonster( $s2mon11, 20, $ectID, 80, 56 , 10 )
                              AddMonster( $s2mon11, 20, $ectID, 71, 48 , 10 )
                              AddMonster( $s2mon11, 10, $ectID, 71, 56 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon12, 1, $ectID, 73, 47 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon12, 1, $ectID, 73, 53 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon12, 1, $ectID, 77, 52 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon12, 1, $ectID, 82, 54 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon12, 1, $ectID, 72, 55 , 0 )
                              endif
                         endif
                         if $Dif == 1
                              AddMonster( $s2mon21, 20, $ectID, 80, 56 , 10 )
                              AddMonster( $s2mon21, 20, $ectID, 71, 48 , 10 )
                              AddMonster( $s2mon21, 10, $ectID, 71, 56 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon22, 1, $ectID, 73, 47 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon22, 1, $ectID, 73, 53 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon22, 1, $ectID, 77, 52 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon22, 1, $ectID, 82, 54 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon22, 1, $ectID, 72, 55 , 0 )
                              endif
                         endif
                         if $Dif == 2
                              AddMonster( $s2mon31, 20, $ectID, 80, 56 , 10 )
                              AddMonster( $s2mon31, 20, $ectID, 71, 48 , 10 )
                              AddMonster( $s2mon31, 10, $ectID, 71, 56 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon32, 1, $ectID, 73, 47 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon32, 1, $ectID, 73, 53 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon32, 1, $ectID, 77, 52 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon32, 1, $ectID, 82, 54 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon32, 1, $ectID, 72, 55 , 0 )
                              endif
                         endif
				endif
			endif
		endif
		if $stage1 == 2
			if $stage2 == 1
				$Rad = RandomNumber( 1, 2 )
				if $Rad == 1
					SetEctypeVar( -1, 112, 3 )
					if $Dif == 0
                              AddMonster( $s3mon1, 20, $ectID, 80, 56 , 9 )
                              AddMonster( $s3mon1, 20, $ectID, 71, 48 , 9 )
                              AddMonster( $s3mon1, 10, $ectID, 71, 56 , 6 )
                         endif
                         if $Dif == 1
                              AddMonster( $s3mon2, 20, $ectID, 80, 56 , 9 )
                              AddMonster( $s3mon2, 20, $ectID, 71, 48 , 9 )
                              AddMonster( $s3mon2, 10, $ectID, 71, 56 , 6 )
                         endif
                         if $Dif == 2
                              AddMonster( $s3mon3, 20, $ectID, 80, 56 , 9 )
                              AddMonster( $s3mon3, 20, $ectID, 71, 48 , 9 )
                              AddMonster( $s3mon3, 10, $ectID, 71, 56 , 6 )
                         endif
				endif
				if $Rad == 2
					SetEctypeVar( -1, 112, 4 )
                         if $Dif == 0
                              AddMonster( $s4mon1, 1, $ectID, 80, 56 , 0 )
                         endif
                         if $Dif == 1
                              AddMonster( $s4mon2, 1, $ectID, 80, 56 , 0 )
                         endif
                         if $Dif == 2
                              AddMonster( $s4mon3, 1, $ectID, 80, 56 , 0 )
                         endif
				endif
			endif
		endif
		if $stage1 == 2
			if $stage2 == 3
				$Rad = RandomNumber( 1, 2 )
				if $Rad == 1
					SetEctypeVar( -1, 112, 1 )
					AddNPC( 1990, $ectID )
					AddNPC( 1991, $ectID )
					AddNPC( 1992, $ectID )
					AddNPC( 1993, $ectID )
					
				endif
				if $Rad == 2
					SetEctypeVar( -1, 112, 4 )
                         if $Dif == 0
                              AddMonster( $s4mon1, 1, $ectID, 80, 56 , 0 )
                         endif
                         if $Dif == 1
                              AddMonster( $s4mon2, 1, $ectID, 80, 56 , 0 )
                         endif
                         if $Dif == 2
                              AddMonster( $s4mon3, 1, $ectID, 80, 56 , 0 )
                         endif
				endif
			endif
		endif
		if $stage1 == 2
			if $stage2 == 4
				$Rad = RandomNumber( 1, 2 )
				if $Rad == 1
					SetEctypeVar( -1, 112, 3 )
					if $Dif == 0
                              AddMonster( $s3mon1, 20, $ectID, 80, 56 , 9 )
                              AddMonster( $s3mon1, 20, $ectID, 71, 48 , 9 )
                              AddMonster( $s3mon1, 10, $ectID, 71, 56 , 6 )
                         endif
                         if $Dif == 1
                              AddMonster( $s3mon2, 20, $ectID, 80, 56 , 9 )
                              AddMonster( $s3mon2, 20, $ectID, 71, 48 , 9 )
                              AddMonster( $s3mon2, 10, $ectID, 71, 56 , 6 )
                         endif
                         if $Dif == 2
                              AddMonster( $s3mon3, 20, $ectID, 80, 56 , 9 )
                              AddMonster( $s3mon3, 20, $ectID, 71, 48 , 9 )
                              AddMonster( $s3mon3, 10, $ectID, 71, 56 , 6 )
                         endif
				endif
				if $Rad == 2
					SetEctypeVar( -1, 112, 1 )
					AddNPC( 1990, $ectID )
					AddNPC( 1991, $ectID )
					AddNPC( 1992, $ectID )
					AddNPC( 1993, $ectID )
					
				endif
			endif
		endif
		if $stage1 == 3
			if $stage2 == 1
				$Rad = RandomNumber( 1, 2 )
				if $Rad == 1
					SetEctypeVar( -1, 112, 2 )
                         if $Dif == 0
                              AddMonster( $s2mon11, 20, $ectID, 80, 56 , 10 )
                              AddMonster( $s2mon11, 20, $ectID, 71, 48 , 10 )
                              AddMonster( $s2mon11, 10, $ectID, 71, 56 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon12, 1, $ectID, 73, 47 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon12, 1, $ectID, 73, 53 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon12, 1, $ectID, 77, 52 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon12, 1, $ectID, 82, 54 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon12, 1, $ectID, 72, 55 , 0 )
                              endif
                         endif
                         if $Dif == 1
                              AddMonster( $s2mon21, 20, $ectID, 80, 56 , 10 )
                              AddMonster( $s2mon21, 20, $ectID, 71, 48 , 10 )
                              AddMonster( $s2mon21, 10, $ectID, 71, 56 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon22, 1, $ectID, 73, 47 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon22, 1, $ectID, 73, 53 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon22, 1, $ectID, 77, 52 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon22, 1, $ectID, 82, 54 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon22, 1, $ectID, 72, 55 , 0 )
                              endif
                         endif
                         if $Dif == 2
                              AddMonster( $s2mon31, 20, $ectID, 80, 56 , 10 )
                              AddMonster( $s2mon31, 20, $ectID, 71, 48 , 10 )
                              AddMonster( $s2mon31, 10, $ectID, 71, 56 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon32, 1, $ectID, 73, 47 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon32, 1, $ectID, 73, 53 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon32, 1, $ectID, 77, 52 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon32, 1, $ectID, 82, 54 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon32, 1, $ectID, 72, 55 , 0 )
                              endif
                         endif
				endif
				if $Rad == 2
					SetEctypeVar( -1, 112, 4 )
                         if $Dif == 0
                              AddMonster( $s4mon1, 1, $ectID, 80, 56 , 0 )
                         endif
                         if $Dif == 1
                              AddMonster( $s4mon2, 1, $ectID, 80, 56 , 0 )
                         endif
                         if $Dif == 2
                              AddMonster( $s4mon3, 1, $ectID, 80, 56 , 0 )
                         endif
				endif
			endif
		endif
		if $stage1 == 3
			if $stage2 == 2
				$Rad = RandomNumber( 1, 2 )
				if $Rad == 1
					SetEctypeVar( -1, 112, 1 )
					AddNPC( 1990, $ectID )
					AddNPC( 1991, $ectID )
					AddNPC( 1992, $ectID )
					AddNPC( 1993, $ectID )
					
				endif
				if $Rad == 2
					SetEctypeVar( -1, 112, 4 )
                         if $Dif == 0
                              AddMonster( $s4mon1, 1, $ectID, 80, 56 , 0 )
                         endif
                         if $Dif == 1
                              AddMonster( $s4mon2, 1, $ectID, 80, 56 , 0 )
                         endif
                         if $Dif == 2
                              AddMonster( $s4mon3, 1, $ectID, 80, 56 , 0 )
                         endif
				endif
			endif
		endif
		if $stage1 == 3
			if $stage2 == 4
				$Rad = RandomNumber( 1, 2 )
				if $Rad == 1
					SetEctypeVar( -1, 112, 1 )
					AddNPC( 1990, $ectID )
					AddNPC( 1991, $ectID )
					AddNPC( 1992, $ectID )
					AddNPC( 1993, $ectID )
					
				endif
				if $Rad == 2
					SetEctypeVar( -1, 112, 2 )
                         if $Dif == 0
                              AddMonster( $s2mon11, 20, $ectID, 80, 56 , 10 )
                              AddMonster( $s2mon11, 20, $ectID, 71, 48 , 10 )
                              AddMonster( $s2mon11, 10, $ectID, 71, 56 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon12, 1, $ectID, 73, 47 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon12, 1, $ectID, 73, 53 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon12, 1, $ectID, 77, 52 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon12, 1, $ectID, 82, 54 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon12, 1, $ectID, 72, 55 , 0 )
                              endif
                         endif
                         if $Dif == 1
                              AddMonster( $s2mon21, 20, $ectID, 80, 56 , 10 )
                              AddMonster( $s2mon21, 20, $ectID, 71, 48 , 10 )
                              AddMonster( $s2mon21, 10, $ectID, 71, 56 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon22, 1, $ectID, 73, 47 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon22, 1, $ectID, 73, 53 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon22, 1, $ectID, 77, 52 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon22, 1, $ectID, 82, 54 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon22, 1, $ectID, 72, 55 , 0 )
                              endif
                         endif
                         if $Dif == 2
                              AddMonster( $s2mon31, 20, $ectID, 80, 56 , 10 )
                              AddMonster( $s2mon31, 20, $ectID, 71, 48 , 10 )
                              AddMonster( $s2mon31, 10, $ectID, 71, 56 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon32, 1, $ectID, 73, 47 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon32, 1, $ectID, 73, 53 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon32, 1, $ectID, 77, 52 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon32, 1, $ectID, 82, 54 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon32, 1, $ectID, 72, 55 , 0 )
                              endif
                         endif
				endif
			endif
		endif
		if $stage1 == 4
			if $stage2 == 1
				$Rad = RandomNumber( 1, 2 )
				if $Rad == 1
					SetEctypeVar( -1, 112, 3 )
					if $Dif == 0
                              AddMonster( $s3mon1, 20, $ectID, 80, 56 , 9 )
                              AddMonster( $s3mon1, 20, $ectID, 71, 48 , 9 )
                              AddMonster( $s3mon1, 10, $ectID, 71, 56 , 6 )
                         endif
                         if $Dif == 1
                              AddMonster( $s3mon2, 20, $ectID, 80, 56 , 9 )
                              AddMonster( $s3mon2, 20, $ectID, 71, 48 , 9 )
                              AddMonster( $s3mon2, 10, $ectID, 71, 56 , 6 )
                         endif
                         if $Dif == 2
                              AddMonster( $s3mon3, 20, $ectID, 80, 56 , 9 )
                              AddMonster( $s3mon3, 20, $ectID, 71, 48 , 9 )
                              AddMonster( $s3mon3, 10, $ectID, 71, 56 , 6 )
                         endif
				endif
				if $Rad == 2
					SetEctypeVar( -1, 112, 2 )
                         if $Dif == 0
                              AddMonster( $s2mon11, 20, $ectID, 80, 56 , 10 )
                              AddMonster( $s2mon11, 20, $ectID, 71, 48 , 10 )
                              AddMonster( $s2mon11, 10, $ectID, 71, 56 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon12, 1, $ectID, 73, 47 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon12, 1, $ectID, 73, 53 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon12, 1, $ectID, 77, 52 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon12, 1, $ectID, 82, 54 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon12, 1, $ectID, 72, 55 , 0 )
                              endif
                         endif
                         if $Dif == 1
                              AddMonster( $s2mon21, 20, $ectID, 80, 56 , 10 )
                              AddMonster( $s2mon21, 20, $ectID, 71, 48 , 10 )
                              AddMonster( $s2mon21, 10, $ectID, 71, 56 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon22, 1, $ectID, 73, 47 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon22, 1, $ectID, 73, 53 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon22, 1, $ectID, 77, 52 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon22, 1, $ectID, 82, 54 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon22, 1, $ectID, 72, 55 , 0 )
                              endif
                         endif
                         if $Dif == 2
                              AddMonster( $s2mon31, 20, $ectID, 80, 56 , 10 )
                              AddMonster( $s2mon31, 20, $ectID, 71, 48 , 10 )
                              AddMonster( $s2mon31, 10, $ectID, 71, 56 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon32, 1, $ectID, 73, 47 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon32, 1, $ectID, 73, 53 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon32, 1, $ectID, 77, 52 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon32, 1, $ectID, 82, 54 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon32, 1, $ectID, 72, 55 , 0 )
                              endif
                         endif
				endif
			endif
		endif
		if $stage1 == 4
			if $stage2 == 2
				$Rad = RandomNumber( 1, 2 )
				if $Rad == 1
					SetEctypeVar( -1, 112, 1 )
					AddNPC( 1990, $ectID )
					AddNPC( 1991, $ectID )
					AddNPC( 1992, $ectID )
					AddNPC( 1993, $ectID )
					
				endif
				if $Rad == 2
					if $Dif == 0
                              AddMonster( $s3mon1, 20, $ectID, 80, 56 , 9 )
                              AddMonster( $s3mon1, 20, $ectID, 71, 48 , 9 )
                              AddMonster( $s3mon1, 10, $ectID, 71, 56 , 6 )
                         endif
                         if $Dif == 1
                              AddMonster( $s3mon2, 20, $ectID, 80, 56 , 9 )
                              AddMonster( $s3mon2, 20, $ectID, 71, 48 , 9 )
                              AddMonster( $s3mon2, 10, $ectID, 71, 56 , 6 )
                         endif
                         if $Dif == 2
                              AddMonster( $s3mon3, 20, $ectID, 80, 56 , 9 )
                              AddMonster( $s3mon3, 20, $ectID, 71, 48 , 9 )
                              AddMonster( $s3mon3, 10, $ectID, 71, 56 , 6 )
                         endif
				endif
			endif
		endif
		if $stage1 == 4
			if $stage2 == 3
				$Rad = RandomNumber( 1, 2 )
				if $Rad == 1
					SetEctypeVar( -1, 112, 1 )
					AddNPC( 1990, $ectID )
					AddNPC( 1991, $ectID )
					AddNPC( 1992, $ectID )
					AddNPC( 1993, $ectID )
					
				endif
				if $Rad == 2
					SetEctypeVar( -1, 112, 2 )
                         if $Dif == 0
                              AddMonster( $s2mon11, 20, $ectID, 80, 56 , 10 )
                              AddMonster( $s2mon11, 20, $ectID, 71, 48 , 10 )
                              AddMonster( $s2mon11, 10, $ectID, 71, 56 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon12, 1, $ectID, 73, 47 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon12, 1, $ectID, 73, 53 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon12, 1, $ectID, 77, 52 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon12, 1, $ectID, 82, 54 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon12, 1, $ectID, 72, 55 , 0 )
                              endif
                         endif
                         if $Dif == 1
                              AddMonster( $s2mon21, 20, $ectID, 80, 56 , 10 )
                              AddMonster( $s2mon21, 20, $ectID, 71, 48 , 10 )
                              AddMonster( $s2mon21, 10, $ectID, 71, 56 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon22, 1, $ectID, 73, 47 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon22, 1, $ectID, 73, 53 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon22, 1, $ectID, 77, 52 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon22, 1, $ectID, 82, 54 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon22, 1, $ectID, 72, 55 , 0 )
                              endif
                         endif
                         if $Dif == 2
                              AddMonster( $s2mon31, 20, $ectID, 80, 56 , 10 )
                              AddMonster( $s2mon31, 20, $ectID, 71, 48 , 10 )
                              AddMonster( $s2mon31, 10, $ectID, 71, 56 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon32, 1, $ectID, 73, 47 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon32, 1, $ectID, 73, 53 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon32, 1, $ectID, 77, 52 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon32, 1, $ectID, 82, 54 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon32, 1, $ectID, 72, 55 , 0 )
                              endif
                         endif
				endif
			endif
		endif
	else
		$stage1 = GetEctypeVar( -1, 110 )
		$stage2 = GetEctypeVar( -1, 111 )
		$stage3 = GetEctypeVar( -1, 112 )
		if $stage1 == 1
			if $stage2 == 2
				if $stage3 == 3
					if $Dif == 0
                              AddMonster( $s4mon1, 1, $ectID, 80, 71 , 0 )
                         endif
                         if $Dif == 1
                              AddMonster( $s4mon2, 1, $ectID, 71, 80 , 0 )
                         endif
                         if $Dif == 2
                              AddMonster( $s4mon3, 1, $ectID, 71, 71 , 0 )
                         endif
				endif
			endif
		endif
		if $stage1 == 1
			if $stage2 == 3
				if $stage3 == 2
					AddNPC( 2009, $ectID )
					if $Dif == 0
                              AddMonster( $s4mon1, 1, $ectID, 80, 71 , 0 )
                         endif
                         if $Dif == 1
                              AddMonster( $s4mon2, 1, $ectID, 71, 80 , 0 )
                         endif
                         if $Dif == 2
                              AddMonster( $s4mon3, 1, $ectID, 71, 71 , 0 )
                         endif
				endif
			endif
		endif
		if $stage1 == 2
			if $stage2 == 1
				if $stage3 == 3
					if $Dif == 0
                              AddMonster( $s4mon1, 1, $ectID, 80, 71 , 0 )
                         endif
                         if $Dif == 1
                              AddMonster( $s4mon2, 1, $ectID, 71, 80 , 0 )
                         endif
                         if $Dif == 2
                              AddMonster( $s4mon3, 1, $ectID, 71, 71 , 0 )
                         endif
				endif
			endif
		endif
		if $stage1 == 2
			if $stage2 == 3
				if $stage3 == 1
					if $Dif == 0
                              AddMonster( $s4mon1, 1, $ectID, 80, 71 , 0 )
                         endif
                         if $Dif == 1
                              AddMonster( $s4mon2, 1, $ectID, 71, 80 , 0 )
                         endif
                         if $Dif == 2
                              AddMonster( $s4mon3, 1, $ectID, 71, 71 , 0 )
                         endif
				endif
			endif
		endif
		if $stage1 == 3
			if $stage2 == 1
				if $stage3 == 2
					if $Dif == 0
                              AddMonster( $s4mon1, 1, $ectID, 80, 71 , 0 )
                         endif
                         if $Dif == 1
                              AddMonster( $s4mon2, 1, $ectID, 71, 80 , 0 )
                         endif
                         if $Dif == 2
                              AddMonster( $s4mon3, 1, $ectID, 71, 71 , 0 )
                         endif
				endif
			endif
		endif
		if $stage1 == 3
			if $stage2 == 2
				if $stage3 == 1
					if $Dif == 0
                              AddMonster( $s4mon1, 1, $ectID, 80, 71 , 0 )
                         endif
                         if $Dif == 1
                              AddMonster( $s4mon2, 1, $ectID, 71, 80 , 0 )
                         endif
                         if $Dif == 2
                              AddMonster( $s4mon3, 1, $ectID, 71, 71 , 0 )
                         endif
				endif
			endif
		endif
		if $stage1 == 1
			if $stage2 == 2
				if $stage3 == 4
                         if $Dif == 0
                              AddMonster( $s3mon1, 20, $ectID, 80, 71 , 9 )
                              AddMonster( $s3mon1, 20, $ectID, 71, 80 , 9 )
                              AddMonster( $s3mon1, 10, $ectID, 71, 71 , 6 )
                         endif
                         if $Dif == 1
                              AddMonster( $s3mon2, 20, $ectID, 80, 71 , 9 )
                              AddMonster( $s3mon2, 20, $ectID, 71, 80 , 9 )
                              AddMonster( $s3mon2, 10, $ectID, 71, 71 , 6 )
                         endif
                         if $Dif == 2
                              AddMonster( $s3mon3, 20, $ectID, 80, 71 , 9 )
                              AddMonster( $s3mon3, 20, $ectID, 71, 80 , 9 )
                              AddMonster( $s3mon3, 10, $ectID, 71, 71 , 6 )
                         endif
				endif
			endif
		endif
		if $stage1 == 1
			if $stage2 == 4
				if $stage3 == 2
                         if $Dif == 0
                              AddMonster( $s3mon1, 20, $ectID, 80, 71 , 9 )
                              AddMonster( $s3mon1, 20, $ectID, 71, 80 , 9 )
                              AddMonster( $s3mon1, 10, $ectID, 71, 71 , 6 )
                         endif
                         if $Dif == 1
                              AddMonster( $s3mon2, 20, $ectID, 80, 71 , 9 )
                              AddMonster( $s3mon2, 20, $ectID, 71, 80 , 9 )
                              AddMonster( $s3mon2, 10, $ectID, 71, 71 , 6 )
                         endif
                         if $Dif == 2
                              AddMonster( $s3mon3, 20, $ectID, 80, 71 , 9 )
                              AddMonster( $s3mon3, 20, $ectID, 71, 80 , 9 )
                              AddMonster( $s3mon3, 10, $ectID, 71, 71 , 6 )
                         endif
				endif
			endif
		endif
		if $stage1 == 2
			if $stage2 == 1
				if $stage3 == 4
                         if $Dif == 0
                              AddMonster( $s3mon1, 20, $ectID, 80, 71 , 9 )
                              AddMonster( $s3mon1, 20, $ectID, 71, 80 , 9 )
                              AddMonster( $s3mon1, 10, $ectID, 71, 71 , 6 )
                         endif
                         if $Dif == 1
                              AddMonster( $s3mon2, 20, $ectID, 80, 71 , 9 )
                              AddMonster( $s3mon2, 20, $ectID, 71, 80 , 9 )
                              AddMonster( $s3mon2, 10, $ectID, 71, 71 , 6 )
                         endif
                         if $Dif == 2
                              AddMonster( $s3mon3, 20, $ectID, 80, 71 , 9 )
                              AddMonster( $s3mon3, 20, $ectID, 71, 80 , 9 )
                              AddMonster( $s3mon3, 10, $ectID, 71, 71 , 6 )
                         endif
				endif
			endif
		endif
		if $stage1 == 2
			if $stage2 == 4
				if $stage3 == 1
                         if $Dif == 0
                              AddMonster( $s3mon1, 20, $ectID, 80, 71 , 9 )
                              AddMonster( $s3mon1, 20, $ectID, 71, 80 , 9 )
                              AddMonster( $s3mon1, 10, $ectID, 71, 71 , 6 )
                         endif
                         if $Dif == 1
                              AddMonster( $s3mon2, 20, $ectID, 80, 71 , 9 )
                              AddMonster( $s3mon2, 20, $ectID, 71, 80 , 9 )
                              AddMonster( $s3mon2, 10, $ectID, 71, 71 , 6 )
                         endif
                         if $Dif == 2
                              AddMonster( $s3mon3, 20, $ectID, 80, 71 , 9 )
                              AddMonster( $s3mon3, 20, $ectID, 71, 80 , 9 )
                              AddMonster( $s3mon3, 10, $ectID, 71, 71 , 6 )
                         endif
				endif
			endif
		endif
		if $stage1 == 4
			if $stage2 == 1
				if $stage3 == 2
                         if $Dif == 0
                              AddMonster( $s3mon1, 20, $ectID, 80, 71 , 9 )
                              AddMonster( $s3mon1, 20, $ectID, 71, 80 , 9 )
                              AddMonster( $s3mon1, 10, $ectID, 71, 71 , 6 )
                         endif
                         if $Dif == 1
                              AddMonster( $s3mon2, 20, $ectID, 80, 71 , 9 )
                              AddMonster( $s3mon2, 20, $ectID, 71, 80 , 9 )
                              AddMonster( $s3mon2, 10, $ectID, 71, 71 , 6 )
                         endif
                         if $Dif == 2
                              AddMonster( $s3mon3, 20, $ectID, 80, 71 , 9 )
                              AddMonster( $s3mon3, 20, $ectID, 71, 80 , 9 )
                              AddMonster( $s3mon3, 10, $ectID, 71, 71 , 6 )
                         endif
				endif
			endif
		endif
		if $stage1 == 4
			if $stage2 == 2
				if $stage3 == 1
                         if $Dif == 0
                              AddMonster( $s3mon1, 20, $ectID, 80, 71 , 9 )
                              AddMonster( $s3mon1, 20, $ectID, 71, 80 , 9 )
                              AddMonster( $s3mon1, 10, $ectID, 71, 71 , 6 )
                         endif
                         if $Dif == 1
                              AddMonster( $s3mon2, 20, $ectID, 80, 71 , 9 )
                              AddMonster( $s3mon2, 20, $ectID, 71, 80 , 9 )
                              AddMonster( $s3mon2, 10, $ectID, 71, 71 , 6 )
                         endif
                         if $Dif == 2
                              AddMonster( $s3mon3, 20, $ectID, 80, 71 , 9 )
                              AddMonster( $s3mon3, 20, $ectID, 71, 80 , 9 )
                              AddMonster( $s3mon3, 10, $ectID, 71, 71 , 6 )
                         endif
				endif
			endif
		endif
		if $stage1 == 1
			if $stage2 == 3
				if $stage3 == 4
                         if $Dif == 0
                              AddMonster( $s2mon11, 20, $ectID, 80, 71 , 10 )
                              AddMonster( $s2mon11, 20, $ectID, 71, 80 , 10 )
                              AddMonster( $s2mon11, 10, $ectID, 71, 71 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon12, 1, $ectID, 81, 73 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon12, 1, $ectID, 77, 74 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon12, 1, $ectID, 73, 72 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon12, 1, $ectID, 70, 77 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon12, 1, $ectID, 73, 81 , 0 )
                              endif
                         endif
                         if $Dif == 1
                              AddMonster( $s2mon21, 20, $ectID, 80, 71 , 10 )
                              AddMonster( $s2mon21, 20, $ectID, 71, 80 , 10 )
                              AddMonster( $s2mon21, 10, $ectID, 71, 71 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon22, 1, $ectID, 81, 73 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon22, 1, $ectID, 77, 74 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon22, 1, $ectID, 73, 72 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon22, 1, $ectID, 70, 77 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon22, 1, $ectID, 73, 81 , 0 )
                              endif
                         endif
                         if $Dif == 2
                              AddMonster( $s2mon31, 20, $ectID, 80, 71 , 10 )
                              AddMonster( $s2mon31, 20, $ectID, 71, 80 , 10 )
                              AddMonster( $s2mon31, 10, $ectID, 71, 71 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon32, 1, $ectID, 81, 73 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon32, 1, $ectID, 77, 74 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon32, 1, $ectID, 73, 72 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon32, 1, $ectID, 70, 77 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon32, 1, $ectID, 73, 81 , 0 )
                              endif
                         endif
				endif
			endif
		endif
		if $stage1 == 1
			if $stage2 == 4
				if $stage3 == 3
                         if $Dif == 0
                              AddMonster( $s2mon11, 20, $ectID, 80, 71 , 10 )
                              AddMonster( $s2mon11, 20, $ectID, 71, 80 , 10 )
                              AddMonster( $s2mon11, 10, $ectID, 71, 71 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon12, 1, $ectID, 81, 73 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon12, 1, $ectID, 77, 74 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon12, 1, $ectID, 73, 72 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon12, 1, $ectID, 70, 77 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon12, 1, $ectID, 73, 81 , 0 )
                              endif
                         endif
                         if $Dif == 1
                              AddMonster( $s2mon21, 20, $ectID, 80, 71 , 10 )
                              AddMonster( $s2mon21, 20, $ectID, 71, 80 , 10 )
                              AddMonster( $s2mon21, 10, $ectID, 71, 71 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon22, 1, $ectID, 81, 73 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon22, 1, $ectID, 77, 74 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon22, 1, $ectID, 73, 72 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon22, 1, $ectID, 70, 77 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon22, 1, $ectID, 73, 81 , 0 )
                              endif
                         endif
                         if $Dif == 2
                              AddMonster( $s2mon31, 20, $ectID, 80, 71 , 10 )
                              AddMonster( $s2mon31, 20, $ectID, 71, 80 , 10 )
                              AddMonster( $s2mon31, 10, $ectID, 71, 71 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon32, 1, $ectID, 81, 73 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon32, 1, $ectID, 77, 74 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon32, 1, $ectID, 73, 72 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon32, 1, $ectID, 70, 77 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon32, 1, $ectID, 73, 81 , 0 )
                              endif
                         endif
				endif
			endif
		endif
		if $stage1 == 3
			if $stage2 == 1
				if $stage3 == 4
                         if $Dif == 0
                              AddMonster( $s2mon11, 20, $ectID, 80, 71 , 10 )
                              AddMonster( $s2mon11, 20, $ectID, 71, 80 , 10 )
                              AddMonster( $s2mon11, 10, $ectID, 71, 71 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon12, 1, $ectID, 81, 73 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon12, 1, $ectID, 77, 74 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon12, 1, $ectID, 73, 72 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon12, 1, $ectID, 70, 77 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon12, 1, $ectID, 73, 81 , 0 )
                              endif
                         endif
                         if $Dif == 1
                              AddMonster( $s2mon21, 20, $ectID, 80, 71 , 10 )
                              AddMonster( $s2mon21, 20, $ectID, 71, 80 , 10 )
                              AddMonster( $s2mon21, 10, $ectID, 71, 71 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon22, 1, $ectID, 81, 73 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon22, 1, $ectID, 77, 74 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon22, 1, $ectID, 73, 72 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon22, 1, $ectID, 70, 77 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon22, 1, $ectID, 73, 81 , 0 )
                              endif
                         endif
                         if $Dif == 2
                              AddMonster( $s2mon31, 20, $ectID, 80, 71 , 10 )
                              AddMonster( $s2mon31, 20, $ectID, 71, 80 , 10 )
                              AddMonster( $s2mon31, 10, $ectID, 71, 71 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon32, 1, $ectID, 81, 73 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon32, 1, $ectID, 77, 74 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon32, 1, $ectID, 73, 72 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon32, 1, $ectID, 70, 77 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon32, 1, $ectID, 73, 81 , 0 )
                              endif
                         endif
				endif
			endif
		endif
		if $stage1 == 3
			if $stage2 == 4
				if $stage3 == 1
                         if $Dif == 0
                              AddMonster( $s2mon11, 20, $ectID, 80, 71 , 10 )
                              AddMonster( $s2mon11, 20, $ectID, 71, 80 , 10 )
                              AddMonster( $s2mon11, 10, $ectID, 71, 71 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon12, 1, $ectID, 81, 73 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon12, 1, $ectID, 77, 74 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon12, 1, $ectID, 73, 72 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon12, 1, $ectID, 70, 77 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon12, 1, $ectID, 73, 81 , 0 )
                              endif
                         endif
                         if $Dif == 1
                              AddMonster( $s2mon21, 20, $ectID, 80, 71 , 10 )
                              AddMonster( $s2mon21, 20, $ectID, 71, 80 , 10 )
                              AddMonster( $s2mon21, 10, $ectID, 71, 71 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon22, 1, $ectID, 81, 73 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon22, 1, $ectID, 77, 74 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon22, 1, $ectID, 73, 72 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon22, 1, $ectID, 70, 77 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon22, 1, $ectID, 73, 81 , 0 )
                              endif
                         endif
                         if $Dif == 2
                              AddMonster( $s2mon31, 20, $ectID, 80, 71 , 10 )
                              AddMonster( $s2mon31, 20, $ectID, 71, 80 , 10 )
                              AddMonster( $s2mon31, 10, $ectID, 71, 71 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon32, 1, $ectID, 81, 73 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon32, 1, $ectID, 77, 74 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon32, 1, $ectID, 73, 72 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon32, 1, $ectID, 70, 77 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon32, 1, $ectID, 73, 81 , 0 )
                              endif
                         endif
				endif
			endif
		endif
		if $stage1 == 4
			if $stage2 == 3
				if $stage3 == 1
                         if $Dif == 0
                              AddMonster( $s2mon11, 20, $ectID, 80, 71 , 10 )
                              AddMonster( $s2mon11, 20, $ectID, 71, 80 , 10 )
                              AddMonster( $s2mon11, 10, $ectID, 71, 71 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon12, 1, $ectID, 81, 73 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon12, 1, $ectID, 77, 74 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon12, 1, $ectID, 73, 72 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon12, 1, $ectID, 70, 77 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon12, 1, $ectID, 73, 81 , 0 )
                              endif
                         endif
                         if $Dif == 1
                              AddMonster( $s2mon21, 20, $ectID, 80, 71 , 10 )
                              AddMonster( $s2mon21, 20, $ectID, 71, 80 , 10 )
                              AddMonster( $s2mon21, 10, $ectID, 71, 71 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon22, 1, $ectID, 81, 73 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon22, 1, $ectID, 77, 74 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon22, 1, $ectID, 73, 72 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon22, 1, $ectID, 70, 77 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon22, 1, $ectID, 73, 81 , 0 )
                              endif
                         endif
                         if $Dif == 2
                              AddMonster( $s2mon31, 20, $ectID, 80, 71 , 10 )
                              AddMonster( $s2mon31, 20, $ectID, 71, 80 , 10 )
                              AddMonster( $s2mon31, 10, $ectID, 71, 71 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon32, 1, $ectID, 81, 73 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon32, 1, $ectID, 77, 74 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon32, 1, $ectID, 73, 72 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon32, 1, $ectID, 70, 77 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon32, 1, $ectID, 73, 81 , 0 )
                              endif
                         endif
				endif
			endif
		endif
		if $stage1 == 4
			if $stage2 == 1
				if $stage3 == 3
                         if $Dif == 0
                              AddMonster( $s2mon11, 20, $ectID, 80, 71 , 10 )
                              AddMonster( $s2mon11, 20, $ectID, 71, 80 , 10 )
                              AddMonster( $s2mon11, 10, $ectID, 71, 71 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon12, 1, $ectID, 81, 73 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon12, 1, $ectID, 77, 74 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon12, 1, $ectID, 73, 72 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon12, 1, $ectID, 70, 77 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon12, 1, $ectID, 73, 81 , 0 )
                              endif
                         endif
                         if $Dif == 1
                              AddMonster( $s2mon21, 20, $ectID, 80, 71 , 10 )
                              AddMonster( $s2mon21, 20, $ectID, 71, 80 , 10 )
                              AddMonster( $s2mon21, 10, $ectID, 71, 71 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon22, 1, $ectID, 81, 73 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon22, 1, $ectID, 77, 74 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon22, 1, $ectID, 73, 72 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon22, 1, $ectID, 70, 77 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon22, 1, $ectID, 73, 81 , 0 )
                              endif
                         endif
                         if $Dif == 2
                              AddMonster( $s2mon31, 20, $ectID, 80, 71 , 10 )
                              AddMonster( $s2mon31, 20, $ectID, 71, 80 , 10 )
                              AddMonster( $s2mon31, 10, $ectID, 71, 71 , 6 )
                              $Rand = RandomNumber( 1, 5 )
                              if $Rand == 1
                                   AddMonster( $s2mon32, 1, $ectID, 81, 73 , 0 )
                              endif
                              if $Rand == 2
                                   AddMonster( $s2mon32, 1, $ectID, 77, 74 , 0 )
                              endif
                              if $Rand == 3
                                   AddMonster( $s2mon32, 1, $ectID, 73, 72 , 0 )
                              endif
                              if $Rand == 4
                                   AddMonster( $s2mon32, 1, $ectID, 70, 77 , 0 )
                              endif
                              if $Rand == 5
                                   AddMonster( $s2mon32, 1, $ectID, 73, 81 , 0 )
                              endif
                         endif
				endif
			endif
		endif
		if $stage1 == 2
			if $stage2 == 3
				if $stage3 == 4
					AddNPC( 2002, $ectID )
					AddNPC( 2003, $ectID )
					AddNPC( 2004, $ectID )
					AddNPC( 2005, $ectID )
					
				endif
			endif
		endif
		if $stage1 == 2
			if $stage2 == 4
				if $stage3 == 3
					AddNPC( 2002, $ectID )
					AddNPC( 2003, $ectID )
					AddNPC( 2004, $ectID )
					AddNPC( 2005, $ectID )
					
				endif
			endif
		endif
		if $stage1 == 3
			if $stage2 == 2
				if $stage3 == 4
					AddNPC( 2002, $ectID )
					AddNPC( 2003, $ectID )
					AddNPC( 2004, $ectID )
					AddNPC( 2005, $ectID )
					
				endif
			endif
		endif
		if $stage1 == 3
			if $stage2 == 4
				if $stage3 == 2
					AddNPC( 2002, $ectID )
					AddNPC( 2003, $ectID )
					AddNPC( 2004, $ectID )
					AddNPC( 2005, $ectID )
					
				endif
			endif
		endif
		if $stage1 == 4
			if $stage2 == 3
				if $stage3 == 2
					AddNPC( 2002, $ectID )
					AddNPC( 2003, $ectID )
					AddNPC( 2004, $ectID )
					AddNPC( 2005, $ectID )
					
				endif
			endif
		endif
		if $stage1 == 4
			if $stage2 == 2
				if $stage3 == 3
					AddNPC( 2002, $ectID )
					AddNPC( 2003, $ectID )
					AddNPC( 2004, $ectID )
					AddNPC( 2005, $ectID )
					
				endif
			endif
		endif
	endif
		
	}