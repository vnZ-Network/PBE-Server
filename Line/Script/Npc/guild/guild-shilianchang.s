	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/03/24
	//		Author:??
	//		TaskName:
	//		TaskID:
	//
	//****************************************
	//??1?? ?????????
	//??2?? ????????	
	//??3?? ??????????
	//???? 
	//?????????????? 4040
	//???????????ID       3852
	//????????????       3297
		
	
function OnRequest(){
	
	//????????????????
	$Guildid = GetPlayerInfo( -1 , "guildid" )
	$LevelingBuilding = GetLevelUpBuildingID($Guildid)
	$team_headerID = GetTeamHeaderID(-1)
	$player_id = GetPlayerID()
		
	
	if $LevelingBuilding > 0
		DisableNpcOption(0)
	endif
	
	//??????????????
	$Guildrank = GetPlayerInfo( -1 , "guildrank" )
	
	if $Guildrank != 0
		DisableNpcOption(0)
	endif
	
	//????????????,?????????????????
	if $LevelingBuilding != 5
		DisableNpcOption(1)
		DisableNpcOption(2)
	endif
	
	//?????????,?????????????????
	if $LevelingBuilding < 0
		DisableNpcOption(1)
		DisableNpcOption(2)
	endif		
	
	//?????????????
	$ectype_ID = GetEctypeID( $player_id , 411 )
	if $ectype_ID > 0
		//?????ID?,??????
		DisableNpcOption(3)
	else
		//?ID,??????
		DisableNpcOption(4)
	endif

}

function OnOption0(){
	
	//????????
	$Guildid = GetPlayerInfo( -1 , "guildid" )
	
	if $Guildid <= 0
		BC( "dialogbox", "player", -1, "You must be in a Guild to upgrade the Guild Trial Ground." )
		return
	endif
	
	//??????????
	$Guildrank = GetPlayerInfo( -1 , "guildrank" )
	
	if $Guildrank != 0
		BC( "dialogbox", "player", -1, "Only the Guild leader can upgrade the Guild Trial Ground." )
		return
	endif
	
	//????????????
	$BuildingLevel = GetGuildBuildingLevel( $Guildid , 5 )
	
	if $BuildingLevel >= 5
		BC( "dialogbox", "player", -1, "The Guild Trial Ground has already been upgraded to its maximum level." )
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
	$BuildingLevel = GetGuildBuildingLevel( $Guildid , 5 )
	
	if $BuildingLevel == $GuildLevel
		BC( "dialogbox", "player", -1, "The Guild Trial Ground level cannot be higher than the Guild level." )
		return
	endif	
	
	$result = GuildBuildingLevelUp( $Guildid , 5 )
	
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
	
}


function OnOption3(){	
	
	
	$team_headerID = GetTeamHeaderID(-1)
	$player_id = GetPlayerID()
	$Team_Guildid = GetPlayerInfo($team_headerID , "guildid") 
	$TestLevel =  GetGuildBuildingLevel( $Team_Guildid , 5 )
	//????????
	if $player_id != $team_headerID
		BC( "dialogbox", "player", -1, "Sorry, only the party leader can enter you into the instance!" )
		return
	endif
		
	$team_count = GetTeamMemberCount(-1)
	//????????
	if $team_count < 3
		BC( "dialogbox", "player", -1, "Sorry, you must have more than 3 players to enter the instance!" )
		return
	endif
		
	$size = GetTeamAreaSize(-1)
		
	if $size > 10
		//?????????????
		BC( "dialogbox", "player", -1, "Your party members are too far away from you!" )
		return
	endif		
	
	//???????ID,??????ID?-1
	$today_time = GetSystemTime( "yday" )
	$today_week = GetNowWeek()
	
	//?????????
	$teamplayer1_id =  GetTeamMemberID( -1, 0 )
	$teamplayer2_id =  GetTeamMemberID( -1, 1 )
	$teamplayer3_id =  GetTeamMemberID( -1, 2 )
	$teamplayer4_id =  GetTeamMemberID( -1, 3 )
	$teamplayer5_id =  GetTeamMemberID( -1, 4 )
	$teamplayer6_id =  GetTeamMemberID( -1, 5 )
	$a = 0
	if $teamplayer1_id != -1
		$lv = GetPlayerInfo( $teamplayer1_id , "level" )
		$field = GetFieldLevel($teamplayer1_id)
		$a = $lv
		$sum = $field
	endif
	if $teamplayer2_id != -1
		$lv = GetPlayerInfo( $teamplayer2_id , "level" )
		$field = GetFieldLevel($teamplayer2_id)
		$a = $a + $lv
		$sum = $field + $sum
	endif
	if $teamplayer3_id != -1
		$lv = GetPlayerInfo( $teamplayer3_id , "level" )
		$field = GetFieldLevel($teamplayer3_id)
		$a = $a + $lv
		$sum = $field + $sum
	endif	
	if $teamplayer4_id != -1
		$lv = GetPlayerInfo( $teamplayer4_id , "level" )
		$field = GetFieldLevel($teamplayer4_id)
		$a = $a + $lv
		$sum = $field + $sum
	endif		
	if $teamplayer5_id != -1
		$lv = GetPlayerInfo( $teamplayer5_id , "level" )
		$field = GetFieldLevel($teamplayer5_id)
		$a = $a + $lv
		$sum = $field + $sum
	endif
	if $teamplayer6_id != -1
		$lv = GetPlayerInfo( $teamplayer6_id , "level" )
		$field = GetFieldLevel($teamplayer6_id)
		$a = $a + $lv
		$sum = $field + $sum
	endif
	
	$team_level = $a / $team_count
	if $sum < $team_count
		$team_field = 0
	else
		$team_field = $sum / $team_count
	endif
	
	//??????
	$n = 0
	while $n < 6
		$teamplayer_id = GetTeamMemberID( -1 , $n )
		$Team_Guildid = GetPlayerInfo($team_headerID , "guildid")
		
		$n = $n + 1
		if $teamplayer_id != -1	
			//?????75?
			$temp_level = GetPlayerInfo( $teamplayer_id, "level" )
		
			if $temp_level < 75
			//??????75???,????
				BC( "dialogbox", "player", -1, "A player in your party is below LV75." )
				return
			endif	
		
			$player_time =  GetPlayerVar( $teamplayer_id , 4040 )
			//????????????????,???
			if $player_time == $today_time	
				#name = GetPlayerInfo( $teamplayer_id , "name" )
				BC( "chat", "player", -1, #name ,"You have already entered the Guild Trial Ground instance this week." )
				BC( "dialogbox", "player", -1,"A player in your party has already entered the Guild Trial Ground instance this week." )
				return
			endif
			
			$player_week = GetPlayerVar($teamplayer_id , 3297)
			//?????????????????,???
			if $player_week == $today_week	
				#name = GetPlayerInfo( $teamplayer_id , "name" )
				BC( "chat", "player", -1, #name ,"You have already entered the Guild Trial Ground instance this week." )
				BC( "dialogbox", "player", -1,"A player in your party has already entered the Guild Trial Ground instance this week." )
				return
			endif
			
			$Guildid = GetPlayerInfo($teamplayer_id , "guildid")
			//?????????????ID
			if $Guildid != $Team_Guildid
				#name = GetPlayerInfo( $teamplayer_id , "name" )
				BC( "chat", "player", -1, #name ,"The Party Leader does not belong to the Guild." )
				BC( "dialogbox", "player", -1,"A player in your party belongs to another Guild." )
				return
			endif	
		endif	
	endwhile
	
	
	$is_succeed = FlyToEctype($team_headerID ,411 ,32 ,43)
	
	//????	
	if $is_succeed > 0
		SetPlayerVar( $team_headerID , 3852 , $is_succeed )
		$player_time =  GetPlayerVar( $team_headerID , 4040 )
		$player_week =  GetPlayerVar( $team_headerID , 3297 )
		if $player_time != $today_time
			if $player_week != $today_week
				//???????????????,??
				SetPlayerVar( $team_headerID, 4040 ,$today_time )
				SetPlayerVar( $team_headerID, 3297 ,$today_week )
				//????ID
				$ectype_ID = GetEctypeID($team_headerID ,411)
				SetEctypeVar( $ectype_ID, 4 , $team_level )
				SetEctypeVar( $ectype_ID , 3 , $TestLevel )
				SetEctypeVar( $ectype_ID , 10 , $team_field )
//				BC( "chat", "player", $team_headerID, "GUID:08058000025",$team_field,"GUID:08058000026" )	
				BC( "screen", "player", $team_headerID, "You have entered the Guild Trial Ground Instance." )	
			endif	
		endif
	endif	
	
	$n2 = 0
	while $n2 < 6
		$teamplayer_id = GetTeamMemberID( -1 , $n2 )
		
		$n2 = $n2 + 1
		//????,6??????
		if $teamplayer_id != -1
			$result = FlyToEctype( $teamplayer_id , 411 , 32 , 43 )
			if $result > 0
				//??????ID??3852????
				SetPlayerVar( $teamplayer_id , 3852 , $result )
				$player_time =  GetPlayerVar( $teamplayer_id , 4040 )
				$player_week =  GetPlayerVar( $teamplayer_id , 3297 )
				if $player_time != $today_time
					if $player_week != $today_week
						//???????????????,??
						SetPlayerVar( $teamplayer_id, 4040 ,$today_time )
						SetPlayerVar( $teamplayer_id, 3297 ,$today_week )
						BC( "screen", "player", $teamplayer_id, "You have entered the Guild Trial Ground Instance." )
					endif
				endif
			else
				BC( "dialogbox", "player", -1, "Failure to enter the instance. Try again later or on another Realm." )
			endif	
		endif
	endwhile
	
}

function OnOption4(){
	$player_id = GetPlayerID()
	$ectype_ID = GetEctypeID( $player_id , 411 )
	if $ectype_ID > 0
		//????ID
		$ectype_UID = GetEctypeUniqueID( $player_id , 411 )
		$player_UID = GetPlayerVar( $player_id , 3852 )
			
		if $ectype_UID != $player_UID
			BC( "dialogbox", "player", -1 , "You cannot enter this instance." )
			return
		endif
			
		$result = FlyToEctype( -1 , 411 , 32 , 43 )
		if $result > 0
			BC( "screen", "player", -1, "You have returned to the Guild Trial Ground Instance." )
		else
			BC( "dialogbox", "player", -1 , "Unknown error. Please try again. Error code: " , $result )
		endif
	endif
	
}				
												