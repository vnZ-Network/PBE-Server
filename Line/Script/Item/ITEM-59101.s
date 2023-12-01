	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/8/20
	//		Author：司文博
	//		TaskName：ITEM-59101.s
	//		TaskID：财富钱袋
	//****************************************
	
	function OnUseItem(){
	
		$lv = GetPlayerInfo ( -1 , "level" )
		$fieldlevel = GetFieldLevel(-1)
		
		$lv = $lv + $fieldlevel
		$lv = $lv * $lv
		$a = $lv * 15
		$b = $a / 10
		$money = $b + 1000
		//获得的金钱 ＝ （等级+天域等级）^2 * 15 / 10 + 1000
		$info = SubPlayerInfo ( -1 , "item" , 59101 , 1 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1 , "money" , $money )
		
	}

