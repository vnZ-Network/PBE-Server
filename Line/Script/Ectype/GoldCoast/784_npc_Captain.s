	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/26
	//		Author:???(??,??,??)
	//		TaskName:????
	//		TaskID:784_npc_Captain.s
	//
	//****************************************
	
	function OnRequest(){
	//?????????,????

	$is_powder = GetEctypeVar(-1, 2)
		if $is_powder > 0
			DisableNpcOption(0)			
		endif

}
	
	function OnOption0(){


	$ectype_id = GetEctypeID(-1, 540)
	$is_powder = GetEctypeVar(-1, 2)
	$powder = 59943
	$mon1_1 = 52324

	//????
		$team_headerID = GetTeamHeaderID(-1)
		$player_id = GetPlayerID()
		//????????
		if $player_id != $team_headerID
			BC( "dialogbox", "player", -1, "Sorry, but it would be safer if the party leader held onto this." )
			return
		endif


	//???? ???
	if $is_powder > 0
  	BC("dialogbox", "player", -1, "We lost most of our gunpowder in the shipwreck, and this is everything we have left. Will this really be enough?")
		return
	else
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  	if $bag_count < 1
			BC( "screen", "player", -1, "Not enough space in your bag." )
			return
		else
			AddPlayerInfo(-1, "item", $powder ,1)
			SetEctypeVar(-1, 2, 1)
		endif
	endif
	
	
	//??	
	$a = RandomNumber(1,2)
	if $a == 1
	
	//??????	--9?
  	AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 163, 167, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 163, 158, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 155, 147, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 155, 155, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 147, 149, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 147, 154, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 142, 158, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 142, 167, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 148, 169, 1 ,0 ,0 )
//  	BC( "screen", "player", -1, "GUID:04403000003" )
  	
  else
  //?????? --10?????
  	AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 158, 190, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 167, 198, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 164, 208, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 154, 213, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 154, 227, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 156, 243, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 158, 254, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 156, 268, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 145, 265, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon1_1 , 1, $ectype_id, 136, 263, 1 ,0 ,0 )
//  	BC( "screen", "player", -1, "GUID:04403000004" )

	endif
	
	AddNPC(786,$ectype_id)
	AddNPC(797,$ectype_id)




		
}