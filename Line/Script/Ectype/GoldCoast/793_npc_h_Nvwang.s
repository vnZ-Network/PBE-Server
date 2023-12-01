	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/26
	//		Author:???(??,??,??)
	//		TaskName:????
	//		TaskID:793_npc_h_Nvwang.s
	//
	//****************************************
	
	function OnRequest(){


}
	
	function OnOption0(){

	//???????
	//????
	$ectype_id = GetEctypeID(-1, 540)
	$is_summon = GetEctypeVar(-1, 25)
	$mon_h_2 = 52325
	$mon_h_2_ai = 52326
	$south_x = 89
	$south_y = 53
	
	$bottle = 59950
	//???? ??59950
	$revaluet = SubPlayerInfo(-1, "item", $bottle, 1)
	if $revaluet != 0
		BC("dialogbox","player",-1,"I need a Cursed Magic Vial to find the information about Kaltim. You don't have his breath, so I can't help you.")
		return
	endif		
	
	MapPlayerFlyToMap($ectype_id,$ectype_id, $south_x, $south_y)
	
	if $is_summon > 0
		return
	else	
	
  	AddMonsterByFloat( $mon_h_2 , 1, $ectype_id, 229, 145, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon_h_2 , 1, $ectype_id, 222, 151, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon_h_2 , 1, $ectype_id, 218, 142, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon_h_2 , 1, $ectype_id, 210, 138, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon_h_2 , 1, $ectype_id, 211, 144, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon_h_2 , 1, $ectype_id, 215, 150, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon_h_2 , 1, $ectype_id, 209, 159, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon_h_2 , 1, $ectype_id, 214, 157, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon_h_2 , 1, $ectype_id, 230, 155, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon_h_2_ai , 1, $ectype_id, 225, 137, 1 ,0 ,0 )	
  	
  	AddNPC(795,$ectype_id)
		DeleteNPC(793,$ectype_id)
		
	//???????????
	SetEctypeVar(-1,95,4)			
		
	endif
	

		
}