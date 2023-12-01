	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/09/05
	//		Author:??
	//		TaskName:HD-liumangxinzhen-SHUIJING6.s
	//		TaskID:????-????NPC?????
	//
	//****************************************
	function OnRequest(){

	}
	function OnOption0(){
		$Line = GetServerLineID()
		$is_line = $Line % 2
		if $is_line != 0
			BC( "dialogbox", "player", -1, "You can only activate Aura Stones on realms 2, 4, 6, and 8." )
			return
		endif


	//???????
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		$team_count = GetTeamMemberCount(-1)
		//????????





		if $team_count > 1
			if $player_id != $team_headerID
			//??????,?????
				BC( "dialogbox", "player", -1, "You must be the party leader." )
				return
			endif
		else
			BC( "dialogbox", "player", -1, "There must be at least 2 players in your party to continue." )
			return
		endif

	//?????????
		$size = GetTeamAreaSize(-1)
		//?????????
		if $size > 10
			//?????????????
			BC( "dialogbox", "player", -1, "Some of your party members are too far away!" )
			return
		endif

		//??????????
		//????????????????
		$teamplayer1_id =  GetTeamMemberID( -1, 0 )
		$teamplayer2_id =  GetTeamMemberID( -1, 1 )
		$teamplayer3_id =  GetTeamMemberID( -1, 2 )
		$teamplayer4_id =  GetTeamMemberID( -1, 3 )
		$teamplayer5_id =  GetTeamMemberID( -1, 4 )
		$teamplayer6_id =  GetTeamMemberID( -1, 5 )

		if $teamplayer1_id != -1
			//$player2_time =  GetPlayerVar( $teamplayer2_id, 3600 )
			#name = GetPlayerInfo ($teamplayer1_id ,"name" )
			$result = IsTaskAccept( $teamplayer1_id , 956 )
			//?????????
			if $result != 0
				BC( "dialogbox", "player", -1 ,"The hero ",#name," is not carrying a Music Gem." )
				return
			endif
			//??1????????
			$is_complete = GetPlayerVar($teamplayer1_id ,7)
			if $is_complete == 1
				BC( "dialogbox", "player",-1 ,"The hero ",#name," has already used a Music Gem here." )
				return
			endif
			$player1_stone = GetPlayerVar($teamplayer1_id ,3202)
		endif

		if $teamplayer2_id != -1
			//$player2_time =  GetPlayerVar( $teamplayer2_id, 3600 )
			#name = GetPlayerInfo ($teamplayer2_id ,"name" )
			$result = IsTaskAccept( $teamplayer2_id , 956 )
			//?????????
			if $result != 0
				BC( "dialogbox", "player", -1 ,"The hero ",#name," is not carrying a Music Gem." )
				return
			endif
			//??1????????
			$is_complete = GetPlayerVar($teamplayer2_id ,7)
			if $is_complete == 1
				BC( "dialogbox", "player",-1 ,"The hero ",#name," has already used a Music Gem here." )
				return
			endif
			$player2_stone = GetPlayerVar($teamplayer2_id ,3202)
		endif

		if $teamplayer3_id != -1
			//$player2_time =  GetPlayerVar( $teamplayer2_id, 3600 )
			#name = GetPlayerInfo ($teamplayer3_id ,"name" )
			$result = IsTaskAccept( $teamplayer3_id , 956 )
			//?????????
			if $result != 0
				BC( "dialogbox", "player", -1 ,"The hero ",#name," is not carrying a Music Gem." )
				return
			endif
			//??1????????
			$is_complete = GetPlayerVar($teamplayer3_id ,7)
			if $is_complete == 1
				BC( "dialogbox", "player",-1 ,"The hero ",#name," has already used a Music Gem here." )
				return
			endif
			$player3_stone = GetPlayerVar($teamplayer3_id ,3202)
		endif

		if $teamplayer4_id != -1
			//$player2_time =  GetPlayerVar( $teamplayer2_id, 3600 )
			#name = GetPlayerInfo ($teamplayer4_id ,"name" )
			$result = IsTaskAccept( $teamplayer4_id , 956 )
			//?????????
			if $result != 0
				BC( "dialogbox", "player", -1 ,"The hero ",#name," is not carrying a Music Gem." )
				return
			endif
			//??1????????
			$is_complete = GetPlayerVar($teamplayer4_id ,7)
			if $is_complete == 1
				BC( "dialogbox", "player",-1 ,"The hero ",#name," has already used a Music Gem here." )
				return
			endif
			$player4_stone = GetPlayerVar($teamplayer4_id ,3202)
		endif


		if $teamplayer5_id != -1
			//$player2_time =  GetPlayerVar( $teamplayer2_id, 3600 )
			#name = GetPlayerInfo ($teamplayer5_id ,"name" )
			$result = IsTaskAccept( $teamplayer5_id , 956 )
			//?????????
			if $result != 0
				BC( "dialogbox", "player", -1 ,"The hero ",#name," is not carrying a Music Gem." )
				return
			endif
			//??1????????
			$is_complete = GetPlayerVar($teamplayer5_id ,7)
			if $is_complete == 1
				BC( "dialogbox", "player",-1 ,"The hero ",#name," has already used a Music Gem here." )
				return
			endif
			$player5_stone = GetPlayerVar($teamplayer5_id ,3202)
		endif


		if $teamplayer6_id != -1
			//$player2_time =  GetPlayerVar( $teamplayer2_id, 3600 )
			#name = GetPlayerInfo ($teamplayer6_id ,"name" )
			$result = IsTaskAccept( $teamplayer6_id , 956 )
			//?????????
			if $result != 0
				BC( "dialogbox", "player", -1 ,"The hero ",#name," is not carrying a Music Gem." )
				return
			endif
			//??1????????
			$is_complete = GetPlayerVar($teamplayer6_id ,7)
			if $is_complete == 1
				BC( "dialogbox", "player",-1 ,"The hero ",#name," has already used a Music Gem here." )
				return
			endif
			$player6_stone = GetPlayerVar($teamplayer6_id ,3202)
		endif


	//??????????????
	//1----------------------------------------------------
		if $player1_stone == 1
			$color_1 += 1
		endif
		if $player2_stone == 1
			$color_1 += 1
		endif
		if $player3_stone == 1
			$color_1 += 1
		endif
		if $player4_stone == 1
			$color_1 += 1
		endif
		if $player5_stone == 1
			$color_1 += 1
		endif
		if $player6_stone == 1
			$color_1 += 1
		endif
	//-----------------------------------------------------
	//2----------------------------------------------------
		if $player1_stone == 2
			$color_2 += 1
		endif
		if $player2_stone == 2
			$color_2 += 1
		endif
		if $player3_stone == 2
			$color_2 += 1
		endif
		if $player4_stone == 2
			$color_2 += 1
		endif
		if $player5_stone == 2
			$color_2 += 1
		endif
		if $player6_stone == 2
			$color_2 += 1
		endif
	//-----------------------------------------------------
	//3----------------------------------------------------
		if $player1_stone == 3
			$color_3 += 1
		endif
		if $player2_stone == 3
			$color_3 += 1
		endif
		if $player3_stone == 3
			$color_3 += 1
		endif
		if $player4_stone == 3
			$color_3 += 1
		endif
		if $player5_stone == 3
			$color_3 += 1
		endif
		if $player6_stone == 3
			$color_3 += 1
		endif
	//-----------------------------------------------------
	//4----------------------------------------------------
		if $player1_stone == 4
			$color_4 += 1
		endif
		if $player2_stone == 4
			$color_4 += 1
		endif
		if $player3_stone == 4
			$color_4 += 1
		endif
		if $player4_stone == 4
			$color_4 += 1
		endif
		if $player5_stone == 4
			$color_4 += 1
		endif
		if $player6_stone == 4
			$color_4 += 1
		endif
	//-----------------------------------------------------
	//5----------------------------------------------------
		if $player1_stone == 5
			$color_5 += 1
		endif
		if $player2_stone == 5
			$color_5 += 1
		endif
		if $player3_stone == 5
			$color_5 += 1
		endif
		if $player4_stone == 5
			$color_5 += 1
		endif
		if $player5_stone == 5
			$color_5 += 1
		endif
		if $player6_stone == 5
			$color_5 += 1
		endif
	//-----------------------------------------------------
	//6----------------------------------------------------
		if $player1_stone == 6
			$color_6 += 1
		endif
		if $player2_stone == 6
			$color_6 += 1
		endif
		if $player3_stone == 6
			$color_6 += 1
		endif
		if $player4_stone == 6
			$color_6 += 1
		endif
		if $player5_stone == 6
			$color_6 += 1
		endif
		if $player6_stone == 6
			$color_6 += 1
		endif
	//-----------------------------------------------------
	//7----------------------------------------------------
		if $player1_stone == 7
			$color_7 += 1
		endif
		if $player2_stone == 7
			$color_7 += 1
		endif
		if $player3_stone == 7
			$color_7 += 1
		endif
		if $player4_stone == 7
			$color_7 += 1
		endif
		if $player5_stone == 7
			$color_7 += 1
		endif
		if $player6_stone == 7
			$color_7 += 1
		endif
	//-----------------------------------------------------
	//?????????
	$max_stone = 0

	if $color_1 >= $color_2
		$max_stone = $color_1
	else
		$max_stone = $color_2
	endif
	if $max_stone < $color_3
		$max_stone = $color_3
	endif
	if $max_stone < $color_4
		$max_stone = $color_4
	endif
	if $max_stone < $color_5
		$max_stone = $color_5
	endif
	if $max_stone < $color_6
		$max_stone = $color_6
	endif
	if $max_stone < $color_7
		$max_stone = $color_7
	endif



	//??????
	$a = $team_count - $max_stone
	//?????????
	if $team_count == 1
		$max_stone = 1
		$a = 0
	endif

	//?????????????????
	if $b == 0
		if $team_count == 6
			//????????.?????????.
			$n = RandomNumber ( 1, 8000 )
			if $teamplayer1_id != -1
				if $n == 1
					$bag_count = GetPlayerInfo( $teamplayer1_id , "nullitem", 0 )
					if $bag_count < 1
						BC("chat", "player", $teamplayer1_id ,"The six gems come together and make a wondrous harmony. They release a great power, recovering the strength of Atlantis' defensive aura by leaps and bounds!")
						BC("screen", "player", $teamplayer1_id ,"The six gems come together and make a wondrous harmony. They release a great power, recovering the strength of Atlantis' defensive aura by leaps and bounds!")
					else
						#name = GetPlayerInfo ($teamplayer1_id ,"name" )
						BC("chat", "servergroup", -1 ,"The hero ",#name," got the Musical Maestro Pet from the Hexagram event.")
						BC("screen", "servergroup", -1 ,"The hero ",#name," got the Musical Maestro Pet from the Hexagram event.")

//						BC("chat", "player", $teamplayer1_id ,"GUID:05034000034")
//						BC("screen", "player", $teamplayer1_id ,"GUID:05034000035")
						AddPlayerInfo($teamplayer1_id , "item" , 62597 , 1)
					endif
				else
					BC("chat", "player", $teamplayer1_id ,"The six gems come together and make a wondrous harmony. They release a great power, recovering the strength of Atlantis' defensive aura by leaps and bounds!")
					BC("screen", "player", $teamplayer1_id ,"The six gems come together and make a wondrous harmony. They release a great power, recovering the strength of Atlantis' defensive aura by leaps and bounds!")
				endif
			endif
			if $teamplayer2_id != -1
				if $n == 2
					$bag_count = GetPlayerInfo( $teamplayer2_id , "nullitem", 0 )
					if $bag_count < 1
						BC("chat", "player", $teamplayer2_id ,"The gems make a beautiful sound, releasing a great energy, and charging Atlantis' defenses by a leaps and bounds!")
						BC("screen", "player", $teamplayer2_id ,"The gems make a beautiful sound, releasing a great energy, and charging Atlantis' defenses by a leaps and bounds!")
					else
						#name = GetPlayerInfo ($teamplayer2_id ,"name" )
						BC("chat", "servergroup", -1 ,"The hero ",#name," got the Musical Maestro Pet from the Hexagram event.")
						BC("screen", "servergroup", -1 ,"The hero ",#name," got the Musical Maestro Pet from the Hexagram event.")
//
//						BC("chat", "player", $teamplayer2_id ,"GUID:05034000044")
//						BC("screen", "player", $teamplayer2_id ,"GUID:05034000045")
						AddPlayerInfo($teamplayer2_id , "item" , 62597 , 1)
					endif
				else
					BC("chat", "player", $teamplayer2_id ,"The six gems come together and make a wondrous harmony. They release a great power, recovering the strength of Atlantis' defensive aura by leaps and bounds!")
					BC("screen", "player", $teamplayer2_id ,"The six gems come together and make a wondrous harmony. They release a great power, recovering the strength of Atlantis' defensive aura by leaps and bounds!")
				endif
			endif
			if $teamplayer3_id != -1
				if $n == 3
					$bag_count = GetPlayerInfo( $teamplayer3_id , "nullitem", 0 )
					if $bag_count < 1
						BC("chat", "player", $teamplayer3_id ,"The gems make a beautiful sound, releasing a great energy, and charging Atlantis' defenses by a leaps and bounds!")
						BC("screen", "player", $teamplayer3_id ,"The gems make a beautiful sound, releasing a great energy, and charging Atlantis' defenses by a leaps and bounds!")
					else
						#name = GetPlayerInfo ($teamplayer3_id ,"name" )
						BC("chat", "servergroup", -1 ,"The hero ",#name," got the Musical Maestro Pet from the Hexagram event.")
						BC("screen", "servergroup", -1 ,"The hero ",#name," got the Musical Maestro Pet from the Hexagram event.")

//						BC("chat", "player", $teamplayer3_id ,"GUID:05034000054")
//						BC("screen", "player", $teamplayer3_id ,"GUID:05034000055")
						AddPlayerInfo($teamplayer3_id , "item" , 62597 , 1)
					endif
				else
					BC("chat", "player", $teamplayer3_id ,"The six gems come together and make a wondrous harmony. They release a great power, recovering the strength of Atlantis' defensive aura by leaps and bounds!")
					BC("screen", "player", $teamplayer3_id ,"The six gems come together and make a wondrous harmony. They release a great power, recovering the strength of Atlantis' defensive aura by leaps and bounds!")
				endif
			endif
			if $teamplayer4_id != -1
				if $n == 4
					$bag_count = GetPlayerInfo( $teamplayer4_id , "nullitem", 0 )
					if $bag_count < 1
						BC("chat", "player", $teamplayer4_id ,"The gems make a beautiful sound, releasing a great energy, and charging Atlantis' defenses by a leaps and bounds!")
						BC("screen", "player", $teamplayer4_id ,"The gems make a beautiful sound, releasing a great energy, and charging Atlantis' defenses by a leaps and bounds!")
					else
						#name = GetPlayerInfo ($teamplayer4_id ,"name" )
						BC("chat", "servergroup", -1 ,"The hero ",#name," got the Musical Maestro Pet from the Hexagram event.")
						BC("screen", "servergroup", -1 ,"The hero ",#name," got the Musical Maestro Pet from the Hexagram event.")

//						BC("chat", "player", $teamplayer4_id ,"GUID:05034000064")
//						BC("screen", "player", $teamplayer4_id ,"GUID:05034000065")
						AddPlayerInfo($teamplayer4_id , "item" , 62597 , 1)
					endif
				else
					BC("chat", "player", $teamplayer4_id ,"The six gems come together and make a wondrous harmony. They release a great power, recovering the strength of Atlantis' defensive aura by leaps and bounds!")
					BC("screen", "player", $teamplayer4_id ,"The six gems come together and make a wondrous harmony. They release a great power, recovering the strength of Atlantis' defensive aura by leaps and bounds!")
				endif
			endif
			if $teamplayer5_id != -1
				if $n == 5
					$bag_count = GetPlayerInfo( $teamplayer5_id , "nullitem", 0 )
					if $bag_count < 1
						BC("chat", "player", $teamplayer5_id ,"The gems make a beautiful sound, releasing a great energy, and charging Atlantis' defenses by a leaps and bounds!")
						BC("screen", "player", $teamplayer5_id ,"The gems make a beautiful sound, releasing a great energy, and charging Atlantis' defenses by a leaps and bounds!")
					else
						#name = GetPlayerInfo ($teamplayer5_id ,"name" )
						BC("chat", "servergroup", -1 ,"The hero ",#name," got the Musical Maestro Pet from the Hexagram event.")
						BC("screen", "servergroup", -1 ,"The hero ",#name," got the Musical Maestro Pet from the Hexagram event.")

//						BC("chat", "player", $teamplayer5_id ,"GUID:05034000074")
//						BC("screen", "player", $teamplayer5_id ,"GUID:05034000075")
						AddPlayerInfo($teamplayer5_id , "item" , 62597 , 1)
					endif
				else
					BC("chat", "player", $teamplayer5_id ,"The six gems come together and make a wondrous harmony. They release a great power, recovering the strength of Atlantis' defensive aura by leaps and bounds!")
					BC("screen", "player", $teamplayer5_id ,"The six gems come together and make a wondrous harmony. They release a great power, recovering the strength of Atlantis' defensive aura by leaps and bounds!")
				endif
			endif
			if $teamplayer6_id != -1
				if $n == 6
					$bag_count = GetPlayerInfo( $teamplayer6_id , "nullitem", 0 )
					if $bag_count < 1
						BC("chat", "player", $teamplayer6_id ,"The gems make a beautiful sound, releasing a great energy, and charging Atlantis' defenses by a leaps and bounds!")
						BC("screen", "player", $teamplayer6_id ,"The gems make a beautiful sound, releasing a great energy, and charging Atlantis' defenses by a leaps and bounds!")
					else
						#name = GetPlayerInfo ($teamplayer6_id ,"name" )
						BC("chat", "servergroup", -1 ,"The hero ",#name," got the Musical Maestro Pet from the Hexagram event.")
						BC("screen", "servergroup", -1 ,"The hero ",#name," got the Musical Maestro Pet from the Hexagram event.")

//						BC("chat", "player", $teamplayer6_id ,"GUID:05034000084")
//						BC("screen", "player", $teamplayer6_id ,"GUID:05034000085")
						AddPlayerInfo($teamplayer6_id , "item" , 62597 , 1)
					endif
				else
					BC("chat", "player", $teamplayer6_id ,"The six gems come together and make a wondrous harmony. They release a great power, recovering the strength of Atlantis' defensive aura by leaps and bounds!")
					BC("screen", "player", $teamplayer6_id ,"The six gems come together and make a wondrous harmony. They release a great power, recovering the strength of Atlantis' defensive aura by leaps and bounds!")
				endif
			endif
		endif
		if $team_count == 1
			BC("chat", "team", $team_headerID ,"The gems make a beautiful sound. They release a great power, recovering the strength of Atlantis' defensive aura by a good amount.")
			BC("screen", "team", $team_headerID ,"The gems make a beautiful sound. They release a great power, recovering the strength of Atlantis' defensive aura by a good amount.")
		else
			if $team_count != 6
				BC("chat", "team", $team_headerID ,"The gems make a beautiful sound, releasing a great energy, and charging Atlantis' defenses by a good amount.")
				BC("screen", "team", $team_headerID ,"The gems make a beautiful sound, releasing a great energy, and charging Atlantis' defenses by a good amount.")
			endif
		endif
	else
		BC("chat", "team", $team_headerID ,"Some gems of the same color are creating a wonderful sound. The gems are creating a strong power. The power of the Magic Array Stone has recovered slightly from the noise of the other music.")
		BC("screen", "team", $team_headerID ,"Some gems of the same color are creating a wonderful sound. The gems are creating a strong power. The power of the Magic Array Stone has recovered slightly from the noise of the other music.")
	endif


	//?????????????????
	if $teamplayer1_id != -1
		SetPlayerVar($teamplayer1_id ,7 , 1)
		//??????????????
		$is_complate_1 = GetPlayerVar($teamplayer1_id ,2)
		$is_complate_2 = GetPlayerVar($teamplayer1_id ,3)
		$is_complate_3 = GetPlayerVar($teamplayer1_id ,4)
		$is_complate_4 = GetPlayerVar($teamplayer1_id ,5)
		$is_complate_5 = GetPlayerVar($teamplayer1_id ,6)
		$is_complate_6 = GetPlayerVar($teamplayer1_id ,7)
						//???????????
		$level = GetPlayerInfo($teamplayer1_id,"level")
		$b = $level * $level
		$c = $b * 3
		$d = $c * $a
		$e = $c * $max_stone
		$f = $e * 5
		$g = $f + $d
		$h = $g * 12
		$i = $g * 28
		$Exp1 = $h / 100
		$Exp2 = $i / 100
		if $level < 44
			$level = 44
		endif
		$Exp3 = $level - 44
		$Exp4 = $Exp3 * 40
		$Exp5 = $Exp4 + 1000
		$Exp6 = $Exp5 * $Exp1
		$Exp7 = $Exp5 * $Exp2
		$addexp = $Exp6 / 1000
		$complate_exp = $Exp7 / 1000
	//--------------------------------
		AddPlayerInfo( $teamplayer1_id, "exp", $addexp)
		PlayEffect($teamplayer1_id ,"common\liumangxing\liumangxing.ini")
		if $is_complate_1 == 1
			if $is_complate_2 == 1
				if $is_complate_3 == 1
					if $is_complate_4 == 1
						if $is_complate_5 == 1
							if $is_complate_6 == 1
								//????????????,???
								AddPlayerInfo( $teamplayer1_id, "exp", $complate_exp)
								//ADD????
								BC( "messagebox", "player", $teamplayer1_id, "All six Aura Stones have been activated! You are awarded: ",$complate_exp," EXP!" )
								SetTaskDone ( $teamplayer1_id, 956 )
								//?????????
								SubPlayerInfo( $teamplayer1_id, "item", 12159,-1)
								SubPlayerInfo( $teamplayer1_id, "item", 12160,-1)
								SubPlayerInfo( $teamplayer1_id, "item", 12161,-1)
								SubPlayerInfo( $teamplayer1_id, "item", 12162,-1)
								SubPlayerInfo( $teamplayer1_id, "item", 12163,-1)
								SubPlayerInfo( $teamplayer1_id, "item", 12164,-1)
								SubPlayerInfo( $teamplayer1_id, "item", 12165,-1)
								AddStatus($teamplayer1_id , 11661 , 1)
								if $max_stone == 6
									$level = GetPlayerInfo($team_headerID , "level")
									$temp_a = $level * $level
									$temp_b = $temp_a / 10
									$temp_c = $level * 9
									$allplayer_addexp = $temp_b + $temp_c
									#name = GetPlayerInfo ($team_headerID ,"name" )
									AddMapPlayerInfo (475 , "exp", $allplayer_addexp)
									//AddMapPlayerInfo (2, "exp", $allplayer_addexp)
									$line = GetServerLineID()
									BC( "screen", "servergroup", -1,"The hero ",#name ," led your party on realm ",$line," to help recover the power of Atlantis' defensive aura. ",$line ,"All players in Atlantis will receive " ,$allplayer_addexp," EXP!")
								endif
							endif
						endif
					endif
				endif
			endif
		endif
		//?????????????

	endif

	//--------------------------------------------------------------------------------------------------------------
	if $teamplayer2_id != -1
		SetPlayerVar($teamplayer2_id ,7 , 1)
		//??????????????
		$is_complate_1 = GetPlayerVar($teamplayer2_id ,2)
		$is_complate_2 = GetPlayerVar($teamplayer2_id ,3)
		$is_complate_3 = GetPlayerVar($teamplayer2_id ,4)
		$is_complate_4 = GetPlayerVar($teamplayer2_id ,5)
		$is_complate_5 = GetPlayerVar($teamplayer2_id ,6)
		$is_complate_6 = GetPlayerVar($teamplayer2_id ,7)
						//???????????
		$level = GetPlayerInfo($teamplayer2_id,"level")
		$b = $level * $level
		$c = $b * 3
		$d = $c * $a
		$e = $c * $max_stone
		$f = $e * 5
		$g = $f + $d
		$h = $g * 12
		$i = $g * 28
		$Exp1 = $h / 100
		$Exp2 = $i / 100
		if $level < 44
			$level = 44
		endif
		$Exp3 = $level - 44
		$Exp4 = $Exp3 * 40
		$Exp5 = $Exp4 + 1000
		$Exp6 = $Exp5 * $Exp1
		$Exp7 = $Exp5 * $Exp2
		$addexp = $Exp6 / 1000
		$complate_exp = $Exp7 / 1000
	//--------------------------------
		AddPlayerInfo( $teamplayer2_id, "exp", $addexp)
		PlayEffect($teamplayer2_id ,"common\liumangxing\liumangxing.ini")
		if $is_complate_1 == 1
			if $is_complate_2 == 1
				if $is_complate_3 == 1
					if $is_complate_4 == 1
						if $is_complate_5 == 1
							if $is_complate_6 == 1
								//????????????,???
								AddPlayerInfo( $teamplayer2_id, "exp", $complate_exp)
								//ADD????
								BC( "messagebox", "player", $teamplayer2_id, "All six Aura Stones have been activated! You are awarded: ",$complate_exp," EXP!" )
								SetTaskDone ( $teamplayer2_id, 956 )
								//?????????
								SubPlayerInfo( $teamplayer2_id, "item", 12159,-1)
								SubPlayerInfo( $teamplayer2_id, "item", 12160,-1)
								SubPlayerInfo( $teamplayer2_id, "item", 12161,-1)
								SubPlayerInfo( $teamplayer2_id, "item", 12162,-1)
								SubPlayerInfo( $teamplayer2_id, "item", 12163,-1)
								SubPlayerInfo( $teamplayer2_id, "item", 12164,-1)
								SubPlayerInfo( $teamplayer2_id, "item", 12165,-1)
								AddStatus($teamplayer2_id , 11661 , 1)
							endif
						endif
					endif
				endif
			endif
		endif
		//?????????????

	endif
	if $teamplayer3_id != -1
		SetPlayerVar($teamplayer3_id ,7 , 1)
		$is_complate_1 = GetPlayerVar($teamplayer3_id ,2)
		$is_complate_2 = GetPlayerVar($teamplayer3_id ,3)
		$is_complate_3 = GetPlayerVar($teamplayer3_id ,4)
		$is_complate_4 = GetPlayerVar($teamplayer3_id ,5)
		$is_complate_5 = GetPlayerVar($teamplayer3_id ,6)
		$is_complate_6 = GetPlayerVar($teamplayer3_id ,7)
						//???????????
		$level = GetPlayerInfo($teamplayer3_id,"level")
		$b = $level * $level
		$c = $b * 3
		$d = $c * $a
		$e = $c * $max_stone
		$f = $e * 5
		$g = $f + $d
		$h = $g * 12
		$i = $g * 28
		$Exp1 = $h / 100
		$Exp2 = $i / 100
		if $level < 44
			$level = 44
		endif
		$Exp3 = $level - 44
		$Exp4 = $Exp3 * 40
		$Exp5 = $Exp4 + 1000
		$Exp6 = $Exp5 * $Exp1
		$Exp7 = $Exp5 * $Exp2
		$addexp = $Exp6 / 1000
		$complate_exp = $Exp7 / 1000
	//--------------------------------
		AddPlayerInfo( $teamplayer3_id, "exp", $addexp)
		PlayEffect($teamplayer3_id ,"common\liumangxing\liumangxing.ini")
		if $is_complate_1 == 1
			if $is_complate_2 == 1
				if $is_complate_3 == 1
					if $is_complate_4 == 1
						if $is_complate_5 == 1
							if $is_complate_6 == 1
								//????????????,???
								AddPlayerInfo( $teamplayer3_id, "exp", $complate_exp)
								//ADD????
								BC( "messagebox", "player", $teamplayer3_id, "All six Aura Stones have been activated! You are awarded: ",$complate_exp," EXP!" )
								SetTaskDone ( $teamplayer3_id, 956 )
								//?????????
								SubPlayerInfo( $teamplayer3_id, "item", 12159,-1)
								SubPlayerInfo( $teamplayer3_id, "item", 12160,-1)
								SubPlayerInfo( $teamplayer3_id, "item", 12161,-1)
								SubPlayerInfo( $teamplayer3_id, "item", 12162,-1)
								SubPlayerInfo( $teamplayer3_id, "item", 12163,-1)
								SubPlayerInfo( $teamplayer3_id, "item", 12164,-1)
								SubPlayerInfo( $teamplayer3_id, "item", 12165,-1)
								AddStatus($teamplayer3_id , 11661 , 1)
							endif
						endif
					endif
				endif
			endif
		endif
		//?????????????

	endif
	if $teamplayer4_id != -1
		SetPlayerVar($teamplayer4_id ,7 , 1)
		$is_complate_1 = GetPlayerVar($teamplayer4_id ,2)
		$is_complate_2 = GetPlayerVar($teamplayer4_id ,3)
		$is_complate_3 = GetPlayerVar($teamplayer4_id ,4)
		$is_complate_4 = GetPlayerVar($teamplayer4_id ,5)
		$is_complate_5 = GetPlayerVar($teamplayer4_id ,6)
		$is_complate_6 = GetPlayerVar($teamplayer4_id ,7)
						//???????????
		$level = GetPlayerInfo($teamplayer4_id,"level")
		$b = $level * $level
		$c = $b * 3
		$d = $c * $a
		$e = $c * $max_stone
		$f = $e * 5
		$g = $f + $d
		$h = $g * 12
		$i = $g * 28
		$Exp1 = $h / 100
		$Exp2 = $i / 100
		if $level < 44
			$level = 44
		endif
		$Exp3 = $level - 44
		$Exp4 = $Exp3 * 40
		$Exp5 = $Exp4 + 1000
		$Exp6 = $Exp5 * $Exp1
		$Exp7 = $Exp5 * $Exp2
		$addexp = $Exp6 / 1000
		$complate_exp = $Exp7 / 1000
	//--------------------------------
		AddPlayerInfo( $teamplayer4_id, "exp", $addexp)
		PlayEffect($teamplayer4_id ,"common\liumangxing\liumangxing.ini")
		if $is_complate_1 == 1
			if $is_complate_2 == 1
				if $is_complate_3 == 1
					if $is_complate_4 == 1
						if $is_complate_5 == 1
							if $is_complate_6 == 1
								//????????????,???
								AddPlayerInfo( $teamplayer4_id, "exp", $complate_exp)
								//ADD????
								BC( "messagebox", "player", $teamplayer4_id, "All six Aura Stones have been activated! You are awarded: ",$complate_exp," EXP!" )
								SetTaskDone ( $teamplayer4_id, 956 )
								//?????????
								SubPlayerInfo( $teamplayer4_id, "item", 12159,-1)
								SubPlayerInfo( $teamplayer4_id, "item", 12160,-1)
								SubPlayerInfo( $teamplayer4_id, "item", 12161,-1)
								SubPlayerInfo( $teamplayer4_id, "item", 12162,-1)
								SubPlayerInfo( $teamplayer4_id, "item", 12163,-1)
								SubPlayerInfo( $teamplayer4_id, "item", 12164,-1)
								SubPlayerInfo( $teamplayer4_id, "item", 12165,-1)
								AddStatus($teamplayer4_id , 11661 , 1)
							endif
						endif
					endif
				endif
			endif
		endif
		//?????????????

	endif
	if $teamplayer5_id != -1
		SetPlayerVar($teamplayer5_id ,7 , 1)
		$is_complate_1 = GetPlayerVar($teamplayer5_id ,2)
		$is_complate_2 = GetPlayerVar($teamplayer5_id ,3)
		$is_complate_3 = GetPlayerVar($teamplayer5_id ,4)
		$is_complate_4 = GetPlayerVar($teamplayer5_id ,5)
		$is_complate_5 = GetPlayerVar($teamplayer5_id ,6)
		$is_complate_6 = GetPlayerVar($teamplayer5_id ,7)
						//???????????
		$level = GetPlayerInfo($teamplayer5_id,"level")
		$b = $level * $level
		$c = $b * 3
		$d = $c * $a
		$e = $c * $max_stone
		$f = $e * 5
		$g = $f + $d
		$h = $g * 12
		$i = $g * 28
		$Exp1 = $h / 100
		$Exp2 = $i / 100
		if $level < 44
			$level = 44
		endif
		$Exp3 = $level - 44
		$Exp4 = $Exp3 * 40
		$Exp5 = $Exp4 + 1000
		$Exp6 = $Exp5 * $Exp1
		$Exp7 = $Exp5 * $Exp2
		$addexp = $Exp6 / 1000
		$complate_exp = $Exp7 / 1000
	//--------------------------------
		AddPlayerInfo( $teamplayer5_id, "exp", $addexp)
		PlayEffect($teamplayer5_id ,"common\liumangxing\liumangxing.ini")
		if $is_complate_1 == 1
			if $is_complate_2 == 1
				if $is_complate_3 == 1
					if $is_complate_4 == 1
						if $is_complate_5 == 1
							if $is_complate_6 == 1
								//????????????,???
								AddPlayerInfo( $teamplayer5_id, "exp", $complate_exp)
								//ADD????
								BC( "messagebox", "player", $teamplayer5_id, "All six Aura Stones have been activated! You are awarded: ",$complate_exp," EXP!" )
								SetTaskDone ( $teamplayer5_id, 956 )
								//?????????
								SubPlayerInfo( $teamplayer5_id, "item", 12159,-1)
								SubPlayerInfo( $teamplayer5_id, "item", 12160,-1)
								SubPlayerInfo( $teamplayer5_id, "item", 12161,-1)
								SubPlayerInfo( $teamplayer5_id, "item", 12162,-1)
								SubPlayerInfo( $teamplayer5_id, "item", 12163,-1)
								SubPlayerInfo( $teamplayer5_id, "item", 12164,-1)
								SubPlayerInfo( $teamplayer5_id, "item", 12165,-1)
								AddStatus($teamplayer5_id , 11661 , 1)
							endif
						endif
					endif
				endif
			endif
		endif
		//?????????????

	endif
	if $teamplayer6_id != -1
		SetPlayerVar($teamplayer6_id ,7 , 1)
		$is_complate_1 = GetPlayerVar($teamplayer6_id ,2)
		$is_complate_2 = GetPlayerVar($teamplayer6_id ,3)
		$is_complate_3 = GetPlayerVar($teamplayer6_id ,4)
		$is_complate_4 = GetPlayerVar($teamplayer6_id ,5)
		$is_complate_5 = GetPlayerVar($teamplayer6_id ,6)
		$is_complate_6 = GetPlayerVar($teamplayer6_id ,7)
						//???????????
		$level = GetPlayerInfo($teamplayer6_id,"level")
		$b = $level * $level
		$c = $b * 3
		$d = $c * $a
		$e = $c * $max_stone
		$f = $e * 5
		$g = $f + $d
		$h = $g * 12
		$i = $g * 28
		$Exp1 = $h / 100
		$Exp2 = $i / 100
		if $level < 44
			$level = 44
		endif
		$Exp3 = $level - 44
		$Exp4 = $Exp3 * 40
		$Exp5 = $Exp4 + 1000
		$Exp6 = $Exp5 * $Exp1
		$Exp7 = $Exp5 * $Exp2
		$addexp = $Exp6 / 1000
		$complate_exp = $Exp7 / 1000
	//--------------------------------
		AddPlayerInfo( $teamplayer6_id, "exp", $addexp)
		PlayEffect($teamplayer6_id ,"common\liumangxing\liumangxing.ini")
		if $is_complate_1 == 1
			if $is_complate_2 == 1
				if $is_complate_3 == 1
					if $is_complate_4 == 1
						if $is_complate_5 == 1
							if $is_complate_6 == 1
								//????????????,???
								AddPlayerInfo( $teamplayer6_id, "exp", $complate_exp)
								//ADD????
								BC( "messagebox", "player", $teamplayer6_id, "All six Aura Stones have been activated! You are awarded: ",$complate_exp," EXP!" )
								SetTaskDone ( $teamplayer6_id, 956 )
								//?????????
								SubPlayerInfo( $teamplayer6_id, "item", 12159,-1)
								SubPlayerInfo( $teamplayer6_id, "item", 12160,-1)
								SubPlayerInfo( $teamplayer6_id, "item", 12161,-1)
								SubPlayerInfo( $teamplayer6_id, "item", 12162,-1)
								SubPlayerInfo( $teamplayer6_id, "item", 12163,-1)
								SubPlayerInfo( $teamplayer6_id, "item", 12164,-1)
								SubPlayerInfo( $teamplayer6_id, "item", 12165,-1)
								AddStatus($teamplayer6_id , 11661 , 1)
							endif
						endif
					endif
				endif
			endif
		endif
		//?????????????,??????

	endif

	//?????
	$PlayVar1 = GetPlayerVar( $teamplayer1_id, 40 )
	$PlayVar2 = GetPlayerVar( $teamplayer2_id, 40 )
	$PlayVar3 = GetPlayerVar( $teamplayer3_id, 40 )
	$PlayVar4 = GetPlayerVar( $teamplayer4_id, 40 )
	$PlayVar5 = GetPlayerVar( $teamplayer5_id, 40 )
	$PlayVar6 = GetPlayerVar( $teamplayer6_id, 40 )
	if $PlayVar1 != 1
		SetPlayerVar( $teamplayer1_id, 40, 1 )
	endif
	if $PlayVar2 != 1
		SetPlayerVar( $teamplayer2_id, 40, 1 )
	endif
	if $PlayVar3 != 1
		SetPlayerVar( $teamplayer3_id, 40, 1 )
	endif
	if $PlayVar4 != 1
		SetPlayerVar( $teamplayer4_id, 40, 1 )
	endif
	if $PlayVar5 != 1
		SetPlayerVar( $teamplayer5_id, 40, 1 )
	endif
	if $PlayVar6 != 1
		SetPlayerVar( $teamplayer6_id, 40, 1 )
	endif
	}

