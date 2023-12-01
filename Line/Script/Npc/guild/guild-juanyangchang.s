	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/18
	//		Author:???
	//		TaskName:guild-juanyangchang.s
	//		TaskID:
	//
	//****************************************
	//??1?? ?????????
	//??2?? ????????
	//??3?? ??????????
function OnRequest(){
//	//????????????????
	$Guildid = GetPlayerInfo( -1 , "guildid" )
	$LevelingBuilding = GetLevelUpBuildingID($Guildid)

		if $LevelingBuilding > 0
		DisableNpcOption(0)
	endif

	//??????????????
	$Guildrank = GetPlayerInfo( -1 , "guildrank" )

	if $Guildrank != 0
		DisableNpcOption(0)
	endif
//
//	//????????????,?????????????????
	if $LevelingBuilding != 6
		DisableNpcOption(1)
		DisableNpcOption(2)
	endif

//	//?????????,?????????????????
	if $LevelingBuilding < 0
		DisableNpcOption(1)
		DisableNpcOption(2)
	endif
//
	//????????,??????????
	$level = GetGuildBuildingLevel( $Guildid , 6 )
	if $level < 1
			DisableNpcOption(3)
			DisableNpcOption(4)
			DisableNpcOption(5)
			DisableNpcOption(6)
		endif
//
////	//?????????,??????
////	$Guildvarid = RandomNumber ( 51 , 90 )
////	$Guildvalue = GetGuildVar ($Guildid , $Guildvarid)
////	if $Guildvalue == $Guildvarid
////			DisableNpcOption(3)
////		endif
}
function OnOption0(){
	//????????
	$Guildid = GetPlayerInfo( -1 , "guildid" )
	if $Guildid <= 0
		BC( "dialogbox", "player", -1, "You don't have a Guild, you cannot upgrade the Beast Training Grounds." )
		return
	endif
	//??????????
	$Guildrank = GetPlayerInfo( -1 , "guildrank" )
	if $Guildrank != 0
		BC( "dialogbox", "player", -1, "Only the Guild Leader can upgrade the Beast Training Grounds!" )
		return
	endif
	//????????????
	$BuildingLevel = GetGuildBuildingLevel( $Guildid , 6 )
	if $BuildingLevel >= 5
		BC( "dialogbox", "player", -1, "The Beast Training Grounds has reached its maximum level. It cannot be upgraded any higher!" )
		return
	endif
	//???????????
	$LevelingBuilding = GetLevelUpBuildingID($Guildid)
	if $LevelingBuilding > 0
		BC( "dialogbox", "player", -1, "A Guild can only upgrade one building at a time." )
		return
	endif
	//????????????????
	$GuildLevel = GetGuildBuildingLevel( $Guildid , 1 )
	$BuildingLevel = GetGuildBuildingLevel( $Guildid , 6 )
	if $BuildingLevel == $GuildLevel
		BC( "dialogbox", "player", -1, "The Beast Training Grounds' level cannot exceed that of the Guild Meeting Hall's." )
		return
	endif
	$result = GuildBuildingLevelUp( $Guildid , 6 )
}
function OnOption1(){
	OpenItemPurchaseUI()
}
function OnOption2(){
	$Guildid = GetPlayerInfo( -1 , "guildid" )
	//????????id
	$LevelingBuilding = GetLevelUpBuildingID($Guildid)
	$BuildingExp = GetGuildBuildingExp($Guildid,$LevelingBuilding)
	$BuildingLevel = GetGuildBuildingLevel($Guildid , $LevelingBuilding)
	$BuildingLevel = $BuildingLevel + 1
	$BuildingMaxExp = GetGuildBuildingExpMax($LevelingBuilding , $BuildingLevel)
	if $LevelingBuilding == 1
		BC( "dialogbox", "player", -1, "The Guild Meeting Hall is under construction.\nCurrent progress is " , $BuildingExp , "/" , $BuildingMaxExp,"\n{#ffc72b2b=Gather Construction Materials in the Guild Territory and bring them to the building under construction to increase the construction progress.#}" )
	endif
	if $LevelingBuilding == 2
		BC( "dialogbox", "player", -1, "The Guild Trial Ground is under construction.\nCurrent progress is " , $BuildingExp , "/" , $BuildingMaxExp,"\n{#ffc72b2b=Gather Construction Materials in the Guild Territory and bring them to the building under construction to increase the construction progress.#}" )
	endif
	if $LevelingBuilding == 3
		BC( "dialogbox", "player", -1, "The Guild Knowledge Library is under construction.\nCurrent progress is " , $BuildingExp , "/" , $BuildingMaxExp,"\n{#ffc72b2b=Gather Construction Materials in the Guild Territory and bring them to the building under construction to increase the construction progress.#}" )
	endif
	if $LevelingBuilding == 4
		BC( "dialogbox", "player", -1, "The Guild Trial Ground is under construction.\nCurrent progress is " , $BuildingExp , "/" , $BuildingMaxExp,"\n{#ffc72b2b=Gather Construction Materials in the Guild Territory and bring them to the building under construction to increase the construction progress.#}" )
	endif
	if $LevelingBuilding == 5
		BC( "dialogbox", "player", -1, "The Guild Trial Ground is under construction.\nCurrent progress is " , $BuildingExp , "/" , $BuildingMaxExp,"\n{#ffc72b2b=Gather Construction Materials in the Guild Territory and bring them to the building under construction to increase the construction progress.#}" )
	endif
	if $LevelingBuilding == 6
		BC( "dialogbox", "player", -1, "The Beast Training Grounds is currently undergoing construction.\nProgress: (" , $BuildingExp , "/" , $BuildingMaxExp,"\n{#ffc72b2b=Gather Construction Materials in the Guild Territory and bring them to the building under construction to increase the construction progress.#}" )
	endif
}
	//??4?? ?????
function OnOption3(){
	 $team_headerid = GetTeamHeaderID(-1)
	 $player_id = GetPlayerID()
			$playerid = GetPlayerID()
			$guildid = GetPlayerInfo(-1,"guildid")
			if $guildid == 0
				BC("dialogbox","player",-1,"You don't have a Guild!")
				return
			endif
		//????????
		if $player_id != $team_headerid
			BC( "dialogbox", "player", -1, "Sorry, only the party leader can adopt a Guild Beast!" )
			return
		endif
	$team_count = GetTeamMemberCount(-1)
		//????????
		if $team_count < 4
			BC( "dialogbox", "player", -1, "You need at least 4 people in your party to adopt a Guild Beast!" )
			return
		endif
		$size = GetTeamAreaSize(-1)
		if $size > 10
			//?????????????
			BC( "dialogbox", "player", -1, "Your party members are too far away from you!" )
			return
		endif
		$teamgid = GetPlayerInfo( -1 , "guildid" )
		$n = 0
		while $n < 6
			$teamplayer_id = GetTeamMemberID( -1 , $n )
			$n = $n + 1
			//???????????????
			if $teamplayer_id != -1
				$Guildid = GetPlayerInfo( $teamplayer_id , "guildid" )
				if $Guildid != $teamgid
					BC( "dialogbox" , "player" , -1 , "Everyone in the party must be from the same Guild before you can adopt a Guild Beast!" )
					return
				endif
			endif
		endwhile
		//????
		call qingli()
		//????????
		$n = 0
		while $n < 6
			$teamplayer_id = GetTeamMemberID( -1 , $n )
			$n = $n + 1
			$farm_number = GetPlayerVar( $teamplayer_id , 3421 )
			if $farm_number > 0
				$Guildvalue = GetGuildVar($Guildid,$farm_number)
				$sub = $Guildvalue / 100000
				$sub *= 100000
				$Guildvalue = $Guildvalue - $sub
				$monster_CNT = $Guildvalue / 100
				$grow_number = GetPlayerVar( $teamplayer_id , 3423 )
				if $grow_number == $monster_CNT
					#name = GetPlayerInfo($playerid,"name")
					BC( "dialogbox" , "player" , -1 , #name,"You have already adopted a Guild Beast!" )
					return
				endif
			endif
		endwhile
		$farm_number = 51
		while $farm_number <= 90
			$monster_id = GetGuildVar( $Guildid , $farm_number )
			if $monster_id == 0
			//---------------------------------
				$teamp_number = 0
				$monster_CNT = GetGuildVar( $Guildid , 50 )
				$monster_CNT += 100
				if $monster_CNT >= 90000
					$monster_CNT = 100
				endif
				SetGuildVar( $Guildid , 50 ,$monster_CNT)
				$monster_GROW = $monster_CNT + 1
				$yday = GetSystemTime("yday")
				$add = $yday * 100000
				$monster_GROW += $add
				SetGuildVar( $Guildid , $farm_number , $monster_GROW )
				$monster_CNT = $monster_CNT / 100
				//---------------------------------
				while $teamp_number < 6
					$teamplayer_id = GetTeamMemberID( -1 , $teamp_number )
					$teamp_number = $teamp_number + 1
					if $teamplayer_id > 0
						SetPlayerVar( $teamplayer_id , 3421 , $farm_number )
						SetPlayerVar( $teamplayer_id , 3423 , $monster_CNT )
						BC( "dialogbox" , "player" , $teamplayer_id , "You've adopted a Guild Beast!" )
					endif
				endwhile
				//---------------------------------
				return
				//---------------------------------------
			endif
			$farm_number = $farm_number + 1
		endwhile
		BC( "dialogbox" , "player" , -1 , "Sorry! The Guild Beast has already been adopted!" )
}
	//??5?? ?????
function OnOption4(){
		$lv = GetPlayerInfo( -1 , "level" )
		$fieldlevel = GetFieldLevel(-1)
			$playerid = GetPlayerID()
			$Guildid = GetPlayerInfo($playerid,"guildid")
			if $Guildid == 0
				BC("dialogbox","player",-1,"You don't have a Guild!")
				return
			endif
	//???????????
		$farm_number = GetPlayerVar( -1 , 3421 )
		if $farm_number == 0
			BC( "dialogbox" , "player" , -1 , "You have not adopted a Guild Beast. You have nothing to feed!" )
			return
		endif
		$Guildvalue = GetGuildVar($Guildid,$farm_number)
				$sub = $Guildvalue / 100000
				$sub *= 100000
				$Guildvalue = $Guildvalue - $sub
		$monster_CNT = $Guildvalue / 100
		$player_CNT = GetPlayerVar( -1 , 3423 )
		if $player_CNT != $monster_CNT
			BC( "dialogbox" , "player" , -1 , "You have not adopted a Guild Beast. You have nothing to feed!" )
			return
		endif
		//?????
		$subCNT = $monster_CNT * 100
		$Guildvalue -= $subCNT
		if $Guildvalue >= 50
			$Guildvalue *= 10
			BC("dialogbox" , "player" , -1 , "Guild Beast's Current Growth: {#ffff002a=",$Guildvalue," #}.\nYour Guild Beast has finally matured! Gather a team to come and fight it!")
			return
		endif
	//???????
		$itemcount = GetPlayerInfo( -1 , "item" , 50589 )
		if $itemcount < 1
			BC( "dialogbox", "player", -1, "You don't have any Guild Beast Food! You can buy some from Kardanny in Atlantis." )
			return
		endif
	//????????
		$Now_Yday =  GetSystemTime( "yday" )
		$lastday = GetPlayerVar( -1 , 4028 )
		if $Now_Yday == $lastday
			BC( "dialogbox", "player", -1, "You've already fed the Guild Beast today! Come again tomorrow." )
			return
		endif
		//????
			SubPlayerInfo( -1 , "item" , 50589 , 1 )
			SetPlayerVar( -1 , 4028 , $Now_Yday )
		//----???? = 6*(4*lv-76)*lv*lv/10 + 40*lv*lv-----
		//----???? = ????
		$a = $lv * $lv
		$b = 4 * $lv
		$c = $b - 76
		$d = $c * $a
		$e = 6 * $d
		$f = $e / 10
		$g = 40 * $a
		$exp2 = $f + $g
			AddPlayerInfo( -1 , "exp" , $exp2 )
			SetPlayerActLog( -1 , 8 , 0 )
		//?????
		//????? = ????^2+0.6*????+1000
		//????? = ????? * 15
		$godexp = $fieldlevel * $fieldlevel
		$b = $fieldlevel * 6
		$b = $b / 10
		$godexp = $godexp + $b
		$godexp = $godexp + 1000
		$godexp = $godexp * 15
		if $fieldlevel > 0
			AddFieldExp( -1 , $godexp )
		endif
		//?????
		if $Guildvalue < 50
		//=------------------
			$GuildvalueTure = GetGuildVar($Guildid,$farm_number)
			$GuildvalueTure = $GuildvalueTure + 1
			SetGuildVar( $Guildid , $farm_number , $GuildvalueTure )
			$Guildvalue = $Guildvalue + 1
			$Guildvalue *= 10
			BC("dialogbox" , "player" , -1 , "Successfully fed! Yum!\nGuild Beast's Current Growth: {#ffff002a=",$Guildvalue," #}.\nYour Guild Beast can be challenged once it's Growth reaches 500!" )
			if $Guildvalue >= 500
				BC("chat" , "player" , -1 , "Guild Beast's Current Growth: {#ffff002a=",$Guildvalue," #}.\nYour Guild Beast has finally matured! Gather a team to come and fight it!")
			endif
			$Guildvalue += $subCNT
		endif
}
	//??6?? ???????
function OnOption5(){
			$playerid = GetPlayerID()
			$Guildid = GetPlayerInfo($playerid,"guildid")
			if $Guildid == 0
				BC("dialogbox","player",-1,"You don't have a Guild!")
				return
			endif
	//???????????
		$farm_number = GetPlayerVar( -1 , 3421 )
		if $farm_number == 0
			BC( "dialogbox" , "player" , -1 , "You have not adopted a Guild Beast!" )
			return
		endif
		$Guildvalue = GetGuildVar($Guildid,$farm_number)
				$sub = $Guildvalue / 100000
				$sub *= 100000
				$Guildvalue = $Guildvalue - $sub
		$monster_CNT = $Guildvalue / 100
		$player_CNT = GetPlayerVar( -1 , 3423 )
		if $player_CNT != $monster_CNT
			BC( "dialogbox" , "player" , -1 , "You have not adopted a Guild Beast!!" )
			return
		endif
		//?????
		$subCNT = $monster_CNT * 100
		$Guildvalue -= $subCNT
		if $Guildvalue < 50
			$Guildvalue = $Guildvalue * 10
			BC("dialogbox" , "player" , -1 , "Guild Beast's Current Growth: {#ffff002a=",$Guildvalue," #}.\nYour Guild Beast can be challenged once it's Growth reaches 500!")
		else
			$Guildvalue = $Guildvalue * 10
			BC("dialogbox" , "player" , -1 , "Guild Beast's Current Growth: {#ffff002a=",$Guildvalue," #}.\nYour Guild Beast has finally matured! Gather a team to come and fight it!")
		endif
}
	//??7?? ?????
function OnOption6(){
	
	
			$Guildid = GetPlayerInfo( -1 , "guildid" )
			$level = GetGuildBuildingLevel( $Guildid , 6 )
			if $level > 0
				 $monster2_kill = 12050
				 #name = "Common Guild Beast"
			endif
			if $level >= 3
				 $monster2_kill = 12051
				 #name = "Advanced Guild Beast"
			endif
			if $level >= 5
				 $monster2_kill = 12052
				 #name = "Ultimate Guild Beast"
			endif
			$playerid = GetPlayerID()
			$Guildid = GetPlayerInfo($playerid,"guildid")
			if $Guildid == 0
				BC("dialogbox","player",-1,"You don't have a Guild!")
				return
			endif
			
			$team_count = GetTeamMemberCount(-1)
			//????????
			if $team_count < 3
				BC( "dialogbox", "player", -1, "You need at least 3 people in your party before you can challenge the Guild Beast!" )
				return
			endif
			
	//???????????
		$farm_number = GetPlayerVar( -1 , 3421 )
		if $farm_number == 0
			BC( "dialogbox" , "player" , -1 , "You have not adopted a Guild Beast!" )
			return
		endif
		$Guildvalue = GetGuildVar($Guildid,$farm_number)
				$sub = $Guildvalue / 100000
				$sub *= 100000
				$Guildvalue = $Guildvalue - $sub
		$monster_CNT = $Guildvalue / 100
		$player_CNT = GetPlayerVar( -1 , 3423 )
		if $player_CNT != $monster_CNT
			BC( "dialogbox" , "player" , -1 , "You have not adopted a Guild Beast!!" )
			return
		endif
				$cntplayer = 0
				$teamp_number = 0
				while $teamp_number < 6
					$teamplayer_id = GetTeamMemberID(-1,$teamp_number)
					$teamp_number = $teamp_number + 1
					if $teamplayer_id > 0
						$var3421 = GetPlayerVar($teamplayer_id,3421)
						$var3423 = GetPlayerVar($teamplayer_id,3423)
						if $var3421 == $farm_number
							if $var3423 == $player_CNT
								//??
								$cntplayer = $cntplayer + 1
							else
								#name = GetPlayerInfo($teamplayer_id,"name")
								BC( "dialogbox" , "player" , -1 , #name,"Not the one you adopted!" )
								return
							endif
						else
							#name = GetPlayerInfo($teamplayer_id,"name")
							BC( "dialogbox" , "player" , -1 , #name,"Not the one you adopted!!" )
							return
						endif
					endif
				endwhile
		//?????
		$subCNT = $monster_CNT * 100
		$Guildvalue -= $subCNT
			//?????????
			if $Guildvalue < 50
				BC("dialogbox" , "player" , -1 , "Your Guild Beast hasn't matured yet. Keep feeding it!")
				return
			endif
			//????
//			$line = GetServerLineID(
//			if $line != 8
//				BC( "dialogbox", "player", -1, "GUID:08057000053" )
//				return
//			endif
			$mapid = GetPlayerInfo( -1 , "mapid" )
			$team_headerid = GetTeamHeaderID(-1)
			AddMonsterByFloat( $monster2_kill , 1 , $mapid , 203 , 155 , 0 ,$team_headerid)
			SetPlayerActLog( -1 , 8 , 1 )
			SetGuildVar( $Guildid , $Guildvarid , 0 )
//				$teamp_number = 0
//				while $teamp_number < 6
//					$teamplayer_id = GetTeamMemberID( -1 , $teamp_number )
//					$teamp_number = $teamp_number + 1
//					if $teamplayer_id > 0
//						SetPlayerVar($teamplayer_id,3421,0)
//						SetPlayerVar($teamplayer_id,3423,0)
//					endif
//				endwhile
			SetGuildVar($Guildid,$farm_number,0)
}






function qingli(){
		$Guildid = GetPlayerInfo( -1 , "guildid" )
		$yday = GetSystemTime("yday")
		$qingli = 51
		while $qingli <= 90
			$var = GetGuildVar($Guildid,$qingli)
			$var2 = $var / 100000
			$ydaytemp = $yday
			if $var2 > 0
//				BC("chat","player",-1,"|qingli=",$qingli,"|yday=",$yday,"|var=",$var,"|var2=",$var2)
				if $var2 > $yday
				 $ydaytemp += 365
				endif
				$day = $ydaytemp - $var2
				if $day > 30
					SetGuildVar($Guildid,$qingli,0)
//					BC("chat","player",-1,"|qingli=",$qingli,"|day=",$day)
				endif
			endif
			$qingli = $qingli + 1
		endwhile
}
