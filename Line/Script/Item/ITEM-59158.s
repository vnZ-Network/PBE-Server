	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/12/3
	//		Author��κ��԰
	//		TaskName��ITEM-59158.s
	//		TaskID����Ԩ����
	//****************************************
	
	function OnUseItem(){
	
		$lv = GetPlayerInfo ( -1 , "level" )
		$fieldlevel = GetFieldLevel(-1)
		
		$lv = $lv + $fieldlevel
		$lv = $lv * $lv
		$a = $lv * 3
		$money = $a + 2000
		//��õĽ�Ǯ �� ���ȼ�+����ȼ���^2 * 3 + 2000
		
		$info = SubPlayerInfo ( -1 , "item" , 59158 , 1 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1 , "money" , $money )
		
	}

