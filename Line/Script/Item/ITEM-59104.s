	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/8/20
	//		Author：司文博
	//		TaskName：ITEM-59104.s
	//		TaskID：财富钱袋
	//****************************************
	
	function OnUseItem(){
	
		$lv = GetPlayerInfo ( -1 , "level" )
		$fieldlevel = GetFieldLevel(-1)
		
		$lv = $lv + $fieldlevel
		$lv = $lv * $lv
		$a = $lv * 3
		$money = $a + 2000
		//获得的金钱 ＝ （等级+天域等级）^2 * 3 + 2000
		$info = SubPlayerInfo ( -1 , "item" , 59104 , 1 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1 , "money" , $money )
		
	}

