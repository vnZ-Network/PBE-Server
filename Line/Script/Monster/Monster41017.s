    //****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2009/03/17
	//		Author£ºÁõÏþè´
	//		TaskName£ºMonster41017.s
	//		TaskID£º´ó¿éË®¾§
	//****************************************
	
	function OnDead(){
		$Task1 = IsTaskAccept( -1, 809 )
		if $Task1 != 0
			return
		endif
		
		AddStatus( -1, 10509, 1 )
		return
		
	}