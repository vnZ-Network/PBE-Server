	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/8/1
	//		Author:???
	//		TaskName:Monster-53114.s
	//		TaskID: 3.70??
	//
	//****************************************
	
	function OnDead(){
		
		$istask = IsTaskAccept(-1,364)
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		$map = GetPlayerInfo(-1,"mapid")
		if $istask == 0
			PlayEffect(-1 ,"skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" , 1)
			AddMonsterByFloat(53116,1,$map,$x,$y,0,-1)
			BC("screen","player",-1,"The Rhino Beetle Queen has been alerted!")
		endif
		
	}