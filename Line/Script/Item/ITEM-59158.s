	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/12/3
	//		Author：魏东园
	//		TaskName：ITEM-59158.s
	//		TaskID：深渊宝藏
	//****************************************
	
	function OnUseItem(){
	
		$lv = GetPlayerInfo ( -1 , "level" )
		$fieldlevel = GetFieldLevel(-1)
		
		$lv = $lv + $fieldlevel
		$lv = $lv * $lv
		$a = $lv * 3
		$money = $a + 2000
		//获得的金钱 ＝ （等级+天域等级）^2 * 3 + 2000
		
		$info = SubPlayerInfo ( -1 , "item" , 59158 , 1 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1 , "money" , $money )
		
	}

