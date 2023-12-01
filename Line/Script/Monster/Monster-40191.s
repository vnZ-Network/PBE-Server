 	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/5/20
	//		Author£ºË¾ÎÄ²©
	//		TaskName£ºMonster-40191.s
	//		TaskID£º¸¯Ê´²Ý
	//****************************************
	
	function OnDead(){
		$task = IsTaskAccept(-1,1521)
		if $task != 0
			return
		endif
		$a = GetPlayerInfo( -1 , "item",12566)
		if $a < 5
			AddPlayerInfo( -1 , "item",12566,1)
		endif
	}