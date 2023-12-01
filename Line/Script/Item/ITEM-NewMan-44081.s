	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2011/09/08
	//		Author：魏东园
	//		TaskName：ITEM-NewMan-44081.s
	//		TaskID：集英魂
	//
	//****************************************
	
	
	function OnUseItem(){
		//删除道具
		$del = SubPlayerInfo ( -1, "item", 44081, 1 )
		if  $del != 0
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 60
			$exp = $level - 45
			$exp = $exp * 150000
			$exp = $exp + 1724953
		endif
		
		if $level >= 60
			if $level < 76
				$exp = $level - 60
				$exp = $exp * 150000
				$exp = $exp + 4051900
			endif
		endif
		
		if $level >= 76
			if $level < 100
				$exp = $level - 76
				$exp = $exp * 200000
				$exp = $exp + 6536401
			endif
		endif
		
		if $level >= 100
				$exp = $level - 100
				$exp = $exp * 350000
				$exp = $exp + 15424679
		endif
					
		AddPlayerInfo( -1, "exp", $exp )
						
	}