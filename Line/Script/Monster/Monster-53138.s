	//****************************************
	//
	//		Copyright£ºPERFECT WORLD
	//		Modified£º2012/7/25
	//		Author£ºÖì½¨³¼
	//		TaskName£ºMonster-53138.s
	//		TaskID£º 3.70Ö÷Ïß
	//
	//****************************************
	
	function OnDead(){
		
		$ectype_ID = GetEctypeID(-1,544)
		$shu = GetEctypeVar($ectype_ID,13)
		if $shu > 0
			$shu = $shu - 1
			SetEctypeVar($ectype_ID,13,$shu)
		endif
		
		
	}