	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/08/01
	//		Author:???(??,??,??)
	//		TaskName:???479????NPC????
	//		TaskID:DXLM2-NPC-Wangliang-587.s
	//
	//****************************************
	
	function OnRequest(){
	
	//????????
	$is_1 = GetEctypeVar(-1, 25)
	if $is_1 == 1
		DisableNpcOption(0)
	endif
	
	//????????
	$is_2 = GetEctypeVar(-1, 26)
	if $is_2 == 1
		DisableNpcOption(1)
	endif 
			
}
	
	function OnOption0(){
	
	$Ectype_ID = GetEctypeID(-1, 479)		
	//??????????,????,???????
	$headerID = GetTeamHeaderID( -1 )
	$playerid = GetPlayerID()
//		if $playerid != $headerID
//			BC( "dialogbox", "player", -1, "GUID:04043000000" )
//			return
//		endif

//	?????????
	$is_1 = GetEctypeVar(-1, 25)
	if $is_1 != 0
		return
	endif

	//?40?????	
	AddMonster( 51784, 8, $Ectype_ID, 28, 31, 5)
	AddMonster( 51784, 8, $Ectype_ID, 28, 37, 5)
	AddMonster( 51784, 8, $Ectype_ID, 33, 31, 5)
	AddMonster( 51784, 8, $Ectype_ID, 33, 37, 5)
	AddMonster( 51784, 8, $Ectype_ID, 31, 34, 5)
	BC( "screen", "map", $Ectype_ID, "The vanguard of Chiyu's Bloodlust wolf has appeared. Go kill them all.")
	PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
	//??????????
	SetEctypeVar(-1, 25, 1)
	
}

	function OnOption1(){
	
	$Ectype_ID = GetEctypeID(-1, 479)	
	//??????????,????,???????
	$headerID = GetTeamHeaderID( -1 )
	$playerid = GetPlayerID()
//		if $playerid != $headerID
//			BC( "dialogbox", "player", -1, "GUID:04043000002" )
//			return
//		endif	
	
	//????????,???????
	$is_1 = GetEctypeVar(-1, 25)
	if $is_1 == 0
		BC( "screen", "map", $Ectype_ID, "Chiyu's Bloodlust wolf still doesn't appear. Now there is no trace of the Hurricane Shadow Panther.")
		return
	endif	

	//?????????????,??????,??????
	if $is_1 == 1
		$is_done = GetEctypeVar(-1, 28)
		if $is_done < 40
			$a = 40 - $is_done
			BC( "screen", "map", $Ectype_ID, "Greed will lead to disaster. Please solve the current problem first because the Bloodlust wolf remains." , $a , ".")
			return
		endif
	endif
	
	//?40???
	AddMonster( 51789, 8, $Ectype_ID, 28, 31, 5)
	AddMonster( 51789, 8, $Ectype_ID, 28, 37, 5)
	AddMonster( 51789, 8, $Ectype_ID, 33, 31, 5)
	AddMonster( 51789, 8, $Ectype_ID, 33, 37, 5)
	AddMonster( 51789, 8, $Ectype_ID, 31, 34, 5)
	BC( "screen", "map", $Ectype_ID, "The vanguard of Chiyu's Bloodlust wolf has appeared. Go kill them all.")
	PlayEffect( -1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
	//????????
	SetEctypeVar(-1, 26, 1)

}