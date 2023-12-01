	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2010/02/24
	//		Author：王家麒
	//		TaskName：Zhenshizhijing-Shenpanzhishi-Monster-51551.s
	//		TaskID：审判之石采集怪
	//
	//****************************************
	
	
	function OnDead(){
	
		$itemNum = GetPlayerInfo( -1, "item", 12787 )
		$hasBuff = IsExistStatus( -1 , XXXXXXX )
		
		if $hasBuff == 0
			$itemNum <= 10
				AddPlayerInfo( -1, "item", 12787, 1 )
			endif
		endif
		
	
	}