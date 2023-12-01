 	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2009/5/19
	//		Author：司文博
	//		TaskName：Monster-41052.s
	//		TaskID：王子诅咒
	//****************************************
	
	function OnDead(){
	
		$mapid = GetPlayerInfo ( -1 , "mapid" )
		$x = GetPlayerInfo ( -1 , "mapx" )
		$y = GetPlayerInfo ( -1 , "mapy" )
		
		AddMonster( 30215,1,$mapid,$x,$y,1)
		
	}