	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2011/7/22
	//		Author：魏东园
	//		TaskName：ITEM-59319.s
	//		TaskID：遗迹宝藏
	//****************************************
	
	function OnUseItem(){
		
		$level = GetPlayerInfo( -1, "level" )
		
		//增加天魂值
		//标准天魂值 = 天域等级^2+0.6*天域等级+1000
		//最大天魂值 = 标准天魂值 * 100
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
		
		//等级大于等于111级，120倍标准经验
		
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
		
		//等级大于100级，小于115，30倍标准经验
					
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
					
		//等级小于111，照旧60倍标准经验
		
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

