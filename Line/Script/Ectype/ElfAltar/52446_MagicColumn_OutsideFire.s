	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/8
	//		Author�����쳽����ϸ������������
	//		TaskName����Ը�� �ⲿ����
	//		TaskID��52446_MagicColumn_OutsideFire.s
	//
	//****************************************
	
	function OnDead(){

		//��ȡ���� ����id 541

		$ectype_id = GetEctypeID(-1, 541)
		
		//�ڲ�������Ҫ�ж��ⲿ��û����������ⲿ���ˣ�������
		
		SetEctypeVar($ectype_id,73,1)

		
		
	}