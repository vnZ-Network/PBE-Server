	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/26
	//		Author:???(??,??,??)
	//		TaskName:????
	//		TaskID:788_npc_SouthMagic.s
	//
	//****************************************
	
	function OnRequest(){

	$is_ss = GetEctypeVar(-1, 16)
	$is_s = GetEctypeVar(-1, 17)
	$is_normal = GetEctypeVar(-1, 18)
	$is_conquer = GetEctypeVar(-1, 19)

	if $is_conquer < 1
		DisableNpcOption(3)
	endif
	
	$a = $is_ss + $is_s
	$a = $a + $is_normal
	if $a <= 0
		DisableNpcOption(3)
	endif
	
	if $is_ss > 0
		DisableNpcOption(0)
//		DisableNpcOption(1)
//		DisableNpcOption(2)
	endif

	if $is_s > 0
		DisableNpcOption(1)
//		DisableNpcOption(2)
	endif

	if $is_normal > 0
		DisableNpcOption(2)
	endif


}
	
	function OnOption0(){

	//????
	$ectype_id = GetEctypeID(-1, 540)
	$mon2_1_2ss = 52313
	$mon2_1_2s = 52314
	$mon2_1_2 = 52315
	$is_conquer = GetEctypeVar(-1, 19)
	$is_ss = GetEctypeVar(-1, 16)
	$is_ss_del = GetEctypeVar(-1,44)
	$is_s = GetEctypeVar(-1, 17)
	$is_s_del = GetEctypeVar(-1,45)

	//?????????  ??19: 1??? 5?S 11?SS
	//normal????????
	$is_normal = GetEctypeVar(-1, 18)
	$is_normal_conquer = GetEctypeVar(-1,19)
	if $is_normal > 0
		if $is_normal_conquer < 1
			BC( "dialogbox", "player", -1, "Please defeat our Naga Warrior." )
			return
		endif
	endif

	//s????????
	if $is_s > 0
		if $is_conquer > 0
			BC( "dialogbox", "player", -1, "I see now how able you are. You can challenge the horrific devil." )
			return
		endif
		if $is_s_del == 0
			BC( "dialogbox", "player", -1, "Please defeat our Naga Warrior." )
			return
		endif
	endif	

	//s?????????
	if $is_s_del > 0
		BC( "dialogbox", "player", -1, "Our Naga Warriors are hard to defeat, you can try normal Warriors. " )
		return
	endif
		

	$is_ss = GetEctypeVar(-1, 16)
	if $is_ss > 0
		BC( "dialogbox", "player", -1, "Please defeat our Naga Warrior." )
		return
	else
  	AddMonsterByFloat( $mon2_1_2ss , 1, $ectype_id, 78, 247, 1 ,0 ,0 )
  	StartEctypeTimer($ectype_id, 1)
  	SetEctypeVar(-1, 16, 1)
	endif


	
		
}

	function OnOption1(){

	//????
	$ectype_id = GetEctypeID(-1, 540)
	$mon2_1_2ss = 52313
	$mon2_1_2s = 52314
	$mon2_1_2 = 52315
	$is_conquer = GetEctypeVar(-1, 19)
	$is_ss = GetEctypeVar(-1, 16)
	$is_ss_del = GetEctypeVar(-1,44)
	$is_s = GetEctypeVar(-1, 17)
	$is_s_del = GetEctypeVar(-1,45)	
	
	//?????????  ??19: 1??? 5?S 11?SS
	$is_normal = GetEctypeVar(-1, 18)
	$is_normal_conquer = GetEctypeVar(-1,19)
	if $is_normal > 0
		if $is_normal_conquer < 1
			BC( "dialogbox", "player", -1, "Please defeat our Naga Warrior." )
			return
		endif
	endif	
	
	if $is_ss > 0
		if $is_conquer > 0
			BC( "dialogbox", "player", -1, "I see now how able you are. You can challenge the horrific devil." )
			return
		endif
		if $is_ss_del == 0
			BC( "dialogbox", "player", -1, "Please defeat our Naga Warrior." )
			return
		endif
	endif

	//s?????????
	if $is_s_del > 0
		BC( "dialogbox", "player", -1, "Our Naga Warriors are hard to defeat, you can try normal Warriors. " )
		return
	endif

	$is_s = GetEctypeVar(-1, 17)
	if $is_s > 0
		return
	else
  	AddMonsterByFloat( $mon2_1_2s , 1, $ectype_id, 78, 247, 1 ,0 ,0 )
  	StartEctypeTimer($ectype_id, 2)
  	SetEctypeVar(-1, 17, 1)
	endif


}

	function OnOption2(){

	//???????????:?? 1SS ??? 1 ???--???????; 2 ???? --???????
	// 2 S ???SS ??
	//????
	$ectype_id = GetEctypeID(-1, 540)
	$mon2_1_2ss = 52313
	$mon2_1_2s = 52314
	$mon2_1_2 = 52315
	$is_conquer = GetEctypeVar(-1, 19)
	$is_ss = GetEctypeVar(-1, 16)
	$is_ss_del = GetEctypeVar(-1,44)
	$is_s = GetEctypeVar(-1, 17)
	$is_s_del = GetEctypeVar(-1,45)

	if $is_ss > 0
		if $is_conquer > 0
			BC( "dialogbox", "player", -1, "I see now how able you are. You can challenge the horrific devil." )
			return
		endif
		if $is_ss_del == 0
			BC( "dialogbox", "player", -1, "Please defeat our Naga Warrior." )
			return
		endif
	endif


	if $is_s > 0
		if $is_conquer > 0
			BC( "dialogbox", "player", -1, "I see now how able you are. You can challenge the horrific devil." )
			return
		endif
		if $is_s_del == 0
			BC( "dialogbox", "player", -1, "Please defeat our Naga Warrior." )
			return
		endif
	endif	

	$is_normal = GetEctypeVar(-1, 18)
	if $is_normal > 0
		return
	else
  	AddMonsterByFloat( $mon2_1_2 , 1, $ectype_id, 78, 247, 1 ,0 ,0 )
  	StartEctypeTimer($ectype_id, 3)
  	SetEctypeVar(-1, 18, 1)
	endif

		
}

	function OnOption3(){

	//????
	$ectype_id = GetEctypeID(-1, 540)
	$BOSS_ss = 52316
	$BOSS_s = 52317
	$BOSS_normal = 52318
	$is_summon = GetEctypeVar(-1, 22)

	if $is_summon > 0
		BC( "dialogbox", "player", -1, "The horrific devil is appearing. " )
		return
	endif
	
	$is_ss = GetEctypeVar(-1, 19)
	if $is_ss > 5
  	AddMonsterByFloat( $BOSS_ss , 1, $ectype_id, 79, 250, 1 ,0 ,0 )
  else
  	if $is_ss > 1
  		AddMonsterByFloat( $BOSS_s , 1, $ectype_id, 79, 250, 1 ,0 ,0 )
  	else
  		AddMonsterByFloat( $BOSS_normal , 1, $ectype_id, 79, 250, 1 ,0 ,0 )
  	endif
	endif
	
	SetEctypeVar(-1, 22, 1)
	DeleteNPC(788,$ectype_id)

		
}