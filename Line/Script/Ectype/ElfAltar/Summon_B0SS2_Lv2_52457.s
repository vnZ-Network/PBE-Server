	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/7
	//		Author�����쳽����ϸ������������
	//		TaskName���������ٻ�BOSS1Lv2��
	//		TaskID��Summon_B0SS2_Lv2_52457.s
	//
	//****************************************
	
	function OnDead(){

		//��ȡ���� ����id 541

		$ectype_id = GetEctypeID(-1, 541)
		$BOSS = 52386

		DeleteMonster($ectype_id,52385)
		DeleteMonster($ectype_id,52428)
		DeleteMonster($ectype_id,52465)
		
		AddMonsterByFloat($BOSS,1,$ectype_id,167,240,1,0,0)		
		
		
	}