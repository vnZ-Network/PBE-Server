	function OnDead(){
		$lang = GetPlayerVar(-1, 3301)
		$ectID = GetEctypeID( -1 , 233 )
		$kill = GetEctypeVar( -1 , 112 )
		$round = GetEctypeVar( -1 , 113 )
		$kill = $kill + 1
		SetEctypeVar( -1 , 112 , $kill )
		$monlv = GetEctypeVar( -1 , 110 )
		$Dif = GetEctypeVar( $ectID , 11 )
		$monflv = GetEctypeVar(-1 ,90)
          $monID = 51241
          if $monflv > 0	
			if $monlv < 80
				if $Dif == 1
					if $kill == 12
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 4 , $ectID , 65 , 58 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 4 , $ectID , 67 , 59 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 4 , $ectID , 68 , 62 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 4 , $ectID , 65 , 61 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 2 sẽ xuất hiện tại: [color=ffB54ECA]Điểm B" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]2nd wave of monster will spawn in: [color=ffB54ECA]Area B" )
                              endif
					endif
					if $kill == 28
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 4 , $ectID , 66 , 66 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 4 , $ectID , 68 , 66 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 4 , $ectID , 68 , 68 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 5 , $ectID , 64 , 69 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 3 sẽ xuất hiện tại: [color=ffB54ECA]Điểm C" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]3rd wave of monster will spawn in: [color=ffB54ECA]Area C" )
                              endif
					endif
					if $kill == 32
						BC( "screen" , "map" , $ectID , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectID , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectID , 4 )
					endif					
					if $kill == 45
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 4 , $ectID , 58 , 66 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 4 , $ectID , 60 , 67 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 5 , $ectID , 60 , 69 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 5 , $ectID , 58 , 69 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 4 sẽ xuất hiện tại: [color=ffB54ECA]Điểm D" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]4th wave of monster will spawn in: [color=ffB54ECA]Area D" )
                              endif
					endif
					if $kill == 63
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 4 , $ectID , 59 , 58 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 5 , $ectID , 61 , 58 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 5 , $ectID , 61 , 61 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 5 , $ectID , 58 , 61 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 5 sẽ xuất hiện tại: [color=ffB54ECA]Điểm A" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]5th wave of monster will spawn in: [color=ffB54ECA]Area A" )
                              endif
					endif
					if $kill == 82
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 5 , $ectID , 65 , 58 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 5 , $ectID , 67 , 59 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 5 , $ectID , 68 , 62 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 5 , $ectID , 65 , 61 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 6 sẽ xuất hiện tại: [color=ffB54ECA]Điểm B" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]6th wave of monster will spawn in: [color=ffB54ECA]Area B" )
                              endif
					endif
					if $kill == 86
						BC( "screen" , "map" , $ectID , "A Fallen Totem will appear in Section B in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectID , "A Fallen Totem will appear in Section B in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectID , 4 )
					endif
					if $kill == 100
						$time = $round * 10
						BC("screen", "map", $ectID, "Your party took ",$time," seconds to kill 100 Trial Monsters!" )
						BC("chat", "map", $ectID, "Your party took ",$time," seconds to kill 100 Trial Monsters!" )
					endif
					if $kill == 102
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 5 , $ectID , 66 , 66 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 5 , $ectID , 68 , 66 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 5 , $ectID , 68 , 68 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 6 , $ectID , 64 , 69 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 7 sẽ xuất hiện tại: [color=ffB54ECA]Điểm C" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]7th wave of monster will spawn in: [color=ffB54ECA]Area C" )
                              endif
					endif
					if $kill == 123
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 5 , $ectID , 58 , 66 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 5 , $ectID , 60 , 67 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 6 , $ectID , 60 , 69 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 6 , $ectID , 58 , 69 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 8 sẽ xuất hiện tại: [color=ffB54ECA]Điểm D" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]8th wave of monster will spawn in: [color=ffB54ECA]Area D" )
                              endif
					endif
					if $kill == 145
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 5 , $ectID , 59 , 58 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 6 , $ectID , 61 , 58 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 6 , $ectID , 61 , 61 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 6 , $ectID , 58 , 61 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 9 sẽ xuất hiện tại: [color=ffB54ECA]Điểm A" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]9th wave of monster will spawn in: [color=ffB54ECA]Area A" )
                              endif
					endif
					if $kill == 149
						BC( "screen" , "map" , $ectID , "A Fallen Totem will appear in Section A in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectID , "A Fallen Totem will appear in Section A in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectID , 4 )
					endif
					if $kill == 168
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 6 , $ectID , 65 , 58 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 6 , $ectID , 67 , 59 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 6 , $ectID , 68 , 62 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 6 , $ectID , 65 , 61 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 10 sẽ xuất hiện tại: [color=ffB54ECA]Điểm B" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]10th wave of monster will spawn in: [color=ffB54ECA]Area B" )
                              endif
					endif
					if $kill == 192
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 6 , $ectID , 66 , 66 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 6 , $ectID , 68 , 66 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 6 , $ectID , 68 , 68 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 7 , $ectID , 64 , 69 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 11 sẽ xuất hiện tại: [color=ffB54ECA]Điểm C" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]11th wave of monster will spawn in: [color=ffB54ECA]Area C" )
                              endif
					endif
					if $kill == 200
						$time = $round * 10
						BC("screen", "map", $ectID, "Your party took ",$time," seconds to kill 200 Trial Monsters!" )
						BC("chat", "map", $ectID, "Your party took ",$time," seconds to kill 200 Trial Monsters!" )
					endif
					if $kill == 217
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 6 , $ectID , 58 , 66 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 6 , $ectID , 60 , 67 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 7 , $ectID , 60 , 69 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 7 , $ectID , 58 , 69 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 12 sẽ xuất hiện tại: [color=ffB54ECA]Điểm D" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]12th wave of monster will spawn in: [color=ffB54ECA]Area D" )
                              endif
					endif
					if $kill == 221
						BC( "screen" , "map" , $ectID , "A Fallen Totem will appear in Section D in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectID , "A Fallen Totem will appear in Section D in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectID , 4 )
					endif
					if $kill == 243
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 6 , $ectID , 59 , 58 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 7 , $ectID , 61 , 58 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 7 , $ectID , 61 , 61 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 7 , $ectID , 58 , 61 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 13 sẽ xuất hiện tại: [color=ffB54ECA]Điểm A" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]13th wave of monster will spawn in: [color=ffB54ECA]Area A" )
                              endif
					endif
					if $kill == 270
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 7 , $ectID , 65 , 58 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 7 , $ectID , 67 , 59 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 7 , $ectID , 68 , 62 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 7 , $ectID , 65 , 61 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 14 sẽ xuất hiện tại: [color=ffB54ECA]Điểm B" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]14th wave of monster will spawn in: [color=ffB54ECA]Area B" )
                              endif
					endif
					if $kill == 298
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 7 , $ectID , 66 , 66 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 7 , $ectID , 68 , 66 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 7 , $ectID , 68 , 68 , 1 )
						AddLevelFieldMonster( $monID , 50, $monlv, 50, $monflv , 8 , $ectID , 64 , 69 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 15 sẽ xuất hiện tại: [color=ffB54ECA]Điểm C" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]15th wave of monster will spawn in: [color=ffB54ECA]Area C" )
                              endif
					endif
					if $kill == 302
						BC( "screen" , "map" , $ectID , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectID , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectID , 4 )
					endif
					if $kill == 300
						$time = $round * 10
						BC("screen", "map", $ectID, "Your party took ",$time," seconds to kill 300 Trial Monsters!" )
						BC("chat", "map", $ectID, "Your party took ",$time," seconds to kill 300 Trial Monsters!" )
					endif
					if $kill == 327
						$ectID = GetEctypeID( -1 , 233 )						
						$lv = GetEctypeVar( $ectID , 110 )
						$boss = GetEctypeVar( $ectID , 0 )
						if $boss == 0
							AddLevelFieldMonster( 51248 , 53, $monlv,53, $monflv , 1 , $ectID , 60 , 67 , 0 )
							SetEctypeVar( $ectID , 0 , 1 )
							BC( "screen" , "map" , $ectID , "The Trial Adjudicator appears!!" )
							BC( "chat" , "map" , $ectID , "The Trial Adjudicator appears!!" )
						endif
					endif
				endif
			endif
			if $monlv >= 80
				if $Dif == 1
					if $kill == 12
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 4 , $ectID , 65 , 58 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 4 , $ectID , 67 , 59 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 4 , $ectID , 68 , 62 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 4 , $ectID , 65 , 61 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 2 sẽ xuất hiện tại: [color=ffB54ECA]Điểm B" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]2nd wave of monster will spawn in: [color=ffB54ECA]Area B" )
                              endif
					endif
					if $kill == 28
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 4 , $ectID , 66 , 66 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 4 , $ectID , 68 , 66 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 4 , $ectID , 68 , 68 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 5 , $ectID , 64 , 69 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 3 sẽ xuất hiện tại: [color=ffB54ECA]Điểm C" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]3nd wave of monster will spawn in: [color=ffB54ECA]Area C" )
                              endif
					endif
					if $kill == 32
						BC( "screen" , "map" , $ectID , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectID , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectID , 4 )
					endif
					if $kill == 45
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 4 , $ectID , 58 , 66 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 4 , $ectID , 60 , 67 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 5 , $ectID , 60 , 69 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 5 , $ectID , 58 , 69 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 4 sẽ xuất hiện tại: [color=ffB54ECA]Điểm D" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]4th wave of monster will spawn in: [color=ffB54ECA]Area D" )
                              endif
					endif
					if $kill == 63
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 4 , $ectID , 59 , 58 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 5 , $ectID , 61 , 58 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 5 , $ectID , 61 , 61 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 5 , $ectID , 58 , 61 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 5 sẽ xuất hiện tại: [color=ffB54ECA]Điểm A" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]5th wave of monster will spawn in: [color=ffB54ECA]Area A" )
                              endif
					endif
					if $kill == 82
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 5 , $ectID , 65 , 58 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 5 , $ectID , 67 , 59 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 5 , $ectID , 68 , 62 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 5 , $ectID , 65 , 61 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 6 sẽ xuất hiện tại: [color=ffB54ECA]Điểm B" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]6th wave of monster will spawn in: [color=ffB54ECA]Area B" )
                              endif
					endif
					if $kill == 86
						BC( "screen" , "map" , $ectID , "A Fallen Totem will appear in Section B in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectID , "A Fallen Totem will appear in Section B in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectID , 4 )
					endif
					if $kill == 100
						$time = $round * 10
						BC("screen", "map", $ectID, "Your party took ",$time," seconds to kill 100 Trial Monsters!" )
						BC("chat", "map", $ectID, "Your party took ",$time," seconds to kill 100 Trial Monsters!" )
					endif
					if $kill == 102
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 5 , $ectID , 66 , 66 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 5 , $ectID , 68 , 66 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 5 , $ectID , 68 , 68 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 6 , $ectID , 64 , 69 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 7 sẽ xuất hiện tại: [color=ffB54ECA]Điểm C" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]7th wave of monster will spawn in: [color=ffB54ECA]Area C" )
                              endif
					endif
					if $kill == 123
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 5 , $ectID , 58 , 66 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 5 , $ectID , 60 , 67 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 6 , $ectID , 60 , 69 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 6 , $ectID , 58 , 69 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 8 sẽ xuất hiện tại: [color=ffB54ECA]Điểm D" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]8th wave of monster will spawn in: [color=ffB54ECA]Area D" )
                              endif
					endif
					if $kill == 145
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 5 , $ectID , 59 , 58 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 6 , $ectID , 61 , 58 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 6 , $ectID , 61 , 61 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 6 , $ectID , 58 , 61 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 9 sẽ xuất hiện tại: [color=ffB54ECA]Điểm A" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]9th wave of monster will spawn in: [color=ffB54ECA]Area A" )
                              endif
					endif
					if $kill == 149
						BC( "screen" , "map" , $ectID , "A Fallen Totem will appear in Section A in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectID , "A Fallen Totem will appear in Section A in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectID , 4 )
					endif
					if $kill == 168
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 6 , $ectID , 65 , 58 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 6 , $ectID , 67 , 59 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 6 , $ectID , 68 , 62 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 6 , $ectID , 65 , 61 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 10 sẽ xuất hiện tại: [color=ffB54ECA]Điểm B" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]10th wave of monster will spawn in: [color=ffB54ECA]Area B" )
                              endif
					endif
					if $kill == 192
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 6 , $ectID , 66 , 66 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 6 , $ectID , 68 , 66 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 6 , $ectID , 68 , 68 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 7 , $ectID , 64 , 69 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 11 sẽ xuất hiện tại: [color=ffB54ECA]Điểm C" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]11th wave of monster will spawn in: [color=ffB54ECA]Area C" )
                              endif
					endif
					if $kill == 200
						$time = $round * 10
						BC("screen", "map", $ectID, "Your party took ",$time," seconds to kill 200 Trial Monsters!" )
						BC("chat", "map", $ectID, "Your party took ",$time," seconds to kill 200 Trial Monsters!" )
					endif
					if $kill == 217
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 6 , $ectID , 58 , 66 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 6 , $ectID , 60 , 67 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 7 , $ectID , 60 , 69 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 7 , $ectID , 58 , 69 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 12 sẽ xuất hiện tại: [color=ffB54ECA]Điểm D" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]12th wave of monster will spawn in: [color=ffB54ECA]Area D" )
                              endif
					endif
					if $kill == 221
						BC( "screen" , "map" , $ectID , "A Fallen Totem will appear in Section D in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectID , "A Fallen Totem will appear in Section D in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectID , 4 )
					endif
					if $kill == 243
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 6 , $ectID , 59 , 58 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 7 , $ectID , 61 , 58 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 7 , $ectID , 61 , 61 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 7 , $ectID , 58 , 61 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 13 sẽ xuất hiện tại: [color=ffB54ECA]Điểm A" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]13th wave of monster will spawn in: [color=ffB54ECA]Area A" )
                              endif
					endif
					if $kill == 270
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 7 , $ectID , 65 , 58 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 7 , $ectID , 67 , 59 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 7 , $ectID , 68 , 62 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 7 , $ectID , 65 , 61 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 14 sẽ xuất hiện tại: [color=ffB54ECA]Điểm B" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]14th wave of monster will spawn in: [color=ffB54ECA]Area B" )
                              endif
					endif
					if $kill == 298
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 7 , $ectID , 66 , 66 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 7 , $ectID , 68 , 66 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 7 , $ectID , 68 , 68 , 1 )
						AddLevelFieldMonster( $monID , 80, $monlv, 80, $monflv , 8 , $ectID , 64 , 69 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 15 sẽ xuất hiện tại: [color=ffB54ECA]Điểm C" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]15th wave of monster will spawn in: [color=ffB54ECA]Area C" )
                              endif
					endif
					if $kill == 302
						BC( "screen" , "map" , $ectID , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectID , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectID , 4 )
					endif
					if $kill == 300
						$time = $round * 10
						BC("screen", "map", $ectID, "Your party took ",$time," seconds to kill 300 Trial Monsters!" )
						BC("chat", "map", $ectID, "Your party took ",$time," seconds to kill 300 Trial Monsters!" )
					endif
					if $kill == 327
						$ectID = GetEctypeID( -1 , 233 )
						
						$lv = GetEctypeVar( $ectID , 110 )
						$boss = GetEctypeVar( $ectID , 0 )
						if $boss == 0
							AddLevelFieldMonster( 51248 , 53, $monlv,53, $monflv , 1 , $ectID , 60 , 67 , 0 )
							SetEctypeVar( $ectID , 0 , 1 )
							BC( "screen" , "map" , $ectID , "The Trial Adjudicator appears!!" )
							BC( "chat" , "map" , $ectID , "The Trial Adjudicator appears!!" )
						endif
					endif
				endif
			endif	
          else
			if $monlv < 80
				if $Dif == 1				
					if $kill == 12
						AddLevelMonster( $monID , 50 , $monlv , 4 , $ectID , 65 , 58 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 4 , $ectID , 67 , 59 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 4 , $ectID , 68 , 62 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 4 , $ectID , 65 , 61 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 2 sẽ xuất hiện tại: [color=ffB54ECA]Điểm B" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]2nd wave of monster will spawn in: [color=ffB54ECA]Area B" )
                              endif
					endif
					if $kill == 28
						AddLevelMonster( $monID , 50 , $monlv , 4 , $ectID , 66 , 66 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 4 , $ectID , 68 , 66 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 4 , $ectID , 68 , 68 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 5 , $ectID , 64 , 69 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 3 sẽ xuất hiện tại: [color=ffB54ECA]Điểm C" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]3rd wave of monster will spawn in: [color=ffB54ECA]Area C" )
                              endif
					endif
					if $kill == 32
						BC( "screen" , "map" , $ectID , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectID , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectID , 4 )
					endif
					if $kill == 45
						AddLevelMonster( $monID , 50 , $monlv , 4 , $ectID , 58 , 66 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 4 , $ectID , 60 , 67 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 5 , $ectID , 60 , 69 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 5 , $ectID , 58 , 69 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 4 sẽ xuất hiện tại: [color=ffB54ECA]Điểm D" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]4th wave of monster will spawn in: [color=ffB54ECA]Area D" )
                              endif
					endif
					if $kill == 63
						AddLevelMonster( $monID , 50 , $monlv , 4 , $ectID , 59 , 58 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 5 , $ectID , 61 , 58 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 5 , $ectID , 61 , 61 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 5 , $ectID , 58 , 61 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 5 sẽ xuất hiện tại: [color=ffB54ECA]Điểm A" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]5th wave of monster will spawn in: [color=ffB54ECA]Area A" )
                              endif
					endif
					if $kill == 82
						AddLevelMonster( $monID , 50 , $monlv , 5 , $ectID , 65 , 58 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 5 , $ectID , 67 , 59 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 5 , $ectID , 68 , 62 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 5 , $ectID , 65 , 61 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 6 sẽ xuất hiện tại: [color=ffB54ECA]Điểm B" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]6th wave of monster will spawn in: [color=ffB54ECA]Area B" )
                              endif
					endif
					if $kill == 86
						BC( "screen" , "map" , $ectID , "A Fallen Totem will appear in Section B in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectID , "A Fallen Totem will appear in Section B in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectID , 4 )
					endif
					if $kill == 100
						$time = $round * 10
						BC("screen", "map", $ectID, "Your party took ",$time," seconds to kill 100 Trial Monsters!" )
						BC("chat", "map", $ectID, "Your party took ",$time," seconds to kill 100 Trial Monsters!" )
					endif
					if $kill == 102
						AddLevelMonster( $monID , 50 , $monlv , 5 , $ectID , 66 , 66 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 5 , $ectID , 68 , 66 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 5 , $ectID , 68 , 68 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 6 , $ectID , 64 , 69 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 7 sẽ xuất hiện tại: [color=ffB54ECA]Điểm C" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]7th wave of monster will spawn in: [color=ffB54ECA]Area C" )
                              endif
					endif
					if $kill == 123
						AddLevelMonster( $monID , 50 , $monlv , 5 , $ectID , 58 , 66 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 5 , $ectID , 60 , 67 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 6 , $ectID , 60 , 69 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 6 , $ectID , 58 , 69 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 8 sẽ xuất hiện tại: [color=ffB54ECA]Điểm D" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]8th wave of monster will spawn in: [color=ffB54ECA]Area D" )
                              endif
					endif
					if $kill == 145
						AddLevelMonster( $monID , 50 , $monlv , 5 , $ectID , 59 , 58 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 6 , $ectID , 61 , 58 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 6 , $ectID , 61 , 61 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 6 , $ectID , 58 , 61 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 9 sẽ xuất hiện tại: [color=ffB54ECA]Điểm A" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]9th wave of monster will spawn in: [color=ffB54ECA]Area A" )
                              endif
					endif
					if $kill == 149
						BC( "screen" , "map" , $ectID , "A Fallen Totem will appear in Section A in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectID , "A Fallen Totem will appear in Section A in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectID , 4 )
					endif
					if $kill == 168
						AddLevelMonster( $monID , 50 , $monlv , 6 , $ectID , 65 , 58 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 6 , $ectID , 67 , 59 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 6 , $ectID , 68 , 62 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 6 , $ectID , 65 , 61 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 10 sẽ xuất hiện tại: [color=ffB54ECA]Điểm B" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]10th wave of monster will spawn in: [color=ffB54ECA]Area B" )
                              endif
					endif
					if $kill == 192
						AddLevelMonster( $monID , 50 , $monlv , 6 , $ectID , 66 , 66 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 6 , $ectID , 68 , 66 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 6 , $ectID , 68 , 68 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 7 , $ectID , 64 , 69 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 11 sẽ xuất hiện tại: [color=ffB54ECA]Điểm C" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]11th wave of monster will spawn in: [color=ffB54ECA]Area C" )
                              endif
					endif
					if $kill == 200
						$time = $round * 10
						BC("screen", "map", $ectID, "Your party took ",$time," seconds to kill 200 Trial Monsters!" )
						BC("chat", "map", $ectID, "Your party took ",$time," seconds to kill 200 Trial Monsters!" )
					endif
					if $kill == 217
						AddLevelMonster( $monID , 50 , $monlv , 6 , $ectID , 58 , 66 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 6 , $ectID , 60 , 67 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 7 , $ectID , 60 , 69 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 7 , $ectID , 58 , 69 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 12 sẽ xuất hiện tại: [color=ffB54ECA]Điểm D" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]12th wave of monster will spawn in: [color=ffB54ECA]Area D" )
                              endif
					endif
					if $kill == 221
						BC( "screen" , "map" , $ectID , "A Fallen Totem will appear in Section D in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectID , "A Fallen Totem will appear in Section D in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectID , 4 )
					endif
					if $kill == 243
						AddLevelMonster( $monID , 50 , $monlv , 6 , $ectID , 59 , 58 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 7 , $ectID , 61 , 58 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 7 , $ectID , 61 , 61 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 7 , $ectID , 58 , 61 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 13 sẽ xuất hiện tại: [color=ffB54ECA]Điểm A" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]13th wave of monster will spawn in: [color=ffB54ECA]Area A" )
                              endif
					endif
					if $kill == 270
						AddLevelMonster( $monID , 50 , $monlv , 7 , $ectID , 65 , 58 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 7 , $ectID , 67 , 59 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 7 , $ectID , 68 , 62 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 7 , $ectID , 65 , 61 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 14 sẽ xuất hiện tại: [color=ffB54ECA]Điểm B" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]14th wave of monster will spawn in: [color=ffB54ECA]Area B" )
                              endif
					endif
					if $kill == 298
						AddLevelMonster( $monID , 50 , $monlv , 7 , $ectID , 66 , 66 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 7 , $ectID , 68 , 66 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 7 , $ectID , 68 , 68 , 1 )
						AddLevelMonster( $monID , 50 , $monlv , 8 , $ectID , 64 , 69 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 15 sẽ xuất hiện tại: [color=ffB54ECA]Điểm C" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]15th wave of monster will spawn in: [color=ffB54ECA]Area C" )
                              endif
					endif
					if $kill == 302
						BC( "screen" , "map" , $ectID , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectID , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectID , 4 )
					endif
					if $kill == 300
						$time = $round * 10
						BC("screen", "map", $ectID, "Your party took ",$time," seconds to kill 300 Trial Monsters!" )
						BC("chat", "map", $ectID, "Your party took ",$time," seconds to kill 300 Trial Monsters!" )
					endif
					if $kill == 327
						$ectID = GetEctypeID( -1 , 233 )
						
						$lv = GetEctypeVar( $ectID , 110 )
						$boss = GetEctypeVar( $ectID , 0 )
						if $boss == 0
							AddLevelMonster( 51248 , 53 , $lv , 1 , $ectID , 60 , 67 , 0 )
							SetEctypeVar( $ectID , 0 , 1 )
							BC( "screen" , "map" , $ectID , "The Trial Adjudicator appears!!" )
							BC( "chat" , "map" , $ectID , "The Trial Adjudicator appears!!" )
						endif
					endif
				endif
			endif
			if $monlv >= 80
				if $Dif == 1					
					if $kill == 12
						AddLevelMonster( $monID , 80 , $monlv , 4 , $ectID , 65 , 58 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 4 , $ectID , 67 , 59 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 4 , $ectID , 68 , 62 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 4 , $ectID , 65 , 61 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 2 sẽ xuất hiện tại: [color=ffB54ECA]Điểm B" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]2nd wave of monster will spawn in: [color=ffB54ECA]Area B" )
                              endif
					endif
					if $kill == 28
						AddLevelMonster( $monID , 80 , $monlv , 4 , $ectID , 66 , 66 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 4 , $ectID , 68 , 66 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 4 , $ectID , 68 , 68 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 5 , $ectID , 64 , 69 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 3 sẽ xuất hiện tại: [color=ffB54ECA]Điểm C" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]3rd wave of monster will spawn in: [color=ffB54ECA]Area C" )
                              endif
					endif
					if $kill == 32
						BC( "screen" , "map" , $ectID , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectID , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectID , 4 )
					endif					
					if $kill == 45
						AddLevelMonster( $monID , 80 , $monlv , 4 , $ectID , 58 , 66 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 4 , $ectID , 60 , 67 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 5 , $ectID , 60 , 69 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 5 , $ectID , 58 , 69 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 4 sẽ xuất hiện tại: [color=ffB54ECA]Điểm D" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]4th wave of monster will spawn in: [color=ffB54ECA]Area D" )
                              endif
					endif
					if $kill == 63
						AddLevelMonster( $monID , 80 , $monlv , 4 , $ectID , 59 , 58 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 5 , $ectID , 61 , 58 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 5 , $ectID , 61 , 61 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 5 , $ectID , 58 , 61 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 5 sẽ xuất hiện tại: [color=ffB54ECA]Điểm A" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]5th wave of monster will spawn in: [color=ffB54ECA]Area A" )
                              endif
					endif
					if $kill == 82
						AddLevelMonster( $monID , 80 , $monlv , 5 , $ectID , 65 , 58 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 5 , $ectID , 67 , 59 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 5 , $ectID , 68 , 62 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 5 , $ectID , 65 , 61 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 6 sẽ xuất hiện tại: [color=ffB54ECA]Điểm B" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]6th wave of monster will spawn in: [color=ffB54ECA]Area B" )
                              endif
					endif
					if $kill == 86
						BC( "screen" , "map" , $ectID , "A Fallen Totem will appear in Section B in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectID , "A Fallen Totem will appear in Section B in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectID , 4 )
					endif
					if $kill == 100
						$time = $round * 10
						BC("screen", "map", $ectID, "Your party took ",$time," seconds to kill 100 Trial Monsters!" )
						BC("chat", "map", $ectID, "Your party took ",$time," seconds to kill 100 Trial Monsters!" )
					endif
					if $kill == 102
						AddLevelMonster( $monID , 80 , $monlv , 5 , $ectID , 66 , 66 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 5 , $ectID , 68 , 66 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 5 , $ectID , 68 , 68 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 6 , $ectID , 64 , 69 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 7 sẽ xuất hiện tại: [color=ffB54ECA]Điểm C" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]7th wave of monster will spawn in: [color=ffB54ECA]Area C" )
                              endif
					endif
					if $kill == 123
						AddLevelMonster( $monID , 80 , $monlv , 5 , $ectID , 58 , 66 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 5 , $ectID , 60 , 67 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 6 , $ectID , 60 , 69 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 6 , $ectID , 58 , 69 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 8 sẽ xuất hiện tại: [color=ffB54ECA]Điểm D" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]8th wave of monster will spawn in: [color=ffB54ECA]Area D" )
                              endif
					endif
					if $kill == 145
						AddLevelMonster( $monID , 80 , $monlv , 5 , $ectID , 59 , 58 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 6 , $ectID , 61 , 58 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 6 , $ectID , 61 , 61 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 6 , $ectID , 58 , 61 , 1 )
                             if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 9 sẽ xuất hiện tại: [color=ffB54ECA]Điểm A" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]9th wave of monster will spawn in: [color=ffB54ECA]Area A" )
                              endif
					endif
					if $kill == 149
						BC( "screen" , "map" , $ectID , "A Fallen Totem will appear in Section A in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectID , "A Fallen Totem will appear in Section A in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectID , 4 )
					endif
					if $kill == 168
						AddLevelMonster( $monID , 80 , $monlv , 6 , $ectID , 65 , 58 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 6 , $ectID , 67 , 59 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 6 , $ectID , 68 , 62 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 6 , $ectID , 65 , 61 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 10 sẽ xuất hiện tại: [color=ffB54ECA]Điểm B" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]10th wave of monster will spawn in: [color=ffB54ECA]Area B" )
                              endif
					endif
					if $kill == 192
						AddLevelMonster( $monID , 80 , $monlv , 6 , $ectID , 66 , 66 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 6 , $ectID , 68 , 66 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 6 , $ectID , 68 , 68 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 7 , $ectID , 64 , 69 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 11 sẽ xuất hiện tại: [color=ffB54ECA]Điểm C" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]11th wave of monster will spawn in: [color=ffB54ECA]Area C" )
                              endif
					endif
					if $kill == 200
						$time = $round * 10
						BC("screen", "map", $ectID, "Your party took ",$time," seconds to kill 200 Trial Monsters!" )
						BC("chat", "map", $ectID, "Your party took ",$time," seconds to kill 200 Trial Monsters!" )
					endif
					if $kill == 217
						AddLevelMonster( $monID , 80 , $monlv , 6 , $ectID , 58 , 66 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 6 , $ectID , 60 , 67 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 7 , $ectID , 60 , 69 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 7 , $ectID , 58 , 69 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 12 sẽ xuất hiện tại: [color=ffB54ECA]Điểm D" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]12th wave of monster will spawn in: [color=ffB54ECA]Area D" )
                              endif
					endif
					if $kill == 221
						BC( "screen" , "map" , $ectID , "A Fallen Totem will appear in Section D in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectID , "A Fallen Totem will appear in Section D in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectID , 4 )
					endif
					if $kill == 243
						AddLevelMonster( $monID , 80 , $monlv , 6 , $ectID , 59 , 58 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 7 , $ectID , 61 , 58 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 7 , $ectID , 61 , 61 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 7 , $ectID , 58 , 61 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 13 sẽ xuất hiện tại: [color=ffB54ECA]Điểm A" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]13th wave of monster will spawn in: [color=ffB54ECA]Area A" )
                              endif
					endif
					if $kill == 270
						AddLevelMonster( $monID , 80 , $monlv , 7 , $ectID , 65 , 58 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 7 , $ectID , 67 , 59 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 7 , $ectID , 68 , 62 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 7 , $ectID , 65 , 61 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 14 sẽ xuất hiện tại: [color=ffB54ECA]Điểm B" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]14th wave of monster will spawn in: [color=ffB54ECA]Area B" )
                              endif
					endif
					if $kill == 298
						AddLevelMonster( $monID , 80 , $monlv , 7 , $ectID , 66 , 66 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 7 , $ectID , 68 , 66 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 7 , $ectID , 68 , 68 , 1 )
						AddLevelMonster( $monID , 80 , $monlv , 8 , $ectID , 64 , 69 , 1 )
                              if $lang == 1
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]Đợt Quái thứ 15 sẽ xuất hiện tại: [color=ffB54ECA]Điểm C" )
                              endif
                              if $lang == 2
                                   BC( "chat" , "player" , -1 , "[color=FF22E974]15th wave of monster will spawn in: [color=ffB54ECA]Area C" )
                              endif
					endif
					if $kill == 302
						BC( "screen" , "map" , $ectID , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						BC( "chat" , "map" , $ectID , "A Fallen Totem will appear in Section C in 20 seconds. Use all your might to destroy it quickly!!" )
						StartEctypeTimer( $ectID , 4 )
					endif
					if $kill == 300
						$time = $round * 10
						BC("screen", "map", $ectID, "Your party took ",$time," seconds to kill 300 Trial Monsters!" )
						BC("chat", "map", $ectID, "Your party took ",$time," seconds to kill 300 Trial Monsters!" )
					endif
					if $kill == 327
						$ectID = GetEctypeID( -1 , 233 )						
						$lv = GetEctypeVar( $ectID , 110 )
						$boss = GetEctypeVar( $ectID , 0 )
						if $boss == 0
							AddLevelMonster( 51248 , 53 , $lv , 1 , $ectID , 60 , 67 , 0 )
							SetEctypeVar( $ectID , 0 , 1 )
							BC( "screen" , "map" , $ectID , "The Trial Adjudicator appears!!" )
							BC( "chat" , "map" , $ectID , "The Trial Adjudicator appears!!" )
						endif
					endif
				endif
			endif		
          endif
	}
	
