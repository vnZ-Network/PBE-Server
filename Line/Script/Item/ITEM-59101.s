	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/8/20
	//		Author��˾�Ĳ�
	//		TaskName��ITEM-59101.s
	//		TaskID���Ƹ�Ǯ��
	//****************************************
	
	function OnUseItem(){
	
		$lv = GetPlayerInfo ( -1 , "level" )
		$fieldlevel = GetFieldLevel(-1)
		
		$lv = $lv + $fieldlevel
		$lv = $lv * $lv
		$a = $lv * 15
		$b = $a / 10
		$money = $b + 1000
		//��õĽ�Ǯ �� ���ȼ�+����ȼ���^2 * 15 / 10 + 1000
		$info = SubPlayerInfo ( -1 , "item" , 59101 , 1 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1 , "money" , $money )
		
	}

