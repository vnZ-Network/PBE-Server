	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/11/20
	//		Author�������
	//		TaskName��ITEM-NewMan-12720.s
	//		TaskID����Ӣʯ
	//
	//****************************************
	
	
	function OnUseItem(){
		//ɾ������
		$del = SubPlayerInfo ( -1, "item", 12720, 1 )
		if  $del != 0
			return
		endif
		
		$level = GetPlayerInfo( -1, "level" )
		if $level < 45
			$exp = $level * $level
			$exp = $exp * 10
		else
			$exp = $level * $level
			$exp = $exp * 10
			$exp1 = $level * 4
			$exp1 = $exp1 - 76
			$exp = $exp * $exp1
			$exp = $exp / 100
		endif
		
		AddPlayerInfo( -1, "exp", $exp )
						
	}