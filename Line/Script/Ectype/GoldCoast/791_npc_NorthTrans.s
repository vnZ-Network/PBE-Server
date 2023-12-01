	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/03/26
	//		Author：向珈辰（仔细，精炼，负责）
	//		TaskName：黄金海岸
	//		TaskID：791_npc_NorthTrans.s
	//
	//****************************************
	
	function OnRequest(){

	$n_1st = GetEctypeVar(-1, 8)
	$s_ist = GetEctypeVar(-1, 9)

	if $n_1st > 1
		DisableNpcOption(0)
	else
		DisableNpcOption(1)
	endif



}
	
	function OnOption0(){

	//传送到西南方
	//获取变量
	$ectype_id = GetEctypeID(-1, 540)
	$is_summon = GetEctypeVar(-1, 10)
	$mon2_1 = 52311
	$mon2_1_ai = 52312
	$south_x = 44
	$south_y = 98
	

	FlyToMap(-1, $ectype_id, $south_x, $south_y)
	
	if $is_summon > 0
		return
	else	
	
  	AddMonsterByFloat( $mon2_1 , 1, $ectype_id, 103, 247, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_1 , 1, $ectype_id, 104, 256, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_1 , 1, $ectype_id, 96, 250, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_1 , 1, $ectype_id, 97, 256, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_1 , 1, $ectype_id, 90, 248, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_1 , 1, $ectype_id, 90, 257, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_1 , 1, $ectype_id, 83, 254, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_1 , 1, $ectype_id, 79, 243, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_1 , 1, $ectype_id, 114, 248, 1 ,0 ,0 ) 	
  	AddMonsterByFloat( $mon2_1_ai , 1, $ectype_id, 103, 250, 1 ,0 ,0 )	
  	
  	AddNPC(788,-1)
  	OpenMask(1, $ectype_id)

	SetEctypeVar(-1, 10, 1)
	
	//记录玩家进入了西南区域
	SetEctypeVar(-1,95,2)			
	
	endif
	

		
}

	function OnOption1(){

	//传送到东边小岛
	//获取变量
	$ectype_id = GetEctypeID(-1, 540)
	$is_summon = GetEctypeVar(-1, 12)
	$mon3_1 = 52319
	$mon3_1_ai = 52320
	$south_x = 96
	$south_y = 85
	

	FlyToMap(-1, $ectype_id, $south_x, $south_y)
	
	if $is_summon > 0
		return
	else	
	
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 236, 224, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 244, 224, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 251, 227, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 253, 234, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 251, 243, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 241, 245, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 232, 243, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 237, 230, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 232, 229, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon3_1 , 1, $ectype_id, 246, 231, 1 ,0 ,0 )	

	AddNPC(796,-1)
	SetEctypeVar(-1, 12, 1)
	
	//记录玩家进入了东南区域
	SetEctypeVar(-1,95,3)		
	
	endif
	

		
}