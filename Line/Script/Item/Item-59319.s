	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2011/7/22
	//		Author��κ��԰
	//		TaskName��ITEM-59319.s
	//		TaskID���ż�����
	//****************************************
	
	function OnUseItem(){
		
		$level = GetPlayerInfo( -1, "level" )
		
		//�������ֵ
		//��׼���ֵ = ����ȼ�^2+0.6*����ȼ�+1000
		//������ֵ = ��׼���ֵ * 100
		$fieldlevel = GetFieldLevel(-1)
		$godexp = $fieldlevel * $fieldlevel
		$b = $fieldlevel * 6
		$b = $b / 10
		$godexp = $godexp + $b
		$godexp = $godexp + 1000
		$godexp = $godexp * 100
		if  $fieldlevel > 0
			AddFieldExp( -1 , $godexp )	
		endif
		
		//�ȼ����ڵ���111����120����׼����
		
		if $level >= 111
			
			$lv = GetPlayerInfo ( -1 , "level" )
			$lv2 = $lv * $lv
			$a = $lv2 * 120
			$b = $lv * 4
			$c = $b - 76
			$d = $a * $c
			$exp = $d / 100
			
			$info = SubPlayerInfo ( -1 , "item" , 59319 , 1 )
			if  $info != 0
				return
			endif
			AddPlayerInfo( -1 , "exp" , $exp )
			return
			
		endif	
		
		//�ȼ�����100����С��115��30����׼����
					
//		if $level >= 100
//			if $level < 115
//			
//			$lv = GetPlayerInfo ( -1 , "level" )
//			$lv2 = $lv * $lv
//			$a = $lv2 * 30
//			$b = $lv * 4
//			$c = $b - 76
//			$d = $a * $c
//			$exp = $d / 100
//			
//			$info = SubPlayerInfo ( -1 , "item" , 59319 , 1 )
//			if  $info != 0
//				return
//			endif
//			AddPlayerInfo( -1 , "exp" , $exp )
//			return
//			
//			endif
//		endif			
					
		//�ȼ�С��111���վ�60����׼����
		
		if $level < 111
									
			$lv = GetPlayerInfo ( -1 , "level" )
			$lv2 = $lv * $lv
			$a = $lv2 * 60
			$b = $lv * 4
			$c = $b - 76
			$d = $a * $c
			$exp = $d / 100
					
			$info = SubPlayerInfo ( -1 , "item" , 59319 , 1 )
			if  $info != 0
				return
			endif
			AddPlayerInfo( -1 , "exp" , $exp )
			return
			
		endif
		
		
		
	}

