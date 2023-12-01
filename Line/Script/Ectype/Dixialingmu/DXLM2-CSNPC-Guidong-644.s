	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/01
	//		Author:???(??,??,??)
	//		TaskName:???479??????NPC????
	//		TaskID:DXLM2-CSNPC-Guidong-644.s
	//
	//****************************************
	
	function OnRequest(){
	
}
	
	function OnOption0(){

	$ectype_id = GetEctypeID(-1, 479) 
	$is = GetEctypeVar(-1, 30)
		
	//??????????,????,???????
//	$headerID = GetTeamHeaderID( -1 )
//	$playerid = GetPlayerID()
//		if $playerid != $headerID
//			BC( "screen", "player", -1, "GUID:04012000000" )
//			return
//		endif
//
//	$size = GetTeamAreaSize(-1)
//		if $size > 10
//			BC( "screen", "player", -1, "GUID:04012000001" )
//			return
//		endif

	$n = GetEctypeVar(-1 27)
	if $n < 64
		BC( "screen", "player", -1, "The Undead Cavern is protected by Chiyu's middle army. You cannot pass!" )
		return
	endif
	
	FlyToMap(-1,$ectype_id, 27, 19)
	
	//????????BOSS
	//??30?????,1??,2???????????? $is < 1
	if $is < 1
		AddMonsterByFloat(51797, 1, $ectype_id, 110, 47, 1)
		AddMonster(51791, 5, $ectype_id, 32, 19, 3)
		AddMonster(51791, 5, $ectype_id, 41, 19, 3)
		AddMonster(51791, 5, $ectype_id, 46, 19, 3)
		AddMonster(51791, 4, $ectype_id, 43, 34, 3)
		BC("screen", "map", $ectype_id, "Here is Undead Oni's region. Be careful with this devil.")
		SetEctypeVar(-1, 30, 1)
	endif
		
	
}