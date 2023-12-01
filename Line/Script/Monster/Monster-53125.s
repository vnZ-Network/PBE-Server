	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2012/8/1
	//		Author£ºÖì½¨³¼
	//		TaskName£ºMonster-53125.s
	//		TaskID£º 3.70Ö÷Ïß
	//
	//****************************************
	
	function OnDead(){
		
		$istask = IsTaskAccept(-1,368)
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		$map = GetPlayerInfo(-1,"mapid")
		$ectypeid = GetEctypeID(-1,544)
		
		if $istask == 0
			SetEctypeVar($ectypeid,1,2)
			AddMonsterByFloat(53123,1,$map,$x,$y,0,-1)
		endif
		
		
	}