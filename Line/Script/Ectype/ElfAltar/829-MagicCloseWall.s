	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/08/10
	//		Author�����쳽����ϸ������������
	//		TaskName��ȥ�������赲
	//		TaskID��829-MagicCloseWall.s
	//
	//****************************************
	
	function OnRequest(){
		
		$ectype_id = GetEctypeID( -1 , 541 )
		$Switch = GetEctypeVar($ectype_id,29)
		
		if $Switch == 1
			DisableNpcOption(0)
		endif
		

}
	
	function OnOption0(){
		
		$ectype_id = GetEctypeID( -1 , 541 )
		
		$Switch = GetEctypeVar($ectype_id,29)
		
		if $Switch == 1
			return
		endif
		
		//ɾ����Χ��ħ��ǽ 52438
		DeleteMonster($ectype_id, 52438)
		PlayEffect(0,"common\fuhuo\tx_fuhuo_01.ini")
		
		//��NPC ����Ů�� 831   ɾ��NPC 2�������� 828 830
		AddNPC(831,-1)
		DeleteNPC(828,-1)
		DeleteNPC(830,-1)
		
		//��¼���� 1 
		SetEctypeVar($ectype_id,29,1)
		
		//������ʱ��ˢ��
		StartEctypeTimer($ectype_id,0)
				
		
		
	}
	
	