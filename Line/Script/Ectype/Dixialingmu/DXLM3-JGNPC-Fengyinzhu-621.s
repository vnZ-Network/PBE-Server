	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479??NPC??????
	//		TaskID:DXLM3-JGNPC-Fengyinzhu-621.s
	//
	//****************************************

	function OnRequest(){

  	//???????????
  	$is = GetEctypeVar(-1, 15)
  	if $is == 1
  		DisableNpcOption(0)
  	endif
	
	}	
	
	function OnOption0(){

		//???? ??id 479,???var 15-0?1?, BOSS??-51800
		$ectype_id = GetEctypeID(-1, 479)
		
  	//??????????,????,???????
  	$team = IsPlayerInTeam(-1)
  		if $team == -1
  			BC( "screen", "player", -1, "Please form a party first." )
  			return
  		endif
  
  	$headerID = GetTeamHeaderID( -1 )
  	$playerid = GetPlayerID()
  		if $playerid != $headerID
  			BC( "screen", "player", -1, "You are not the Party Leader!" )
  			return
  		endif
  
  	$size = GetTeamAreaSize(-1)
  		if $size > 10
  			BC( "screen", "player", -1, "Your party members are too far away from you. It is dangerous to go alone!" )
  			return
  		endif
	
//	//??BOSS????
//	//??????
//	$dif = GetEctypeVar(-1, 99)
////	$ectype = GetEctypeID(-1, $mapid )
//	
//	//???????
//	if $dif == 1
////		AddLevelMonster( 51800,$monsterstatusID,$level, 1,$ectype,$mapX,$mapY,$mapR)
//		BC( "screen", "map", -1, "GUID:04053000003")
//	endif
//	
//	if $dif == 2
////		AddLevelMonster( 51800,$monsterstatusID,$level, 1,$ectype,$mapX,$mapY,$mapR)
//		BC( "screen", "map", -1, "GUID:04053000004")
//	endif

		//????51800,??NPC 621, 479?? 584  ????
		DeleteNPC(621, $ectype_id)
		DeleteNPC(584, $ectype_id)
		AddMonsterByFloat(51800, 1, $ectype_id, 146, 190, 0, 0 , 270)
		PlayEffect(0,"common\story\burst\fire\tx_burst_fire.ini")
		BC( "screen", "map", $ectype_id, "The Beast of Pride, Aoman, has been summoned. Destroy it to prove your humility")
		BC("chat","player",-1,"The Beast of Pride, Aoman, has been summoned. Destroy it to prove your humility")

}