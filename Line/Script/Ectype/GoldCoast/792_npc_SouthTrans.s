	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/03/26
	//		Author�����쳽����ϸ������������
	//		TaskName���ƽ𺣰�
	//		TaskID��792_npc_SouthTrans.s
	//
	//****************************************
	
	function OnRequest(){

	$n_1st = GetEctypeVar(-1, 8)
	$s_1st = GetEctypeVar(-1, 9)

	if $s_1st > 1
		DisableNpcOption(0)
	else
		DisableNpcOption(1)
	endif



}
	
	function OnOption0(){

	//���͵�������
	//��ȡ����
	$ectype_id = GetEctypeID(-1, 540)
	$is_summon = GetEctypeVar(-1, 11)
	$mon2_2 = 52307
	$mon2_2_ai = 52312
	$south_x = 48
	$south_y = 64
	

	FlyToMap(-1, $ectype_id, $south_x, $south_y)
	
	if $is_summon > 0
		return
	else		
		OpenMask( 2, $ectype_id)

  	AddMonsterByFloat( $mon2_2 , 1, $ectype_id, 122, 154, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_2 , 1, $ectype_id, 127, 149, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_2 , 1, $ectype_id, 117, 149, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_2 , 1, $ectype_id, 115, 140, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_2 , 1, $ectype_id, 115, 138, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_2 , 1, $ectype_id, 113, 135, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_2 , 1, $ectype_id, 110, 133, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_2 , 1, $ectype_id, 107, 130, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_2 , 1, $ectype_id, 106, 126, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_2 , 1, $ectype_id, 106, 130, 1 ,0 ,0 )	
  //ɾ��NPC
  	DeleteNPC(785,$ectype_id)
  	AddNPC(787, $ectype_id)

	SetEctypeVar(-1, 11, 1)
	
	//��¼��ҽ�������������
	SetEctypeVar(-1,95,1)	
	
	endif
	

		
}

	function OnOption1(){

	//���͵�����С��
	//��ȡ����
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
	
	//��¼��ҽ����˶�������
	SetEctypeVar(-1,95,3)	
	
	endif
	

		
}