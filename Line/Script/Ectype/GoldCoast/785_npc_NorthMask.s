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
	$mon2_2 = 52307
	$powder = 59943
	
	
	//ɾ������
	$revaluet = SubPlayerInfo(-1, "item", $powder, 1)
	if $revaluet != 0
		return
	else	
	//���ţ�ˢ��	
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
  	DeleteNPC(785,-1)
  	AddNPC(787, -1)
//		PlayEffect(0,"common\banshen\fire\tx_common_banshen_fire.ini")

	//��¼��ҽ�������������
	SetEctypeVar(-1,95,1)
  	
//  //������ʱ��
//  StartEctypeTimer(-1,2)
	endif
	
		
}