	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2012/8
	//		Author�����쳽����ϸ������������
	//		TaskName����Ը�� ��ԫ
	//		TaskID��Mon21_BrokenWall_52439.s
	//
	//****************************************
	
	function OnDead(){

		//��ȡ���� ����id 541

		$ectype_id = GetEctypeID(-1, 541)
		
		//��3��������3��
		
		$count = GetEctypeVar($ectype_id,76)
		$count = $count + 1
		SetEctypeVar($ectype_id,76,$count)
		
		if $count == 3
			$monsterID_InsideF = 52443
			$monsterID_OutsideF = 52446
			$monsterID_InsideI = 52444
			$monsterID_OutsideI = 52447
			$monsterID_InsideS = 52445
			$monsterID_OutsideS = 52448

			AddMonsterByFloat($monsterID_InsideF,1,$ectype_id,191,127,1,0 ,135 )	
			AddMonsterByFloat($monsterID_InsideI,1,$ectype_id,192,141,1,0 ,45 )
			AddMonsterByFloat($monsterID_InsideS,1,$ectype_id,206,141,1,0 ,135 )					
			
			AddMonsterByFloat($monsterID_OutsideF,1,$ectype_id,206,104,1,0,0)
			AddMonsterByFloat($monsterID_OutsideI,1,$ectype_id,216,104,1,0,0)
			AddMonsterByFloat($monsterID_OutsideS,1,$ectype_id,226,104,1,0,0)
			//��ʼѪ���ٷֱ�
			SetEctypeVar($ectype_id,77,100)
			SetEctypeVar($ectype_id,78,100)
			SetEctypeVar($ectype_id,79,100)
		endif 

		
		
	}