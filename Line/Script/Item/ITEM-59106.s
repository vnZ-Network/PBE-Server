	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/8/20
	//		Author��˾�Ĳ�
	//		TaskName��ITEM-59106.s
	//		TaskID������
	//****************************************
	
	function OnUseItem(){
	
		$lv = GetPlayerInfo ( -1 , "level" )
		$lv2 = $lv * $lv
		$a = $lv2 * 20
		$b = $lv * 4
		$c = $b - 76
		$d = $a * $c
		$exp = $d / 100
		
		$info = SubPlayerInfo ( -1 , "item" , 59106 , 1 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1 , "exp" , $exp )
		
		//�������ֵ
		//��׼���ֵ = ����ȼ�^2+0.6*����ȼ�+1000
		//������ֵ = ��׼���ֵ * 3
		$fieldlevel = GetFieldLevel(-1)
		$godexp = $fieldlevel * $fieldlevel
		$b = $fieldlevel * 6
		$b = $b / 10
		$godexp = $godexp + $b
		$godexp = $godexp + 1000
		$godexp = $godexp * 3
		if $fieldlevel > 0
			AddFieldExp( -1 , $godexp )
		endif
	}

