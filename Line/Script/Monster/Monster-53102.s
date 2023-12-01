	//****************************************
	//
	//		Copyright£∫PERFECT WORLD
	//		Modified£∫2012/7/30
	//		Author£∫÷ÏΩ®≥º
	//		TaskName£∫Monster-53102.s
	//		TaskID£∫ ÷Î∫Û
	//
	//****************************************
	
	function OnDead(){
		
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		$map = GetPlayerInfo(-1,"mapid")
		$x1 = $x + 1
		$x2 = $x - 1
		$y1 = $y + 1
		$y2 = $y - 1
		
		AddMonsterByFloat(53103,1,$map,$x1,$y,0,-1)
		AddMonsterByFloat(53103,1,$map,$x2,$y,0,-1)
		AddMonsterByFloat(53103,1,$map,$x,$y1,0,-1)
		AddMonsterByFloat(53103,1,$map,$x,$y2,0,-1)
		AddMonsterByFloat(53103,1,$map,$x1,$y1,0,-1)
		AddMonsterByFloat(53103,1,$map,$x2,$y1,0,-1)
		AddMonsterByFloat(53103,1,$map,$x1,$y2,0,-1)
		AddMonsterByFloat(53103,1,$map,$x2,$y2,0,-1)		
		
	}