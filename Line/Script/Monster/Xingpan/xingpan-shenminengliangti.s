	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/29
	//		Author:??
	//		TaskName:Xingpan-shenminengliangti.s
	//		TaskID:?????
	//****************************************
 
	function OnDead(){
		$isteam = IsPlayerInTeam(-1)
		$a = RandomNumber(1 ,100 )
		//??????,????,?????????,????		
		if $isteam == 0
				$num = GetTeamMemberCount( -1 )
				if $num > 1
					$Men1 = GetTeamMemberID( -1 , 0 )
					$Men2 = GetTeamMemberID( -1 , 1 )
					$Men3 = GetTeamMemberID( -1 , 2 )
					$Men4 = GetTeamMemberID( -1 , 3 )
					$Men5 = GetTeamMemberID( -1 , 4 )
					$Men6 = GetTeamMemberID( -1 , 5 )
				//??????????
					if $Men1 != -1
						$mapid1 = GetPlayerInfo( $Men1, "mapid" )
						$count1 = GetPlayerInfo( $Men1, "item", 59886 )
						$energy1 = GetPlayerVar( $Men1, 3998)
						//????,?????????
						if $mapid1 == 44
						//??????????
							if $count1 >= 1						
								$energy1 = $energy1 + 1
								SetPlayerVar($Men1, 3998, $energy1)
								//??????
								if $energy1 >= 500
										SetPlayerVar($Men1, 3998, 500)
										BC( "screen", "player", $Men1, "The Energy Core has been recharged. Talk to Copernicus to activate it." )
								else 
										BC( "screen", "player", $Men1, "Energy Core charge: ",$energy1,"/500")
								endif
								if $a < 6
									 $bag_count1 = GetPlayerInfo( $Men1, "nullitem", 0 )
									 if $bag_count1 < 2
									 BC( "screen", "player", $Men1, "You must have at least 2 free bag spaces." )
									 else
									 AddPlayerInfo ( $Men1, "item", 59888, 1 )
									 endif
								endif
							endif
						endif
					endif
					if $Men2 != -1
						$mapid2 = GetPlayerInfo( $Men2, "mapid" )
						$count2 = GetPlayerInfo( $Men2, "item", 59886 )
						$energy2 = GetPlayerVar( $Men2, 3998)
						if $mapid2 == 44
							if $count2 >= 1						
								$energy2 = $energy2 + 1
								SetPlayerVar($Men2, 3998, $energy2)
								if $energy2 >= 500
										SetPlayerVar($Men2, 3998, 500)
										BC( "screen", "player", $Men2, "The Energy Core has been recharged. Talk to Copernicus to activate it." )
								else 
										BC( "screen", "player", $Men2, "Energy Core charge: ",$energy2,"/500")
								endif
								if $a < 6
									 $bag_count2 = GetPlayerInfo( $Men2, "nullitem", 0 )
									 if $bag_count2 < 2
									 BC( "screen", "player", $Men2, "You must have at least 2 free bag spaces." )
									 else
									 AddPlayerInfo ( $Men2, "item", 59888, 1 )
									 endif
								endif
							endif
						endif
					endif
					if $Men3 != -1
						$mapid3 = GetPlayerInfo( $Men3, "mapid" )
						$count3 = GetPlayerInfo( $Men3, "item", 59886 )
						$energy3 = GetPlayerVar( $Men3, 3998)
						if $mapid3 == 44
							if $count3 >= 1						
								$energy3 = $energy3 + 1
								SetPlayerVar($Men3, 3998, $energy3)
								if $energy3 >= 500
										SetPlayerVar($Men3, 3998, 500)
										BC( "screen", "player", $Men3, "The Energy Core has been recharged. Talk to Copernicus to activate it." )
								else 
										BC( "screen", "player", $Men3, "Energy Core charge: ",$energy3,"/500")
								endif
								if $a < 6
									 $bag_count3 = GetPlayerInfo( $Men3, "nullitem", 0 )
									 if $bag_count3 < 2
									 BC( "screen", "player", $Men3, "You must have at least 2 free bag spaces." )
									 else
									 AddPlayerInfo ( $Men3, "item", 59888, 1 )
									 endif
								endif
							endif
						endif
					endif
					if $Men4 != -1
						$mapid4 = GetPlayerInfo( $Men4, "mapid" )
						$count4 = GetPlayerInfo( $Men4, "item", 59886 )
						$energy4 = GetPlayerVar( $Men4, 3998)
						if $mapid4 == 44
							if $count4 >= 1						
								$energy4 = $energy4 + 1
								SetPlayerVar($Men4, 3998, $energy4)
								if $energy4 >= 500
										SetPlayerVar($Men4, 3998, 500)
										BC( "screen", "player", $Men4, "The Energy Core has been recharged. Talk to Copernicus to activate it." )
								else 
										BC( "screen", "player", $Men4, "Energy Core charge: ",$energy4,"/500")
								endif
								if $a < 6
									 $bag_count4 = GetPlayerInfo( $Men4, "nullitem", 0 )
									 if $bag_count4 < 2
									 BC( "screen", "player", $Men4, "You must have at least 2 free bag spaces." )
									 else
									 AddPlayerInfo ( $Men4, "item", 59888, 1 )
									 endif
								endif								
							endif
						endif
					endif
					if $Men5 != -1
						$mapid5 = GetPlayerInfo( $Men5, "mapid" )
						$count5 = GetPlayerInfo( $Men5, "item", 59886 )
						$energy5 = GetPlayerVar( $Men5, 3998)
						if $mapid5 == 44
							if $count5 >= 1						
								$energy5 = $energy5+ 1
								SetPlayerVar($Men5, 3998, $energy5)
								if $energy5 >= 500
										SetPlayerVar($Men5, 3998, 500)
										BC( "screen", "player", $Men5, "The Energy Core has been recharged. Talk to Copernicus to activate it." )
								else 
										BC( "screen", "player", $Men5, "Energy Core charge: ",$energy5,"/500")
								endif
								if $a < 6
									 $bag_count5 = GetPlayerInfo( $Men5, "nullitem", 0 )
									 if $bag_count5 < 2
									 BC( "screen", "player", $Men5, "You must have at least 2 free bag spaces." )
									 else
									 AddPlayerInfo ( $Men5, "item", 59888, 1 )
									 endif
								endif
//								if $a < 6
//									 $bag_count = GetPlayerInfo( $Men5, "nullitem", 0 )
//									 if $bag_count < 2
//									 BC( "screen", "player", $Men5, "You must have at least 2 free bag spaces." )
//									 else
//									 AddPlayerInfo ( $Men5, "item", 59888, 1 )
//									 endif
//								endif				
							endif
						endif
					endif
					if $Men6 != -1
						$mapid6 = GetPlayerInfo( $Men6, "mapid" )
						$count6 = GetPlayerInfo( $Men6, "item", 59886 )
						$energy6 = GetPlayerVar( $Men6, 3998)
						if $mapid6 == 44
							if $count6 >= 1						
								$energy6 = $energy6+ 1
								SetPlayerVar($Men6, 3998, $energy6)
								if $energy6 >= 500
										SetPlayerVar($Men6, 3998, 500)
										BC( "screen", "player", $Men6, "The Energy Core has been recharged. Talk to Copernicus to activate it." )
								else 
										BC( "screen", "player", $Men6, "Energy Core charge: ",$energy6,"/500")
								endif
								if $a < 6
									 $bag_count6 = GetPlayerInfo( $Men6, "nullitem", 0 )
									 if $bag_count6 < 2
									 BC( "screen", "player", $Men6, "You must have at least 2 free bag spaces." )
									 else
									 AddPlayerInfo ( $Men6, "item", 59888, 1 )
									 endif
								endif				
							endif
						endif
					endif
				else
						$count = GetPlayerInfo( -1, "item", 59886 )
						$energy = GetPlayerVar(-1, 3998)
						//??????????
							if $count >= 1						
								$energy = $energy + 1
								SetPlayerVar(-1, 3998, $energy)
								//??????
								if $energy >= 500
										SetPlayerVar(-1, 3998, 500)
										BC( "screen", "player", -1, "The Energy Core has been recharged. Talk to Copernicus to activate it." )
								else 
										BC( "screen", "player", -1, "Energy Core charge: ",$energy,"/500")
								endif
								if $a < 6
										$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
										if $bag_count < 2
										BC( "screen", "player", -1, "You must have at least 2 free bag spaces." )
										else
										AddPlayerInfo ( -1, "item", 59888, 1 )
										endif
								endif	
							endif					
				endif
		else
				//?????,??????
				$count = GetPlayerInfo( -1, "item", 59886 )
				$energy = GetPlayerVar(-1, 3998)
				//??????????
					if $count >= 1						
						$energy = $energy + 1
						SetPlayerVar(-1, 3998, $energy)
						//??????
						if $energy >= 500
								SetPlayerVar(-1, 3998, 500)
								BC( "screen", "player", -1, "The Energy Core has been recharged. Talk to Copernicus to activate it." )
						else 
								BC( "screen", "player", -1, "Energy Core charge: ",$energy,"/500")
						endif
						if $a < 6
								$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
								if $bag_count < 2
								BC( "screen", "player", -1, "You must have at least 2 free bag spaces." )
								else
								AddPlayerInfo ( -1, "item", 59888, 1 )
								endif
						endif	
					endif	
		endif
	}
	