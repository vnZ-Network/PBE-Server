	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/03/05
	//		Author�������
	//		TaskName��HD-SNHD-quest.s
	//		TaskID�������ַ���
	//
	//****************************************
	
	
	function OnTaskDone(){

		$level = GetPlayerInfo( -1, "level" )
		$Task0 = GetPlayerVar( -1, 3217 )
		//���齱����ʽΪ���ܻ����飽������ȼ�^2+100��*��1+��ǰ����*5��/ 10
		$a = $level * $level
		$b = $a + 100
		$c = $Task0 * 5
		$d = $c + 1
		$e = $b * $d

		//���㽱���ľ���
		$add_exp = $e / 10
		//���轱��
		AddPlayerInfo( -1, "exp", $add_exp )
		
		if $Task0 == 5
			AddPlayerInfo( -1, "item", 64263, 1 )
			return
		endif
				
		//�����������
		SetPlayerVar( -1, 15, 0)
		//��������
		$Task0 = $Task0 + 1
		SetPlayerVar( -1 , 3217 , $Task0 )
	}