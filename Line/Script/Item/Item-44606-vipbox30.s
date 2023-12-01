	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/3/6
	//		Author:???
	//		TaskName:
	//		TaskID:44504 ????
	//
	//****************************************

	function OnUseItem(){
		
		$playerid = GetPlayerID
		
		$resday = DiamondVIPDay($playerid)
		if $resday > 60
			return
			BC("chat","player",-1,"You can use the Platinum Noble Card a few days later.")
		endif
		
		$yday = GetSystemTime("yday")
		$year = GetSystemTime("year")
		//??572???????+7,????????,????????
		$playerday = GetPlayerVar(-1,4081)
		$playeryear = GetPlayerVar(-1,3326)
		$sysyday = $yday
		$sysyear = $year
		$playeryear += 2000
		if $sysyear > $playeryear
			$yearsub = $sysyear - $playeryear
			$yearsub *= 365
			$sysyday += $yearsub
		endif
		$playerday += 30
		if $sysyday < $playerday
			//???????,??????30?,????
			SetPlayerVar(-1,4081,$playerday)
		else
			//?????????+23(30????)
			$playerday += 23
			SetPlayerVar(-1,4081,$playerday)
			$year -= 2000
			SetPlayerVar(-1,3326,$year)
		endif
		
	}
