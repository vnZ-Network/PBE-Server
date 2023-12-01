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
	
	//?????????????????
	$Guildid = GetPlayerInfo( -1 , "guildid" )
	$LevelingBuilding = GetLevelUpBuildingID($Guildid)
	
	if $LevelingBuilding < 0
		DisableNpcOption(0)
	endif
}

function OnOption0(){
	$Guildid = GetPlayerInfo( -1 , "guildid" )
	$LevelingBuilding = GetLevelUpBuildingID($Guildid)
	$bag = GetPlayerInfo(-1 , "nullitem" , 0)
	$item = GetPlayerInfo(-1 , "item" , 59787)
	
	if $bag < 1
		BC( "dialogbox", "player", -1, "You do not have enough space in your bag." )
		return
	endif	
	
	if $item > 0
		BC( "dialogbox", "player", -1, "You have already used a Miner's Pickaxe. You cannot get one again." )
		return
	endif	
	
	if $LevelingBuilding < 0
		BC( "dialogbox", "player", -1, "There is no building being upgraded in your Guild Territory. You cannot get a Miner's Pickaxe." )
		return
	endif
	
	$result = AddPlayerInfo( -1 ,"item" , 59787 , 1)
	
	if $result == 0
		BC( "chat", "player", -1, "You have obtained a Miner's Pickaxe. Go to your Guild Territory to collect Construction Materials." )	
	endif
	
}		
	