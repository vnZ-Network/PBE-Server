	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???479???????628
	//		TaskID:DXLM3-NPC-JG-Mengchenzhijian-628.s
	//
	//****************************************

	function OnRequest(){

		//???? ????43-0?1?2?

  	//???????????
  	$is = GetEctypeVar(-1, 43)
  	if $is	>= 1
  		DisableNpcOption(0)
  	endif
	
	}	
	
	function OnOption0(){

		//???? ??id 479,????var 43-0?1?2?, BOSS????-51801
		$ectype_id = GetEctypeID(-1, 479)
		$mst_jian_id = 51801
		$is_done = GetEctypeVar(-1, 43)

		//??????
		if $is_done != 0
			BC("dialogbox","player",-1,"Pangaea Sword's godforce is still not free from the seal.")
			return
		endif
				
  	//??????????,????,??????? 
  	$headerID = GetTeamHeaderID( -1 )
  	$playerid = GetPlayerID()
  		if $playerid != $headerID
  			BC( "screen", "player", -1, "You are not the Captain, this is an emergency, let me talk to your Captain!" )
  			return
  		endif

		//?????????
		//?????????

		//????51801, ????
		AddMonsterByFloat(51801, 1, $ectype_id, 304, 84, 0, 0 , 90)
		BC( "screen", "map", $ectype_id, "The Fallen Swordspirit who absorbed the godforce of the Pangaea Sword has appeared. Kill him and you can remove the Pangaea Sword's seal.")
		BC("chat","player",-1,"The Fallen Swordspirit who absorbed the godforce of the Pangaea Sword has appeared. Kill him and you can remove the Pangaea Sword's seal.")
		//????
		$n = $n + 1
		SetEctypeVar(-1, 43, $n)

}