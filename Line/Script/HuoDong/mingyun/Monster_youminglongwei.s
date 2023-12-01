	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/10
	//		Author:???
	//		TaskName:????
	//		TaskID:Monster_youminglongwei.s
	//
	//****************************************

	function OnDead(){

		$isteam = IsPlayerInTeam(-1)
			if $isteam == 0
				$num = GetTeamMemberCount( -1 )
				if $num > 0
					$Men1 = GetTeamMemberID( -1 , 0 )
					$Men2 = GetTeamMemberID( -1 , 1 )
					$Men3 = GetTeamMemberID( -1 , 2 )
					$Men4 = GetTeamMemberID( -1 , 3 )
					$Men5 = GetTeamMemberID( -1 , 4 )
					$Men6 = GetTeamMemberID( -1 , 5 )
					if $Men1 != -1
						$map1 = GetPlayerInfo( $Men1, "mapid")
						if $map1 == 86
							$wanjia1 = GetPlayerVar( $Men1 , 4030)
							$wanjia1 = $wanjia1 + 10
							SetPlayerVar( $Men1 , 4030 , $wanjia1 )
							BC("screen","player",$Men1,"Your team killed the Nether Archer! Received 10 points!")
						endif	
					endif
					if $Men2 != -1
						$map2 = GetPlayerInfo( $Men2, "mapid")
						if $map2 == 86
							$wanjia2 = GetPlayerVar( $Men2 , 4030)
							$wanjia2 = $wanjia2 + 10
							SetPlayerVar( $Men2 , 4030 , $wanjia2 )
							BC("screen","player",$Men2,"Your team killed the Nether Archer! Received 10 points!")
						endif
					endif
					if $Men3 != -1
						$map3 = GetPlayerInfo( $Men3, "mapid")
						if $map3 == 86
							$wanjia3 = GetPlayerVar( $Men3 , 4030)
							$wanjia3 = $wanjia3 + 10
							SetPlayerVar( $Men3 , 4030 , $wanjia3 )
							BC("screen","player",$Men3,"Your team killed the Nether Archer! Received 10 points!")
						endif
					endif
					if $Men4 != -1
						$map4 = GetPlayerInfo( $Men4, "mapid")
						if $map4 == 86
							$wanjia4 = GetPlayerVar( $Men4 , 4030)
							$wanjia4 = $wanjia4 + 10
							SetPlayerVar( $Men4 , 4030 , $wanjia4 )
							BC("screen","player",$Men4,"Your team killed the Nether Archer! Received 10 points!")
						endif
					endif
					if $Men5 != -1
						$map5 = GetPlayerInfo( $Men5, "mapid")
						if $map5 == 86
							$wanjia5 = GetPlayerVar( $Men5 , 4030)
							$wanjia5 = $wanjia5 + 10
							SetPlayerVar( $Men5 , 4030 , $wanjia5 )
							BC("screen","player",$Men5,"Your team killed the Nether Archer! Received 10 points!")
						endif
					endif
					if $Men6 != -1
						$map6 = GetPlayerInfo( $Men6, "mapid")
						if $map6 == 86
							$wanjia6 = GetPlayerVar( $Men6 , 4030)
							$wanjia6 = $wanjia6 + 10
							SetPlayerVar( $Men6 , 4030 , $wanjia6 )
							BC("screen","player",$Men6,"Your team killed the Nether Archer! Received 10 points!")
						endif
					endif
				endif
			else
				$wanjia = GetPlayerVar( -1 , 4030)
				$wanjia = $wanjia + 10
				SetPlayerVar( -1 , 4030 , $wanjia )
				BC("screen","player",-1,"Your team killed the Nether Archer! Received 10 points!")
			endif
		
	}