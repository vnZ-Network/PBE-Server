	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/8/1
	//		Author:???
	//		TaskName:Monster-53214.s
	//		TaskID: 3.70??
	//
	//****************************************
	
	function OnDead(){
		
		$istask = IsTaskAccept(-1,364)
		$n = GetPlayerVar(-1,3344)
		if $istask == 0
			$n = $n + 1
			if $n == 10
				BC("screen","player",-1,"You've attracted the attention of the Rhino Beetle King!")
			endif
			
			if $n == 20
				$x = GetPlayerInfo(-1,"mapposx")
				$y = GetPlayerInfo(-1,"mapposy")
				$map = GetPlayerInfo(-1,"mapid")
				BC("screen","player",-1,"The Rhino Beetle King appeared!")
				AddMonsterByFloat(53115,1,$map,$x,$y,0,-1)
			endif
			
			SetPlayerVar(-1,3344,$n)
		endif	
		
	}