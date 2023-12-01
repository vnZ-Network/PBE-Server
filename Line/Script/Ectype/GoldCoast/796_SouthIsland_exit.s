	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2012/04/05
	//		Author：向珈辰（仔细，精炼，负责）
	//		TaskName：光辉神殿门口传送
	//		TaskID：796_SouthIsland_exit.s
	//
	//****************************************
	
	function OnRequest(){
	
	$is_drop = GetEctypeVar(-1,23)

	if $is_drop != 1
		DisableNpcOption(1)		
	endif
}
	
	function OnOption0(){
		
		FlyToMap(-1, 538, 73, 40)
		
	}
	
	function OnOption1(){
	
	
	$ectype_id = GetEctypeID(-1, 540)	
	$south_x = 44
	$south_y = 98
	$is_summon = GetEctypeVar(-1, 24)
	
	FlyToMap(-1, $ectype_id, $south_x, $south_y)	
	
	$mon_h = 52328
	
	if $is_summon > 0
		return
	else
		AddMonsterByFloat( $mon_h , 1, $ectype_id, 103, 247, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon_h , 1, $ectype_id, 104, 256, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon_h , 1, $ectype_id, 96, 250, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon_h , 1, $ectype_id, 97, 256, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon_h , 1, $ectype_id, 90, 248, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon_h , 1, $ectype_id, 90, 257, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon_h , 1, $ectype_id, 83, 254, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon_h , 1, $ectype_id, 79, 243, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon_h , 1, $ectype_id, 114, 248, 1 ,0 ,0 ) 	
  	AddMonsterByFloat( $mon_h , 1, $ectype_id, 103, 250, 1 ,0 ,0 )
  	
  	SetEctypeVar(-1,24,1)	
  endif
	
}