	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/03/26
	//		Author�����쳽����ϸ������������
	//		TaskName���ƽ𺣰�
	//		TaskID��785_npc_NorthMask.s
	//
	//****************************************
	
	function OnRequest(){


}
	
	function OnOption0(){

	//��ȡ����
	$ectype_id = GetEctypeID(-1, 540)
	$powder = 59943
	$mon2_1 = 52311
	$mon2_1_ai = 52312	
	
	//ɾ������
	$revaluet = SubPlayerInfo(-1, "item", $powder, 1)
	if $revaluet != 0
		return
	else	
	//���ţ�ˢ��	
		OpenMask( 1, $ectype_id)

  	AddMonsterByFloat( $mon2_1 , 1, $ectype_id, 107, 248, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_1 , 1, $ectype_id, 106, 248, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_1 , 1, $ectype_id, 104, 248, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_1 , 1, $ectype_id, 100, 248, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_1 , 1, $ectype_id, 92, 243, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_1 , 1, $ectype_id, 92, 258, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_1 , 1, $ectype_id, 90, 244, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_1 , 1, $ectype_id, 87, 250, 1 ,0 ,0 )
  	AddMonsterByFloat( $mon2_1 , 1, $ectype_id, 83, 246, 1 ,0 ,0 ) 	
  	AddMonsterByFloat( $mon2_1_ai , 1, $ectype_id, 100, 248, 1 ,0 ,0 )	
  //ɾ��NPC
  	DeleteNPC(786,-1)
  	AddNPC(788, -1)
		PlayEffect(0,"common\xiwadeshouhu\fire\tx_xiwadeshouhu_fire.ini")
		
	//��¼��ҽ�������������
	SetEctypeVar(-1,95,2)		
  	
	endif
	
		
}