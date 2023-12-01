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
	
function OnRequest(){
	
	//????????????????
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
	
	//????????????,?????????????????
	if $LevelingBuilding != 3
		DisableNpcOption(1)
		DisableNpcOption(2)
	endif
	
	//?????????,?????????????????
	
	if $LevelingBuilding < 0
		DisableNpcOption(1)
		DisableNpcOption(2)
	endif		
		
		

}

function OnOption0(){
	
	//????????
	$Guildid = GetPlayerInfo( -1 , "guildid" )
	
	if $Guildid <= 0
		BC( "dialogbox", "player", -1, "You must be in a Guild to upgrade the Guild Knowledge Library." )
		return
	endif
	
	//??????????
	$Guildrank = GetPlayerInfo( -1 , "guildrank" )
	
	if $Guildrank != 0
		BC( "dialogbox", "player", -1, "Only the Guild leader can upgrade the Guild Knowledge Library." )
		return
	endif
	
	//????????????
	$BuildingLevel = GetGuildBuildingLevel( $Guildid , 3 )
	
	if $BuildingLevel >= 5
		BC( "dialogbox", "player", -1, "The Guild Knowledge Library has already been upgraded to its maximum level." )
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
	$BuildingLevel = GetGuildBuildingLevel( $Guildid , 3 )
	
	if $BuildingLevel == $GuildLevel
		BC( "dialogbox", "player", -1, "The Guild Knowledge Library level cannot be higher than the Guild level." )
		return
	endif	
	
	$result = GuildBuildingLevelUp( $Guildid , 3 )

	
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
		BC( "dialogbox", "player", -1, "The Guild Knowledge Library is under construction.\nCurrent progress is " , $BuildingExp , "/" , $BuildingMaxExp,"\n{#ffc72b2b=Gather Construction Materials in the Guild Territory and bring them to the building under construction to increase the construction progress.#}" )
	endif	
	
	if $LevelingBuilding == 3
		BC( "dialogbox", "player", -1, "The Guild Knowledge Library is under construction.\nCurrent progress is " , $BuildingExp , "/" , $BuildingMaxExp,"\n{#ffc72b2b=Gather Construction Materials in the Guild Territory and bring them to the building under construction to increase the construction progress.#}" )
	endif	

	if $LevelingBuilding == 4
		BC( "dialogbox", "player", -1, "The Guild Arsenal is under construction.\nCurrent progress is " , $BuildingExp , "/" , $BuildingMaxExp,"\n{#ffc72b2b=Gather Construction Materials in the Guild Territory and bring them to the building under construction to increase the construction progress.#}" )
	endif	
	
	if $LevelingBuilding == 5
		BC( "dialogbox", "player", -1, "The Guild Trial Ground is under construction.\nCurrent progress is " , $BuildingExp , "/" , $BuildingMaxExp,"\n{#ffc72b2b=Gather Construction Materials in the Guild Territory and bring them to the building under construction to increase the construction progress.#}" )
	endif	
	
}														