	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/7
	//		Author�����쳽����ϸ������������
	//		TaskName���������ٻ�BOSS1Lv2��
	//		TaskID��Summon_B0SS1_Lv2_52427.s
	//
	//****************************************
	
	function OnDead(){

		//��ȡ���� ����id 541

		$ectype_id = GetEctypeID(-1, 541)
		$BOSS = 52382

		DeleteMonster($ectype_id,52381)
		DeleteMonster($ectype_id,52428)
		DeleteMonster($ectype_id,52463)
		
		AddMonsterByFloat($BOSS,1,$ectype_id,216,80,1,0,90)		
		
		
	}